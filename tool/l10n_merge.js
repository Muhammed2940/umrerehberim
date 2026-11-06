#!/usr/bin/env node
// Çeviri parçalarını birleştirir: lib/l10n/parts/*.json → lib/l10n/app_{tr,en,ar}.arb
//
// Parça biçimi (her bölüm kendi dosyasını yazar, çakışma olmaz):
// {
//   "homeGreeting": { "tr": "Selamün Aleyküm", "en": "Peace be upon you", "ar": "السلام عليكم" },
//   "homeDaysLeft": {
//     "tr": "{count} gün kaldı", "en": "{count} days left", "ar": "متبقي {count} يوم",
//     "placeholders": { "count": { "type": "int" } },
//     "description": "Sefer bitimine kalan gün"
//   }
// }
// Kurallar: anahtar camelCase geçerli bir Dart adı olmalı ve bölüm önekiyle başlamalı
// (home…, auth…, admin… gibi). Aynı anahtar iki parçada olursa betik hata verir.
// Eksik dil varsa Türkçe kullanılır ve uyarı basılır.
//
// Kullanım (proje kökünde):  node tool/l10n_merge.js && flutter gen-l10n
const fs = require('fs');
const path = require('path');

const root = path.resolve(__dirname, '..');
const partsDir = path.join(root, 'lib', 'l10n', 'parts');
const outDir = path.join(root, 'lib', 'l10n');
const LOCALES = ['tr', 'en', 'ar'];

const files = fs.readdirSync(partsDir).filter((f) => f.endsWith('.json')).sort();
const merged = {};
const owner = {};
let warnings = 0;
let errors = 0;

for (const f of files) {
  let data;
  try {
    data = JSON.parse(fs.readFileSync(path.join(partsDir, f), 'utf8').replace(/^﻿/, ''));
  } catch (e) {
    console.error(`HATA ${f}: geçersiz JSON (${e.message})`);
    errors++;
    continue;
  }
  for (const [key, entry] of Object.entries(data)) {
    if (!/^[a-z][A-Za-z0-9]*$/.test(key)) {
      console.error(`HATA ${f}: "${key}" geçerli bir anahtar değil (camelCase olmalı)`);
      errors++;
      continue;
    }
    if (owner[key]) {
      console.error(`HATA: "${key}" hem ${owner[key]} hem ${f} içinde tanımlı`);
      errors++;
      continue;
    }
    if (typeof entry !== 'object' || typeof entry.tr !== 'string') {
      console.error(`HATA ${f}: "${key}" için "tr" metni yok`);
      errors++;
      continue;
    }
    owner[key] = f;
    merged[key] = entry;
  }
}

for (const loc of LOCALES) {
  const arb = { '@@locale': loc };
  for (const key of Object.keys(merged).sort()) {
    const e = merged[key];
    let text = e[loc];
    if (typeof text !== 'string' || text.trim() === '') {
      if (loc !== 'tr') {
        console.warn(`uyarı: "${key}" için ${loc} yok, Türkçe kullanıldı (${owner[key]})`);
        warnings++;
      }
      text = e.tr;
    }
    arb[key] = text;
    if (loc === 'tr') {
      const meta = {};
      if (e.description) meta.description = e.description;
      if (e.placeholders) meta.placeholders = e.placeholders;
      if (Object.keys(meta).length) arb[`@${key}`] = meta;
    }
  }
  fs.writeFileSync(path.join(outDir, `app_${loc}.arb`), JSON.stringify(arb, null, 2) + '\n', 'utf8');
}

console.log(`${files.length} parça, ${Object.keys(merged).length} anahtar; ${warnings} uyarı, ${errors} hata.`);
process.exit(errors ? 1 : 0);
