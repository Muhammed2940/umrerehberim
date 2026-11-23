# Kural testlerini (esnaf, kontrol merkezi, hatim, kimlik alanları, bireysel) yerel Firestore öykünücüsünde çalıştırır (gerçek veritabanına dokunmaz).
# Öykünücü Java 11+ ister; Android Studio'nun getirdiği JBR kullanılır.
Set-Location $PSScriptRoot
Copy-Item -Path (Join-Path $PSScriptRoot '..\..\firestore.rules') -Destination (Join-Path $PSScriptRoot 'firestore.rules') -Force
$env:JAVA_HOME = 'C:\Program Files\Android\Android Studio\jbr'
$env:Path = "$env:JAVA_HOME\bin;$env:APPDATA\npm;$env:Path"
& (Join-Path $PSScriptRoot 'node_modules\.bin\firebase.cmd') emulators:exec --only firestore --project demo-esnaf "node esnaf_rules.test.mjs && node cc_rules.test.mjs && node hatim_rules.test.mjs && node auth_rules.test.mjs && node bireysel_rules.test.mjs"
