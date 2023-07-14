#tipe data
x <- 10.5
class(x)
y <- 1000L
class(y)
x <- "10"
class(x)

#konversi tipe data
z <- as.numeric(x)
class(z)
a <- as.numeric(z)
class(a)

#matrix
col1 <- c(5,6,7,8)
col2 <- c(2,3,4,5)
col3 <- c(1,2,3,4)

mtrx <- cbind(col1,col2,col3) #membuat matrix
mtrx

mtrx1 <- cbind(col1,col2,col3)
mtrx1

a <- matrix(c(2,3,5), nrow = 3, ncol = 3) #kalau angka kurang dr permintaan matrix maka angkanya akan terulang
a

mtrx[3,] #koma adalah pemisah untuk run
mtrx[c(2,3)] #harus make c karena dia menindeks pada colom dan baris
mtrx[(1:2)]
mtrx[-c(1,3),-c(2:3)] #pengecualian untuk baris 2 dan 3 serta kolom 3
#array
thisarray <- c(1:20)
thisarray
multiarray <- array(thisarray, dim = c(4,3,2)) #kalau angka ga cukup akan ngulang lagi
multiarray #digunakan untuk data dua/ tiga dimensi, cth memetakan kedekatan suatu objek dengan objek lainnya 

#data frame
#create a data frame
df1 <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)
df1
str.df1
#yang kurang = code buat pertanyaan alia

#List of strings
thisislist <- list("apple","banana","cherry")
thisislist
thisislist[1]
thisislist[1]<- "blackcurrent"
thisislist[1]
length(thisislist)
append(thisislist, "orange")

#Missing Value
Jumlah <- c(Apel=5, Jeruk=NA, Rambutan=6, Salak=7)
is.na(Jumlah) #mengecek missing value

#looping dan if else
for(i in 1:4) { #diakhiri dengan kurung kurawal buka
  if(i<2){
    print(1+5)
  }else{
    print(1-5)
  }
}

#seq 
  