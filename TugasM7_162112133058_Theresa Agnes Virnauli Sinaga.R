# NOMOR 1
#a. buat datagrame
df <- data.frame (
  Pertumbuhan_Tanaman = c(4.8, 4.4, 3.0, 3.9, 4.4, 5.0, 5.2, 5.2, 4.3, 4.8, 6.4, 6.2, 4.6, 5.5, 5.8, 6.3, 6.4, 5.6, 4.8, 5.8),
  Penyinaran_Matahari = c("Tidak Pernah", "Tidak Pernah", "Tidak Pernah", "Tidak Pernah", "Tidak Pernah", "Rendah", "Rendah", "Rendah", "Rendah", "Rendah", "Sedang", "Sedang", "Sedang", "Sedang", "Sedang", "Tinggi", "Tinggi", "Tinggi", "Tinggi", "Tinggi")
)
df
#b. tabel berisi pengelompokan berdasarkan penyinaran matahari, lalu hitung nilai minimum, maksimum, mean dari pertumbuhan tanaman
#membuat rumus manual
#min
getmin <- function(x) { #Membuat nama fungsi
  min_value <- x[1] #Membuat variabel untuk nilai terkecil (min)
  for (i in 2:length(x)) { #Perulangan untuk membandingkan antar nilai ke i dan i+1 (membandingkan antara 2 nilai) sampai ke nilai di posisi terakhir
    if(x[i] < min_value) { #Jika nilai i yang lebih kecil 
      min_value <- x[i] #Masukan nilai tersebut ke dalam variabel untuk nilai terkecil (min) yaitu variabel min_value
    }
  }
  return(min_value) #Mengeluarkan hasil dari variabel min_value
}
#max
getmax <- function(x) { #Membuat nama fungsi
  max_value <- x[1] #Membuat variabel untuk nilai terbesar (max)
  for (i in 2 :length(x)) { #Perulangan untuk membandingkan antar nilai ke i dan i+1 (membandingkan antara 2 nilai) sampai ke nilai di posisi terakhir
    if(x[i] > max_value) {  #Jika nilai i yang lebih besar 
      max_value <- x[i] #Masukan nilai tersebut ke dalam variabel untuk nilai terkecil (min) yaitu variabel max_value
    }
  }
  return(max_value) #Mengeluarkan hasil dari variabel max_value
}
#mean
getmean <- function(x) { #Membuat nama fungsi
  n <- length(x) #Var n untuk panjang dari variabel x (banyak data)
  xbar <- 0 #Membuat starting poin (variabel kosong) untuk menyimpan hasil dari perulangan
  for (i in c(1:n)) #Perulangan dari nilai ke i sampai i terakhir pada n
  {
    xbar <- xbar + ((x[i]/n)) #Rumus mencari rata- rata
  }
  return(xbar) #Mengeluarkan hasil dari variabel xbar
} 
# maka hasilnya adalah
library(dplyr)
library(tidyverse)
df%>% group_by(Penyinaran_Matahari) %>% summarise(
  min = getmin(Pertumbuhan_Tanaman),
  max = getmax(Pertumbuhan_Tanaman),
  mean = getmean(Pertumbuhan_Tanaman)
)


#NOMOR 2
# === Membangkitkan dengan Distribusi Uniform ===
# bagian A
# Membangkitkan dengan Fungsi Bawaan R
n <- 1000
a <- 6
b <- 12
set.seed(123)
populasi_uniform = runif(n,a,b)
populasi_uniform

# Ambil sampel dari data bangkitan dengan n=50 dan n=500 dengan pengembalian, lalu hitung mean dari sampel tersebut. Ulangi 1000 kali
n50_uniform = c()
n500_uniform = c()
pengulangan = 1000

for (i in 1:pengulangan){
  n50_uniform[i] = mean(sample(populasi_uniform,50,replace=TRUE))
  n500_uniform[i] = mean(sample(populasi_uniform,500,replace=TRUE))
}

# Buat histogram dari durasi buka (1000 obs.) dan mean sampel (n=50 dan n=500)
hist(populasi_uniform,col="red",main="n = 1000",xlab="Rata-rata")
abline(v = mean(populasi_uniform),col="red")
hist(n50_uniform,col="green",main="n = 50",xlab="Rata-rata")
abline(v = mean(n50_uniform),col="green")
hist(n500_uniform,col="blue",main="n = 500",xlab="Rata-rata")
abline(v = mean(n500_uniform),col="blue")
par(mfrow=c(1,3))

# Hitung mean dan deviasi standar dari populasi, mean dan deviasi standar dari mean sampel. Apa yang Anda dapat simpulkan?
getstd <- function(x) { #Membuat nama fungsi
  {
    std = sqrt(getvar(x)) #Mengakar nilai varians
  }
  return(std) #Mengembalikan/ mengeluarkan nilai variabel std
}
#maka
mean_populasi = getmean(populasi_uniform)
stdev_populasi = getstd(populasi_uniform)
mean_n50 = getmean(n50_uniform)
stdev_n50 = getstd(n50_uniform)
mean_n500 = getmean(n500_uniform)
stdev_n500 = getstd(n500_uniform)

mean_populasi
stdev_populasi

mean_n50
stdev_n50

mean_n500
stdev_n500
# dari hasil perhitungan di atas, semakin besar sampelnya, maka distribusinya semakin mendekati distribusi normal.

# bagian B
# 1. Menentukan sample size sebesar 1000
n <- 1000
# 2. Generate Random Number
set.seed(123)
mean=10
lamda <- 1/mean
service_waktu <- rexp(n, lambda)

var_service_waktu <- function(service_waktu){
  n <- length(service_times)
  sum((service_times - mean)^2)/(n-1)
}
var_service <- var_service_waktu(service_waktu)
# menampilkan hasil
cat("Varians", var_service, "menit")



#NOMOR 3  
# tes = A
# flu = B

# P(B|A)?

flu <- sample(c('NO', 'YES'), size = 5000, replace = TRUE, prob = c(0.98, 0.02))
tes <- rep(NA, 5000)

tes[flu == 'Tidak'] <- sample(c('Neg', 'Pos'), size = sum(flu == 'Tidak'), replace = TRUE, prob = c(0.95, 0.05))
tes[flu == 'Ya'] <- sample(c('Neg', 'Pos'), size = sum(flu == 'Ya'), replace = TRUE, prob = c(0.1, 0.9))


pA_B <- 0.9
pB <- 0.02
pAc_B <- 0.1
pA_Bc <- 0.05
pAc_Bc <- 0.95
pA <- (pA_B*pB) + (pA_Bc*(1-pB))
pB_A <- pA_B *pB/pA
pB_A #Kemungkinan Anda benar-benar terkena flu


