// Sayfaya özel metinler: her sayfa kendi dosyasında (src/i18n/sayfa/<ad>.ts) üç dili birlikte tutar.
// Ortak json'lar (tr/en/ar.json) yalnız site genelindeki metinler içindir; böylece sayfalar birbirini ezmez.
//
//   const T = sayfaMetni(dil, ACENTE);  T.baslik  → dile göre metin (eksikse TR)
import { VARSAYILAN, type Dil } from './index';

export type SayfaSozluk<K extends string = string> = { tr: Record<K, string> } & Partial<Record<Exclude<Dil, 'tr'>, Partial<Record<K, string>>>>;

export function sayfaMetni<K extends string>(dil: Dil, s: SayfaSozluk<K>): Record<K, string> {
  const temel = s[VARSAYILAN as 'tr'];
  const ust = (s as Record<string, Partial<Record<K, string>> | undefined>)[dil] ?? {};
  return new Proxy(temel, {
    get: (_, k: string) => (ust as Record<string, string | undefined>)[k] ?? (temel as Record<string, string>)[k] ?? k,
  }) as Record<K, string>;
}
