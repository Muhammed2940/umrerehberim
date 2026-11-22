# Umre Rehberim kimlik servisi: Plesk'e yüklenecek zip paketini hazırlar.
# Kullanım (bu klasörde):  .\paketle.ps1
# Çıktı: dist\umre-api.zip
# GİZLİ dosyalar pakete KONMAZ: config.php, service-account*.json, anahtarlar, cache, ratelimit
# (ve testler, eski zip'ler). Pakete girecek HER dosya ayrıca özel anahtar içeriğine karşı taranır.
$ErrorActionPreference = 'Stop'
Set-Location $PSScriptRoot
Add-Type -AssemblyName System.IO.Compression
Add-Type -AssemblyName System.IO.Compression.FileSystem

$dist = Join-Path $PSScriptRoot 'dist'
New-Item -ItemType Directory -Force -Path $dist | Out-Null
$zipPath = Join-Path $dist 'umre-api.zip'
if (Test-Path $zipPath) { Remove-Item $zipPath -Force }

# Pakete girecek klasörler (beyaz liste: yanlışlıkla gizli dosya girmesin).
$roots = @('public', 'src', 'bin', 'private')
$base = $PSScriptRoot.TrimEnd('\')

$files = foreach ($r in $roots) {
    Get-ChildItem -Path (Join-Path $PSScriptRoot $r) -Recurse -File -Force
}

$files = @($files | Where-Object {
    $rel = $_.FullName.Substring($base.Length + 1).Replace('\', '/')
    $name = $_.Name
    if ($rel -like 'private/*') {
        # yalnız .htaccess ve config.example.php girer
        return ($name -eq '.htaccess' -or $name -eq 'config.example.php')
    }
    return $true
})

# Güvenlik ağı 1: yasak ad HERHANGİ bir klasörde varsa durdur.
$forbiddenNames = @('config.php', '.env', 'key.properties', 'private-path.php')
$forbiddenPatterns = @('service-account*', '*.jks', '*.keystore', '*.pem', '*.p12', '*.key', '*.zip')
$bad = $files | Where-Object {
    $n = $_.Name
    ($forbiddenNames -contains $n) -or (@($forbiddenPatterns | Where-Object { $n -like $_ }).Count -gt 0) -or
        ($_.FullName.Replace('\', '/') -match '/(cache|ratelimit)/')
}
if ($bad) { throw "Gizli dosya pakete girmek üzere: $(($bad | ForEach-Object FullName) -join ', ')" }

# Güvenlik ağı 2: içerik taraması (özel anahtar, servis hesabı JSON'u).
$leaks = foreach ($f in $files) {
    $text = [System.IO.File]::ReadAllText($f.FullName)
    if ($text -match 'BEGIN (RSA |EC |ENCRYPTED )?PRIVATE KEY' -or $text -match '"private_key"\s*:' -or $text -match '"private_key_id"') {
        $f.FullName
    }
}
if ($leaks) { throw "Özel anahtar içeriği bulundu, paket hazırlanmadı: $($leaks -join ', ')" }

# Linux'ta açılsın diye girdi adları '/' ile yazılır (Compress-Archive '\' kullanabiliyor).
$zip = [System.IO.Compression.ZipFile]::Open($zipPath, [System.IO.Compression.ZipArchiveMode]::Create)
try {
    foreach ($f in $files) {
        $entry = $f.FullName.Substring($base.Length + 1).Replace('\', '/')
        [void][System.IO.Compression.ZipFileExtensions]::CreateEntryFromFile($zip, $f.FullName, $entry, [System.IO.Compression.CompressionLevel]::Optimal)
    }
} finally {
    $zip.Dispose()
}

Write-Host ""
Write-Host "Paket hazır: $zipPath" -ForegroundColor Green
Write-Host "İçindekiler:"
$z = [System.IO.Compression.ZipFile]::OpenRead($zipPath)
try { $z.Entries | ForEach-Object { Write-Host "  $($_.FullName)" } } finally { $z.Dispose() }
Write-Host ""
Write-Host "Sonraki adım: PLESK_KURULUM.md"
