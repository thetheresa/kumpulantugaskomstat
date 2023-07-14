# ========================= Mencari nilai X dengan Distribusi Geometri =========================
#Manual
n <- 1000
set.seed(123)
u <- runif (n)
u
p <- 0.5 #nilai probabilitasnya
x_inv <- floor(log((1-u), base = (1-p))-1) #rumus x invers (geometric manual)
x_inv
head(x_inv)
hist(x_inv)

#pembuktian dengan menggunakan rumus R
y <- rgeom(n, prob = 0.5)
y
head(y)
hist(y)

#Membandingkan kedua hasil
par(mfrow=c(1,2))
hist(x_inv, main="Percobaan Geometri Manual")
hist(y, main="Percobaan Geometri dengan Rumus R")

# ========================= Mencari nilai X dengan Distribusi Bernoulli =========================
n1 = 1000
p1 = 0.5
u1 <- runif (n1)
u1
q = ifelse(u < 1-p, 0, 1) #rumus manual
q
head(q)
hist(q, main="Percobaan Geometri Manual")


#Membandingkan hasil antara rumus manual dan langsung
library(dplyr)

u1 = runif(1000) #buat dataset

x = 0:1 #0 dan 1
p = 0.7
xsim = ifelse(u1 < 1-p, 0, 1) #rumus manual

library(simcausal) #Install package simcausal
knitr::kable(tibble(u = u1, xsim = xsim)) #rumus langsung
bern = rbern(u1, 0.7) #rumus dari R lgsg
bern
par(mfrow=c(1,2)) 

hist(bern) #hist langsung dari R
hist(xsim) #hist dengan rumus manual
