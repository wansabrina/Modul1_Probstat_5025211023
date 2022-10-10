# Modul1_Probstat_5025211023
## Praktikum Probabilitas dan Statistika Modul 1
Nama : Wan Sabrina Mayzura <br />
Nrp : 5025211023 <br />
Kelas : Probabilitas dan Statistika A

## No 1
>**Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan
seseorang yang menghadiri acara vaksinasi sebelumnya**

* **Berapa peluang penyurvei bertemu ```x = 3``` orang yang tidak menghadiri acara vaksinasi sebelum keberhasilan pertama ketika ```p = 0.20``` dari populasi menghadiri acara vaksinasi? (distribusi Geometrik)** <br />
Dengan metode distribusi Geometrik, dapat menggunakan fungsi yang telah disediakan pada bahasa R, yaitu fungsi ``` dgeom() ``` yang berisi parameter x dan p. 
  ```R
  x = 3
  p = 0.20
  peluang <- dgeom(x, p)
  paste("Peluang =", peluang)
  ``` 
   Setelah dijalankan, didapat hasil peluang sebesar ```0.1024```  <br />
  ![image](https://user-images.githubusercontent.com/90106865/194834926-626ae297-18bc-48a5-9280-e46afa8003ff.png)
* **Mean Distribusi Geometrik dengan 10000 data random , prob = 0.20 dimana distribusi geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 )** <br />
Diketahui bahwa ```n = 10000```, ```prob = p = 0,20```, dan ```X = 3```. Dapat dicari mean dengan menggunakan fungsi ```rgeom()``` yang parameternya berisi banyaknya data random orang (n), serta peluang kehadiran orang ke acara vaksinasi(p) jika distribusi geometrik acak sama dengan 3.
  ```R
  n = 10000
  mean <- mean(rgeom(n, p) == 3)
  paste("Mean =", mean)
  ```
  Setelah dijalankan, didapat hasil ```0.1011```<br />
  ![image](https://user-images.githubusercontent.com/90106865/194834985-e8cbb3f9-2e17-4b9a-b24b-30ba6c84c515.png)
* **Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?**<br />
Ditinjau dari hasil dari poin a dan b yang berbeda, dapat disimpulkan bahwa pada poin a, jika dilakukan pengujian berulang kali dengan menggunakan distribusi geometrik akan tetap menghasilkan nilai yang sama untuk setiap pengulangannya, yaitu ```0.1024```. Hal ini dikarenakan nilai distribusi geometrik yang digunakan adalah nilai tetap dan tidak random/diacak. Sedangkan pada poin B jika dilakukan pengujian berulang kali, akan didapatkan hasil yang berubah-ubah seperti pada gambar di bawah ini<br />
```percobaan 1```<br />
![image](https://user-images.githubusercontent.com/90106865/194835046-4a8695ec-f04e-4569-ae7c-91d3b9569222.png)<br />
```percobaan 2```<br />
![image](https://user-images.githubusercontent.com/90106865/194835184-d05d53e6-0e96-42b1-9f1d-31f58ea16091.png)<br />
  Fungsi ```dgeom()``` akan mengembalikan nilai, sedangkan fungsi ```rgeom()``` akan menghasilkan vektor variabel acak (rata-rata dari semua peluang yang dapat terjadi pada suatu kejadian) yang akan mengembalikan nilai yang berbeda-beda.

* **Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama**
skip

* **Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik**<br />
Rumus yang digunakan untuk mencari rataan dari Distribusi Geometrik<br />
```rataan = 1 / p```<br />
Rumus yang digunakan untuk mencari varian dari Distribusi Geometrik<br />
```varian = (1 - p) / (p ^ 2)```<br />

  Code:<br />
  ```R
  rataan = 1 / p
  paste("Rataan =", rataan)

  varian = (1 - p) / (p ^ 2)
  paste("Varian =", varian)
  ```
  Output: <br />
  ![image](https://user-images.githubusercontent.com/90106865/194834433-574bad97-6c7c-4fff-bda0-a83e914f82c1.png)<br />
  didapatkan mean atau rataan ```5``` dan varian ```20```.
  
## No 2
>**Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan :**
  
* **Peluang terdapat 4 pasien yang sembuh**<br />
 Diketahui bahwa jumlah pasien ```n = 20``` dan peluang sembuh ```p = 0.2```. Untuk mencari peluang ```x = 4``` pasien yang sembuh, dapat menggunakan distribusi binomial dengan fungsi ```dbinom()``` dengan parameter x, n, dan p.<br />
 
  Code: <br />
  ```R
  n = 20
  p = 0.2
  x = 4

  peluang <- dbinom(x, n, p, log = FALSE)
  paste("Peluang =", peluang)
  ```
  Output: <br />
  ![image](https://user-images.githubusercontent.com/90106865/194835931-275a2f43-e601-4675-9101-05e9f293a3e2.png)<br />
  didapatkan peluang terdapat 4 pasien yang sembuh adalah ```0.2181994```
* **Gambarkan grafik histogram berdasarkan kasus tersebut** skip

* **Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Binomial**<br />
  Rumus yang digunakan untuk mencari rataan dari Distribusi Binomial<br />
  ```rataan = n * p```<br />
  Rumus yang digunakan untuk mencari varian dari Distribusi Binomial<br />
  ```varian = n * p * (1 - p)```<br />
  
  Code: <br />
  ```R
  rataan = n * p
  paste("Rataan =", rataan)

  varian = n * p * (1 - p)
  paste("Varian =", varian)
  ```
  Output: <br />
  ![image](https://user-images.githubusercontent.com/90106865/194836025-91611f7a-57c2-4527-87f9-331d3af2fb28.png)<br />
  didapatkan mean atau rataan ```4``` dan varian ```3.2```
  
## No 3
>**Diketahui data dari sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata
historis 4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)**

* **Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?**<br />
Diketahui bahwa terdapat ```x = 6``` bayi, rata-rata terjadinya kelahiran dapat dilambangkan dengan ```lambda = 4.5```. Dapat dilakukan penyelesaian menggunakan Distribusi Poisson dengan fungsi ```dpois()```. Dengan parameter berisi x dan lambda.<br />

  Code: <br />
  ```R
  x = 6
  lambda = 4.5

  peluang <- dpois(x, lambda)
  paste("Peluang =", peluang)
  ```
  Output: <br />
  ![image](https://user-images.githubusercontent.com/90106865/194836402-109a09a2-4654-48a8-bf12-e797d13a63d3.png)<br />
  didapatkan hasil ```0.1281201```

* **Simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini
selama setahun (n = 365)**
skip

* **Bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan**
skip

* **Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Poisson**<br />
  Pada Distribusi Poisson nilai rataan dan varian sama dengan nilai lambda atau rata-rata historis terjadinya kelahiran 
  
  Code: <br />
  ```R
  rataan = varian = lambda
  paste("Rataan =", rataan)
  paste("Varian =", varian)
  ```
  Output: <br />
  ![image](https://user-images.githubusercontent.com/90106865/194836493-9fd8c901-d787-4210-b99e-595658331f3e.png)<br />
  didapatkan mean/rataan dan varian ```4.5```

## No 4
>**Diketahui nilai x = 2 dan v = 10. Tentukan:**<br />
* **Fungsi Probabilitas dari Distribusi Chi-Square**
Mencari fungsi probabilitas dari Distribusi Chi-Square dilakukan dengan menggunakan fungsi dchisq(). Dengan parameter x dan v.<br />
  Code:<br />
  ```R
  x = 2
  v = 10

  peluang <- dchisq(x, v)
  paste("Peluang =", peluang)
  ```
  Output: <br />
  ![image](https://user-images.githubusercontent.com/90106865/194837182-03754f25-df09-4a4c-b78f-b04c73ee1ec2.png)<br />
  
* **Histogram dari Distribusi Chi-Square dengan 100 data random.**
skip

* **Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Chi-Square.**
  Rumus yang digunakan untuk mencari rataan dari Distribusi Binomial<br />
  ```rataan = v```<br />
  Rumus yang digunakan untuk mencari varian dari Distribusi Binomial<br />
  ```varian = 2 * v```<br />
  
  Code: <br />
  ```R
  rataan = v
  paste("Rataan =", rataan)

  varian = 2 * v
  paste("Varian =", varian)
  ```
  Output: <br />
  ![image](https://user-images.githubusercontent.com/90106865/194837654-c4feaccf-4d47-4a7f-a5f2-b0070875d68a.png)<br />
  didapatkan mean atau rataan ```10``` dan varian ```20```
 
