# Umre Rehberim web sitesini derler, gizli dosya taraması yapar ve dist/www.zip üretir.
# Kullanım (depo kökünden):  powershell -ExecutionPolicy Bypass -File tool/paketle.ps1
#   -DerlemeYok : npm run build adımını atla (site/dist hazırsa)
# Çıktı: dist/www.zip  → Plesk Dosya Yöneticisi'nde www.ALAN klasörüne yükle, "Aç" (extract).
param([switch]$DerlemeYok)

$ErrorActionPreference = 'Stop'
$kok = Split-Path -Parent $PSScriptRoot
$site = Join-Path $kok 'site'
$kaynak = Join-Path $site 'dist'
$cikti = Join-Path $kok 'dist'
$zip = Join-Path $cikti 'www.zip'

# 1) Derle
if (-not $DerlemeYok) {
    Write-Host '==> npm run build' -ForegroundColor Cyan
    Push-Location $site
    try {
        npm run build
        if ($LASTEXITCODE -ne 0) { throw "Derleme başarısız (çıkış kodu $LASTEXITCODE)" }
    } finally { Pop-Location }
}
if (-not (Test-Path (Join-Path $kaynak 'index.html'))) { throw "site/dist/index.html yok; önce derleyin." }
if (-not (Test-Path (Join-Path $kaynak '.htaccess'))) { throw "site/dist/.htaccess yok; astro.config.mjs entegrasyonunu kontrol edin." }

# 2) Gizli dosya taraması
Write-Host '==> Gizli dosya taraması' -ForegroundColor Cyan
$dosyalar = Get-ChildItem -LiteralPath $kaynak -Recurse -File -Force
$yasakAd = @('*.env', '.env*', 'config.php', 'service-account*.json', '*firebase-adminsdk*.json',
             '*.jks', '*.keystore', 'key.properties', '*.pem', '*.key', '*.p12', '*.pfx', 'id_rsa*', '*.zip', '*.sql')
$yasakIcerik = @(
    'BEGIN (RSA |EC |OPENSSH )?PRIVATE KEY',
    '"private_key"\s*:',
    '"private_key_id"\s*:',
    'merchant_(key|salt)\s*[=:]',
    'smtp[_-]?(pass|password)\s*[=:]',
    'client_secret\s*[=:]'
)
$sorunlar = @()
foreach ($d in $dosyalar) {
    $goreli = $d.FullName.Substring($kaynak.Length + 1)
    if ($goreli -match '(^|\\)\.git(\\|$)') { $sorunlar += "Git klasörü: $goreli"; continue }
    foreach ($desen in $yasakAd) {
        if ($d.Name -like $desen) { $sorunlar += "Yasak dosya adı: $goreli"; break }
    }
    if ($d.Extension -in @('.html', '.css', '.js', '.json', '.txt', '.xml', '.map', '.php', '.md', '') -or $d.Name -eq '.htaccess') {
        $metin = [System.IO.File]::ReadAllText($d.FullName)
        foreach ($desen in $yasakIcerik) {
            if ($metin -match $desen) { $sorunlar += "Şüpheli içerik ($desen): $goreli" }
        }
    }
}
if ($sorunlar.Count -gt 0) {
    $sorunlar | ForEach-Object { Write-Host "  X $_" -ForegroundColor Red }
    throw "Gizli dosya taraması başarısız: $($sorunlar.Count) sorun. Paket ÜRETİLMEDİ."
}
Write-Host "  OK $($dosyalar.Count) dosya temiz" -ForegroundColor Green

# ALAN yer tutucusu uyarısı (engel değil)
$alanVar = Select-String -LiteralPath (Join-Path $kaynak '.htaccess') -Pattern 'www\.ALAN\b' -Quiet
if ($alanVar) { Write-Host "  ! Alan adı hâlâ 'ALAN' yer tutucusu (site/src/config.ts)" -ForegroundColor Yellow }

# 3) Zip (ileri eğik çizgili yollar; Linux/Plesk'te doğru açılır, .htaccess dahil)
Write-Host '==> dist/www.zip' -ForegroundColor Cyan
New-Item -ItemType Directory -Force -Path $cikti | Out-Null
if (Test-Path $zip) { Remove-Item -LiteralPath $zip -Force }
Add-Type -AssemblyName System.IO.Compression
Add-Type -AssemblyName System.IO.Compression.FileSystem
$arsiv = [System.IO.Compression.ZipFile]::Open($zip, [System.IO.Compression.ZipArchiveMode]::Create)
try {
    foreach ($d in $dosyalar) {
        $ad = $d.FullName.Substring($kaynak.Length + 1).Replace('\', '/')
        [System.IO.Compression.ZipFileExtensions]::CreateEntryFromFile($arsiv, $d.FullName, $ad,
            [System.IO.Compression.CompressionLevel]::Optimal) | Out-Null
    }
} finally { $arsiv.Dispose() }

$boyut = [math]::Round((Get-Item $zip).Length / 1KB)
Write-Host "  OK $zip ($boyut KB, $($dosyalar.Count) dosya)" -ForegroundColor Green
