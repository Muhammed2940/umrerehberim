<?php
declare(strict_types=1);

namespace UmreApi;

/**
 * audit_logs yazıcısı. Alan şekli uygulamadaki AuditLog.write ile aynıdır
 * (lib/features/control_center/shared/audit_log.dart, tool/SUPER_ADMIN_SEMA.md);
 * ek olarak `status` ('started' -> 'ok' | 'failed') taşır.
 *
 * İşlemden ÖNCE start() yazılır; yazılamazsa istisna yükselir ve işlem YAPILMAZ.
 * Sonuç finish() ile aynı kayda işlenir (en iyi çaba: yazılamazsa yalnız log).
 */
final class Audit
{
    public const ACTION_USER_CREATE = 'user_create';
    public const ACTION_SECRET_RESET = 'secret_reset';
    public const ACTION_AUTH_MIGRATE = 'auth_migrate';

    public function __construct(private FirestoreClient $db, private Clock $clock)
    {
    }

    /**
     * @param array{uid:string,name:string,role:string} $actor
     * @param array<string,mixed> $details gizli bilgi (PIN/şifre) ASLA konmaz
     * @return string kayıt id'si
     */
    public function start(array $actor, string $action, string $targetType, string $targetId, string $targetName, array $details = []): string
    {
        try {
            return $this->db->add('audit_logs', [
                'actor_uid' => $actor['uid'],
                'actor_name' => $actor['name'],
                'actor_role' => $actor['role'],
                'action' => $action,
                'target_type' => $targetType,
                'target_id' => $targetId,
                'target_name' => $targetName,
                'details' => $details,
                'status' => 'started',
                'created_at' => new Ts($this->clock->now()),
            ]);
        } catch (\Throwable $e) {
            error_log('audit_logs yazılamadı, işlem durduruldu (' . $action . '): ' . $e->getMessage());
            throw new UpstreamException('Denetim kaydı yazılamadı.');
        }
    }

    /** @param array<string,mixed> $fields ör. ['status' => 'ok', 'target_id' => ..., 'details' => [...]] */
    public function finish(string $id, array $fields): void
    {
        try {
            $this->db->patch('audit_logs/' . $id, $fields);
        } catch (\Throwable $e) {
            error_log('audit_logs sonucu yazılamadı (' . $id . '): ' . $e->getMessage());
        }
    }
}
