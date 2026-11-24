# Rehber mekân fotoğrafları (kendi fotoğraflarımız)

Fotoğrafı bu klasöre, aşağıdaki **dosya adıyla** koyun (uzantı .jpg, .jpeg, .png veya .webp olabilir).
Sonra şu komut çalıştırılır (Claude'a "fotoğrafları çek" demeniz yeterli):

    cd site && node ../tool/mekan_foto.mjs

Araç fotoğrafı 16:9 kırpar, küçültür (960×540 webp) ve mekân sayfasına bağlar. Buradaki fotoğraf,
açık kaynaktan alınmış fotoğrafın önüne geçer. Kendi fotoğraflarımızın altında kaynak/lisans satırı gösterilmez,
bu yüzden **yalnız kullanım hakkımız olan** fotoğrafları koyun.

İpucu: Yatay (geniş) çekilmiş, en az 1200 px genişliğinde, yazı/logo ve tanınır yüz içermeyen fotoğraflar en iyi sonucu verir.

## Fotoğrafı olmayan mekânlar

| Dosya adı | Mekân |
|---|---|
| `cirane.jpg` | Ci'râne Mescidi |
| `mekke-muzesi.jpg` | Harameyn Mimari Sergisi (Müzesi) |
| `mescid-i-biat.jpg` | Mescid-i Biat |
| `mescid-i-cuma.jpg` | Mescid-i Cuma |
| `hudeybiye.jpg` | Hudeybiye (Şümeysî) |
| `cuhfe.jpg` | Cuhfe Mikatı |
| `kuba.jpg` | Kuba Mescidi |
| `taif.jpg` | Taif: İbn Abbas Camii ve Addas Mescidi |
| `ebu-kubeys.jpg` | Ebû Kubeys Dağı |

## Fotoğrafı olup değiştirmek isterseniz

Aynı adla koyun; açık kaynaktaki fotoğrafın yerine geçer:
`hira`, `sevr`, `cennetul-mualla`, `arafat`, `muzdelife`, `mina`, `mescid-i-nemire`, `mescid-i-hayf`,
`mescid-i-cin`, `tenim`, `mevlid`, `ayn-i-zubeyde`, `kibleteyn`, `uhud`, `baki`, `yedi-mescitler`, `gamame`,
`kuran-basim-kompleksi`, `hicaz-demiryolu`, `bir-i-osman`, `zulhuleyfe`, `mescid-i-icabe`, `bedir`, `hayber`,
`cidde-balad`, `hicr-ula`, `tebuk`, `yenbu`, `kisve-fabrikasi`.

(Mescid-i Haram ve Mescid-i Nebevî onaylı referans görselinden gelir; değiştirmek için söyleyin.)
