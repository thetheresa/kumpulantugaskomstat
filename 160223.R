#Membaca dan memanggil data
data("mtcars") #memanggil data di R
?mtcars #mengetahui tentang data mtcars
head(mtcars) #mengecek 6 observasi awal
head(mtcars, n=15) #untuk mengecek sejumlah n teratas, apabila n= lebih dari jumlah observasi, maka tidak akan terulang printnya
tail(mtcars) #mengecek 6 observasi terakhir
str(mtcars) #mengetahui struktur data

##PEMUSATAN
#Menghitung Mean
attach(mtcars) #untuk selalu menyertakan seluruh dataset pada tiap command
sum(wt)/nrow(mtcars) #menghitung manual nilai mean
mean(wt) #menghitung mean dengan fungsi
#jika tanpa fungsi attach
sum(mtcars$wt)/nrow(mtcars) #menghitung manual nilai mean
mean(mtcars$wt) #menghitung mean dengan fungsi
#fungsi
getmean <- function(x) {
  n <- length(x)
  xbar <- 0
  for (i in c(1:n))
  {
    xbar <- xbar + (x[i]/n) #indexing harus dengan kurung siku
  }
  xbar
} 
getmean(wt)
getmean(disp)

#Menghitung Median
df <- sort(mtcars$wt) #mengurutkan data 1 variabel secara parsial
head(df) #melihat 6 observasi awal
n <- length(df) #menghitung banyaknya observasi
p <- 0.5 #persentil 50%
np <- n*p

#karena hasil np integer, sehingga median ada di observasi ke-16 dan 17
x16 <- df[16] #mengambil data ke-16
x17 <- df[17] #mengambil data ke-17
median <- (x16+x17)/2 #menghitung median dengan manual
median

median <- median(wt) #menghitung median dengan fungsi median()
median

median <- quantile(wt,0.5) #menghitung median dengan fungsi quantile()
median

#Menghitung Modus
table(cyl) #tabel frekuensi setiap level variabel cyl
l=length(levels(factor(wt))) #mencari banyak level
modus <- names(sort(table(cyl))[l]) #mengurutkan frekuensi, mencari level terakhir
modus

getmode <- function(x) {
  uniqx <- unique(x)
  uniqx[which.max(tabulate(match(x, uniqx)))]
}
mode <- getmode(cyl)
print(mode)

##PENYEBARAN
variansi <- var(wt)
variansi
dev_standar <- sqrt(variansi)
dev_standar
range <- max(wt)-min(wt)
range
range <- range(wt)[2]-range(wt)[1]
range
iqr <- IQR(wt)
iqr

iqr <- IQR(wt)
iqr
q3 <-quantile(wt, 0.75) 
q1<-quantile(wt,0.25)
iqr <- q3-q1 #pembuktian secara manual
iqr

q3 <-quantile(wt, 0.75, names =F) #untuk menghilangkan angka 75% di output
q1<-quantile(wt,0.25, names = F)
iqr <- q3-q1 
iqr
unname(iqr) #untuk menghilangkan angka 75% di output

attach(mtcars)
attach(mtcars)
allstdes <- summary(mtcars)
wtcyl_stdes <- allstdes[,c(2,6)] #mengambil cyl di kolom 2 dan wt di kolom 6
wtcyl_stdes

install.packages("pastecs") #install package dulu jika belum ter-install di R
library(pastecs) #memanggil library pastecs
stat.desc(mtcars)
stat.desc(mtcars[,c(2,6)]) #mengambil cyl di kolom 2 dan wt di kolom 6

library(tidyverse)
mtcars %>%
  group_by(cyl) %>%
  summarise(Mean=mean(cyl), Median=median(cyl), St.Dev=sd(cyl))

#SORTING 
                      
