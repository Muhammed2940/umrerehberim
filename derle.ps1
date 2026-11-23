# Umre Rehberim – release APK derleme.
# Telsiz (LiveKit) ayarlarını telsiz.env.json'dan okur. Bu dosya olmadan derlenen
# APK'da Telsiz ekranı "Telsiz yapılandırılmadı" der.
# Kullanım (proje klasöründe):  .\derle.ps1
# Yeni giriş servisi (Kullanıcı ID + PIN): telsiz.env.json içine "AUTH_API": "https://alanadi/umre-api"
# satırı eklenirse aynı --dart-define-from-file ile derlemeye girer. Yoksa eski TC girişi kullanılır.
Set-Location $PSScriptRoot
# pubspec.yaml +BUILD ile kAppBuildNumber eşit olmalı (zorunlu güncelleme kapısı buna bakar).
$pubBuild = (Select-String -Path "pubspec.yaml" -Pattern '^version:\s*\S+\+(\d+)').Matches.Groups[1].Value
$constBuild = (Select-String -Path "lib/features/control_center/settings/platform_settings_service.dart" -Pattern 'kAppBuildNumber\s*=\s*(\d+)').Matches.Groups[1].Value
if ($pubBuild -ne $constBuild) {
    Write-Error "pubspec.yaml build ($pubBuild) ile kAppBuildNumber ($constBuild) farkli. platform_settings_service.dart dosyasini duzeltin."
    exit 1
}
if (Test-Path "telsiz.env.json") {
    flutter build apk --release --dart-define-from-file=telsiz.env.json
} else {
    Write-Warning "telsiz.env.json bulunamadı: Telsiz yapılandırılmamış olarak derleniyor."
    flutter build apk --release
}
if ($LASTEXITCODE -eq 0) {
    Write-Host ""
    Write-Host "APK: $PSScriptRoot\build\app\outputs\flutter-apk\app-release.apk" -ForegroundColor Green
}
