# Umre Rehberim – www.__ALAN__ (statik Astro çıktısı)
# Bu dosya derlemede src/htaccess.tpl'den üretilir; dist/.htaccess'i elle düzenlemeyin.

Options -Indexes
DirectoryIndex index.html
ErrorDocument 404 /404.html
AddDefaultCharset utf-8

<IfModule mod_rewrite.c>
  RewriteEngine On

  # 1) http → https
  RewriteCond %{HTTPS} !=on
  RewriteCond %{HTTP:X-Forwarded-Proto} !https
  RewriteRule ^ https://%{HTTP_HOST}%{REQUEST_URI} [L,R=301]

  # 2) Çıplak alan → www
  RewriteCond %{HTTP_HOST} ^__ALAN__$ [NC]
  RewriteRule ^ https://www.__ALAN__%{REQUEST_URI} [L,R=301]

  # 3) Dizin yollarına sondaki / (örn. /destek → /destek/)
  RewriteCond %{REQUEST_FILENAME} -d
  RewriteCond %{REQUEST_URI} !/$
  RewriteRule ^(.*)$ /$1/ [L,R=301]

  # 4) Gizli/dot dosyaları dışarı verme (.git, .env …); .well-known hariç
  RewriteRule (^|/)\.(?!well-known/) - [F]
</IfModule>

<IfModule mod_headers.c>
  Header always set Strict-Transport-Security "max-age=31536000; includeSubDomains"
  Header always set X-Content-Type-Options "nosniff"
  Header always set X-Frame-Options "DENY"
  Header always set Referrer-Policy "strict-origin-when-cross-origin"
  Header always set Permissions-Policy "camera=(), microphone=(), geolocation=(), payment=()"
  Header always set Cross-Origin-Opener-Policy "same-origin"
  # Faz 2: Google girişi / Turnstile eklenince script-src ve frame-src genişletilir; Faz 3'te PayTR iFrame.
  Header always set Content-Security-Policy "default-src 'self'; script-src 'self'; style-src 'self'; img-src 'self' data: https://tile.openstreetmap.org; font-src 'self'; connect-src 'self' https://api.__ALAN__ https://umrerehberim-cc99e-default-rtdb.firebaseio.com; frame-ancestors 'none'; base-uri 'self'; form-action 'self' https://api.__ALAN__; object-src 'none'; upgrade-insecure-requests"
  Header unset X-Powered-By
</IfModule>

# Aile Takibi (/t/): token URL'de (#) olsa da sayfa önbelleğe girmesin, Referer hiç gitmesin.
<IfModule mod_headers.c>
  <If "%{REQUEST_URI} =~ m#^/(en/|ar/)?t/#">
    Header always set Referrer-Policy "no-referrer"
    Header always set Cache-Control "no-store"
    Header always set X-Robots-Tag "noindex, nofollow, noarchive"
  </If>
</IfModule>

<IfModule mod_expires.c>
  ExpiresActive On
  ExpiresByType text/html "access plus 0 seconds"
  ExpiresByType text/css "access plus 1 year"
  ExpiresByType application/javascript "access plus 1 year"
  ExpiresByType font/woff2 "access plus 1 year"
  ExpiresByType image/png "access plus 1 month"
  ExpiresByType image/webp "access plus 1 month"
  ExpiresByType image/svg+xml "access plus 1 month"
</IfModule>

<IfModule mod_deflate.c>
  AddOutputFilterByType DEFLATE text/html text/css application/javascript application/json image/svg+xml text/plain
</IfModule>
