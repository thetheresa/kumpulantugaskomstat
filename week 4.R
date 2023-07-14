# === Membangkitkan dengan Distribusi Uniform ===
# a. Cara Manual :
# 1. Menentukan sample size sebesar 1000
n <- 1000
# 2. Generate Random Number
set.seed(123)
u <- runif(n)
u
# 3. Mencari invers dari CDF yang diketahui:
a <- 1
b <- 1
x_inv <- -b*((log(1-u))^1/a)
head(x_inv)

# b. Membangkitkan X dari fungsi bawaan R (rweibull)
set.seed(123)
y <- rweibull(n, shape = 1)
head(x_inv)

# c. Membuat visualisasi kedua bangkitan tersebut
par(mfrow=c(1,2))
hist(x_inv,main="Weibull dari Inverse Transform")
hist(y,main="Weibull dari fungsi rweibull")

# d. Kesimpulan: 
# Generate secara manual maupun menggunakan fungsi r yaitu "rweibull" menghasilkan visualisasi histogram yang sama.


# === Membangkitkan dengan Distribusi Kumaraswamy ===
# 1. Menentukan sample size sebesar 1000
n <- 100
# 2. Generate Random Number
set.seed(123)
u <- runif(n)
u
# 3. Mencari invers dari CDF yang diketahui:
a <-1
b <- 2
x_inv <- -(((1-u)^(1/b)-1)^(1/a))
head(x_inv)

# c. Membuat visualisasi kedua bangkitan tersebut
hist(x_inv, main="Kumaraswamy dari Inverse Transform")

# d. Kesimpulan: 
# 


# === Membangkitkan CDF tertentu ===
# a. Cara Manual :
# 1. Menentukan sample size sebesar 1000
n <- 1000
# 2. Generate Random Number
set.seed(123) #kalau gamake set.seed, ketika di run hasil sample akan berbeda
u <- runif(n, min = 0, max = 1)
u
# 3. Mencari invers dari CDF yang diketahui:
x_inv <- sqrt(3*u+4)-2
head(x_inv)

# c. Membuat visualisasi kedua bangkitan tersebut
hist(x_inv,main="CDF tertentu dari Inverse Transform")

# d. Kesimpulan