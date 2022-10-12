# Modul1_Probstat_5025211023
Praktikum Probabilitas dan Statistika Modul 1

## Identitas
| Nama                | NRP        | Kelas     |
| ---                 | ---        | ----------|
| Wan Sabrina Mayzura | 5025211023 |Probstat A |

## No 1
>**Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan
seseorang yang menghadiri acara vaksinasi sebelumnya**

* **Berapa peluang penyurvei bertemu ```x = 3``` orang yang tidak menghadiri acara vaksinasi sebelum keberhasilan pertama ketika ```p = 0.20``` dari populasi menghadiri acara vaksinasi? (distribusi Geometrik)** <br />
Dengan metode distribusi Geometrik, dapat menggunakan fungsi yang telah disediakan pada bahasa R, yaitu fungsi ``` dgeom() ``` yang berisi parameter x dan p. 
  ```R
  x = 3
  p = 0.20
  geom_dist <- dgeom(x, p)
  paste("Peluang =", geom_dist)
  ``` 
  ![image](https://user-images.githubusercontent.com/90106865/195309640-ea9844a2-a8ef-493b-a11a-89331e380a06.png)<br />
  Setelah dijalankan, didapat hasil peluang sebesar ```0.1024```
* **Mean Distribusi Geometrik dengan 10000 data random , prob = 0.20 dimana distribusi geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 )** <br />
Diketahui bahwa ```n = 10000```, ```prob = p = 0,20```, dan ```X = 3```. Dapat dicari mean dengan menggunakan fungsi ```rgeom()``` yang parameternya berisi banyaknya data random orang (n), serta peluang kehadiran orang ke acara vaksinasi atau prob (p).
  ```R
  n = 10000
  mean <- mean(rgeom(n, p) == 3)
  paste("Mean =", mean)
  ```
  ![image](https://user-images.githubusercontent.com/90106865/194834985-e8cbb3f9-2e17-4b9a-b24b-30ba6c84c515.png)<br />
  Setelah dijalankan, didapat hasil ```0.1011```
* **Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?**<br />
  Ditinjau dari hasil dari poin a dan b yang berbeda namun tidak terpaut jauh jarak nilainya. Dapat disimpulkan bahwa pada poin a, jika dilakukan pengujian berulang kali dengan menggunakan distribusi geometrik akan tetap menghasilkan nilai yang sama untuk setiap pengulangannya, yaitu ```0.1024```. Hal ini dikarenakan nilai distribusi geometrik yang digunakan adalah nilai tetap dan tidak random/diacak. Sedangkan pada poin B jika dilakukan pengujian berulang kali, akan didapatkan hasil yang berubah-ubah seperti pada gambar di bawah ini<br />
  ```percobaan 1```<br />
  ![image](https://user-images.githubusercontent.com/90106865/194835046-4a8695ec-f04e-4569-ae7c-91d3b9569222.png)<br />
  ```percobaan 2```<br />
  ![image](https://user-images.githubusercontent.com/90106865/194835184-d05d53e6-0e96-42b1-9f1d-31f58ea16091.png)<br />
   Fungsi ```dgeom()``` akan mengembalikan nilai, sedangkan fungsi ```rgeom()``` akan menghasilkan vektor variabel acak      (rata-rata dari semua peluang yang dapat terjadi pada suatu kejadian) yang akan mengembalikan nilai yang berbeda-beda.

* **Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama**<br />
  Histogram dari Distribusi Geometrik dapat dibuat menggunakan fungsi ```hist()``` dan ```rgeom()``` yang berisi parameter n dan prob = p.<br />

  Code: <br />
  ```R
  n = 10000
  hist(rgeom(n, p), main = 'Histogram Distribusi Geometrik')
  ```
  Output: <br />
  ![image](https://user-images.githubusercontent.com/90106865/194901230-1b328617-3468-4e95-bdd5-3d58fa403c39.png)
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
 Diketahui bahwa jumlah pasien ```n = 20``` dan peluang sembuh ```p = 0.2```. Untuk mencari peluang ```x = 4``` pasien yang sembuh, dapat menggunakan distribusi binomial dengan fungsi ```dbinom()``` dengan parameter x, n, dan prob = p.<br />
 
  Code: <br />
  ```R
  n = 20
  p = 0.2
  x = 4

  binom_dist <- dbinom(x, n, p)
  paste("Peluang =", binom_dist)
  ```
  Output: <br />
  ![image](https://user-images.githubusercontent.com/90106865/195310062-720f1782-20d7-4c88-9457-6eb3f06a996b.png)<br />
  didapatkan peluang terdapat 4 pasien yang sembuh adalah ```0.21819```
* **Gambarkan grafik histogram berdasarkan kasus tersebut**<br />
  Histogram dari Distribusi Binomial dapat dibuat menggunakan fungsi ```hist()``` dan ```rbinom()``` yang berisi parameter interval x, n, dan prob = p.<br />
  
  Code: <br />
  ```R
  hist(rbinom(x, n, p), main = "Histogram Distribusi Binomial")
  ```
  Output: <br />
  ![image](https://user-images.githubusercontent.com/90106865/195304191-9cd0c75b-29cd-42e0-9aa4-d7ebc49cd9b7.png)
  
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

  pois_dist <- dpois(x, lambda)
  paste("Peluang =", pois_dist)
  ```
  Output: <br />
  ![image](https://user-images.githubusercontent.com/90106865/195310281-e39ee937-0d9f-4039-94be-8b15fcc3739f.png)<br />
  didapatkan hasil ```0.12812```

* **Simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini
selama setahun (n = 365)**<br />
  Histogram Distribusi Poisson dapat dibuat menggunakan fungsi ```hist()``` dan ```rpois()``` yang berisi parameter n dan lambda.<br />

  Code: <br />
  ```R
  n = 365
  hist(rpois(n, lambda), main = "Histogram Distribusi Poisson")
  ```
  Output: <br />
  ![image](https://user-images.githubusercontent.com/90106865/195324212-1c40f91d-4245-4555-894f-f8996c6c8c66.png)<br />

* **Bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan**<br />
  Pada poin A, nilai ```0.12812``` didapatkan menggunakan perhitungan eksakta dan menghasilkan nilai yang sama. Sedangkan pada poin B didapatkan dari hasil simulasi peluang acak kelahiran 6 bayi selama setahun, dan memungkinkan untuk mengembalikan nilai yang berbeda-beda ditiap pengujiannya. Namun dapat disimpulkan bahwa nilai yang didapat pada poin A dan B hampir sama, karena hasil poin A sendiri juga terdapat di range hasil poin B.

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
  didapatkan mean/rataan ```4.5``` dan varian ```4.5```

## No 4
>**Diketahui nilai x = 2 dan v = 10. Tentukan:**<br />
* **Fungsi Probabilitas dari Distribusi Chi-Square**<br />
Mencari fungsi probabilitas dari Distribusi Chi-Square dilakukan dengan menggunakan fungsi ```dchisq()``` dengan parameter x dan v.<br />
  Code:<br />
  ```R
  x = 2
  v = 10

  chisq_dist <- dchisq(x, v)
  paste("Peluang =", chisq_dist)
  ```
  Output: <br />
  ![image](https://user-images.githubusercontent.com/90106865/195310519-dd4c44ae-bc98-493b-ab5e-a5bf94d1262f.png)<br />
  didapatkan hasil ```0.00766```
 
* **Histogram dari Distribusi Chi-Square dengan 100 data random.**<br />
  Diketahui sebanyak ```n = 100``` data random digunakan untuk membuat histogram Distribusi Chi-Square, dengan menggunakan fungsi ```hist()``` dan ```rchisq()``` yang berisi parameter n dan v.

  Code: <br />
  ```R
  n = 100
  hist(rchisq(n, v), main = "Histogram Distribusi Chi-square")
  ```
  Output: <br />
  ![image](https://user-images.githubusercontent.com/90106865/195324456-e3f59223-dc66-4803-a993-cc0c77945145.png)

* **Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Chi-Square.**<br />
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
 
## No 5
>**Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3). Tentukan:**<br /> Petunjuk: <br />- Gunakan set.seed(1) <br /> - Gunakan fungsi bawaan R<br />
* **Fungsi Probabilitas dari Distribusi Exponensial**<br />
Mencari fungsi probabilitas dari Distribusi Exponensial bilangan acak dilakukan dengan menggunakan fungsi ```rexp()``` dengan parameter berisi sample size (1) dan rate = lambda.

  Code: <br />
  ```R
  lambda = 3
  
  set.seed(1)
  exp_dist <- rexp(1, lambda)
  paste("Peluang =", exp_dist)
  ```
  Output: <br />
  ![image](https://user-images.githubusercontent.com/90106865/195308122-51bfe393-10a0-4703-bb78-9705f4fd0a2b.png)<br />
  didapatkan nilai ```0.25172```
* **Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan
random**<br />
Histogram Distribusi Exponensial dapat dibuat menggunakan fungsi ```hist()``` dan ```rexp```<br />
  Code: <br />
  ```R
  lambda = 3

  set.seed(1)
  hist(rexp(n = 10, lambda), main = "Histogram Exp Dist 10 bil random")
  hist(rexp(n = 100, lambda), main = "Histogram Exp Dist 100 bil random")
  hist(rexp(n = 1000, lambda), main = "Histogram Exp Dist 1000 bil random")
  hist(rexp(n = 10000, lambda), main = "Histogram Exp Dist 10000 bil random")
  ```
  Output:<br />
  ![image](https://user-images.githubusercontent.com/90106865/195171173-e19c68ac-e071-4431-965b-5dcd4b02a458.png)<br />
  ![image](https://user-images.githubusercontent.com/90106865/195171808-d0a28ec7-91ce-45b0-85c1-a9e701ae1271.png)<br />
  ![image](https://user-images.githubusercontent.com/90106865/195171855-bc0361ac-3815-469f-b8e9-14f8fa67ef36.png)<br />
  ![image](https://user-images.githubusercontent.com/90106865/195172178-c7469ea9-0f37-4c12-aadc-9f1284c2eb77.png)<br />
* **Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Exponensial untuk n = 100 dan λ =
3**<br />
Untuk mencari Rataan dapat menggunakan fungsi ```mean()``` dan ```rexp()``` yang berisi parameter n, dan lambda. Dan untuk mencari Varian dapat menggunakan fungsi ```sd()``` dan ```rexp()``` yang berisi parameter n, dan lambda.<br />
  Code: <br />
  ```R
  N = 100

  set.seed(1)
  rataan = mean(rexp(N, lambda))
  paste("Rataan =", rataan)

  varian = sd(rexp(N, lambda))^2
  paste("Varian =", varian)
  ```
  Output: <br />
  ![image](https://user-images.githubusercontent.com/90106865/195274936-8b66dbc0-0a46-405e-9042-ca66d883db2b.png)<br />
  didapatkan mean atau rataan ```0.34355``` dan varian ```0.06561```

## No 6
>**Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8. Tentukan:**<br />
* **Fungsi Probabilitas dari Distribusi Normal P(X1 ≤ x ≤ X2), hitung Z-Score Nya dan plot data generate randomnya dalam bentuk grafik. Petunjuk(gunakan fungsi plot()).**<br />
Keterangan :<br />
X1 = Dibawah rata-rata<br />
X2 = Diatas rata-rata<br />
Contoh data :<br />
1, 2, 4, 2, 6, 3, 10, 11, 5, 3, 6, 8<br />
rata-rata = 5.083333<br />
X1 = 5<br />
X2 = 6<br />

  Untuk menghitung Z-Score, saat generate 100 nilai random dapat menggunakan fungsi ```rnorm()``` dengan parameter n, mean, dan sd. Lalu mencari mean dari 100 nilai random menggunakan ```mean()``` dengan parameter x. Setelah itu menentukan X1 dan X2 sebagai range peluang dengan menggunakan fungsi ```floor()``` untuk mencari X1 (batas atas dari mean data), dan mencari nilai setelahnya atau X2 (batas atas mean data) menggunakan fungsi ```ceiling()```. Untuk mencari Fungsi Probabilitas dari Distribusi Normal P(X1 ≤ x ≤ X2), dapat mengurangi ```pnorm()``` dari x2 dan x1. Untuk mencari Z-Score atau skor standar, dapat menggunakan rumus sebagai berikut: <br />

  ```Z = (x - mean) / sd)```<br />
  
  Dengan ```x = data hasil generate```. Dan untuk membentuk grafik data generate random, dapat menggunakan fungsi ```plot()```<br />
  
  Code:<br />
  ```R
  n = 100
  mean = 50
  sd = 8

  set.seed(1)
  x = rnorm(n, mean, sd)

  mean_data = mean(x)
  X1 = floor(mean_data)
  X1
  X2 = ceiling(mean_data)
  X2

  P = pnorm(X2, mean, sd) - pnorm(X1, mean, sd)
  paste("P(X1 ≤ x ≤ X2) =", P)

  zScore = (x - mean_data) / sd(data)
  print("Z-Score:")
  zScore
  plot(zScore, main = "Plot Z-Score")
  ```
  Output: <br />
  ![image](https://user-images.githubusercontent.com/90106865/195320943-0698c939-b53f-42ba-bbe6-f18feb04237b.png)<br />
  didapatkan P(X1 ≤ x ≤ X2) = ```0.04973```

  Grafik plot:<br />
  ![image](https://user-images.githubusercontent.com/90106865/195324775-40c8b67c-f7b8-45cd-95a4-3aea68f0fea5.png)

* **Generate Histogram dari Distribusi Normal dengan breaks 50 dan format penamaan:** <br />
  Histogram Distribusi Normal dapat dibuat menggunakan fungsi ```hist()``` dengan parameter x dan breaks.<br />
  Code:<br />
  ```R
  breaks = 50
  hist(x, breaks, main = "5025211023_Wan Sabrina Mayzura_Probstat_A_DNhistogram")
  ```
  Output:<br />
  ![image](https://user-images.githubusercontent.com/90106865/195181142-0a054b4c-026d-4e72-aa89-b446e4fc7928.png)
  
* **Nilai Varian (σ²) dari hasil generate random nilai Distribusi Normal**<br />
  Sesuai rumus yang berlaku, varian adalah hasil kuadrat dari standar deviasi. Oleh karena itu dapat menggunakan fungsi ```sd()``` yang dikuadratkan dengan parameter x sebagai hasil generate randomnya.<br /> 
  Code: <br />
  ```R
  varian = sd(x)^2
  paste("Varian =", varian)
  ```
  Output: <br />
  ![image](https://user-images.githubusercontent.com/90106865/195301600-37b25fa3-185d-46f1-a9c8-da8c4c4e592c.png)<br />
  didapatkan varian ```51.63277```.
