<?php
declare(strict_types=1);

namespace UmreApi;

/**
 * Hesap/gizli bilgi yönetim yetkisi (tool/AUTH_SEMA.md "Yetki"). firestore.rules'taki
 * users create/update yetkisiyle AYNI tablo:
 *   super_admin (kök dahil) -> herkes
 *   yonetici                -> misafir ve acente_admin (acentesi dolu)
 *   acente_admin            -> yalnız kendi acentesindeki misafir
 *   destek, muhasebe, diğer -> hiçbiri
 */
final class Permissions
{
    /** accounts ile oluşturulabilen türler (esnaf hariç: esnaf girişi değişmiyor). */
    public const CREATABLE_TYPES = ['super_admin', 'yonetici', 'acente_admin', 'destek', 'muhasebe', 'misafir'];

    /**
     * @param string $role         çağıranın rolü
     * @param string $callerAgency çağıranın acentesi ('' olabilir)
     * @param string $targetType   hedefin user_type değeri
     * @param string $targetAgency hedefin acentesi
     */
    public static function canManage(string $role, string $callerAgency, string $targetType, string $targetAgency): bool
    {
        switch ($role) {
            case 'super_admin':
                return true;
            case 'yonetici':
                return in_array($targetType, ['misafir', 'acente_admin'], true) && $targetAgency !== '';
            case 'acente_admin':
                return $targetType === 'misafir' && $callerAgency !== '' && $targetAgency === $callerAgency;
            default:
                return false; // destek, muhasebe, misafir, esnaf, bilinmeyen
        }
    }
}
