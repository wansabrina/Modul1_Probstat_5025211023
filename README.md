# Modul1_Probstat_5025211023
## Praktikum Probabilitas dan Statistika Modul 1
Nama : Wan Sabrina Mayzura <br />
Nrp : 5025211023 <br />
Kelas : Probabilitas dan Statistika A

# No 1
>Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan
seseorang yang menghadiri acara vaksinasi sebelumnya

+ Berapa peluang penyurvei bertemu ```x = 3``` orang yang tidak menghadiri acara vaksinasi sebelum keberhasilan pertama ketika ```p = 0,20``` dari populasi menghadiri acara vaksinasi? (distribusi Geometrik) <br /> <br />
Dengan metode distribusi Geometrik, dapat menggunakan fungsi yang telah disediakan pada bahasa R yaitu fungsi ``` dgeom() ```. Adapun code untuk poin A adalah sebagai berikut

  ```
  x = 3
  p = 0.20
  P <- dgeom(x, p)
  P
  ``` 
  Setelah dijalankan, didapat hasil peluang sebesar ```0.1024```  <br />


