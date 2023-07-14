# From the integers 1:20, draw 5 numbers 
sample(x = 1:20, size = 5)

# Draw 20 samples from the integers 1:5 with replacement 
sample(x = 1:5, size = 20, replace = TRUE)

# Draw 10 samples without replacement from a vector with length 5? 
sample(x = 1:5, size = 20) # ini error karena sampel nya 5 tapi minta perulangan sampe 20x

# Draw samples with replacement and specified probability 
sample(x = c("A", "B"),
       prob = c(.8, .2), 
       size = 10, 
       replace = TRUE)

# Simulating Coin Flips
sample(x = c("Angka", "Gambar"), size = 10,
       replace = TRUE)

sample(x = c("Angka", "Gambar"),
       prob = c(.8, .2), # the unfair coin 
       size = 10,
       replace = TRUE)

# Draw Coins from the box
box   <- c(rep("emas", 30),
           rep("perak", 20),
           rep("perunggu", 50))

# Draw 10 coins from the box
sample(x = box,
       size = 10)

# 10 samples from a Normal distribution with mean = 0, sd = 1 
rnorm(n = 10, mean = 0, sd = 1)

# 10 samples from a Normal distribution with mean = -30, sd = 30 
rnorm(n = 10, mean = -30, sd = 30)

# 10 samples from Uniform distribution with bounds at 0 and 1 
runif(n = 10, min = 0, max = 1)

# 20 samples from Uniform distribution with bounds at -10 and +10 
runif(n = 20, min = -10, max = 10)

# use set.seed for fixing the samples, the results will be consistent for each running 
set.seed(100)

# Distribusi Uniform (dengan pembulatan) 
set.seed(100)
floor(runif(5, min=0, max=100))

# Distribusi Normal
set.seed(100)
NormRand <- rnorm(100, mean=90, sd=5) 
hist(NormRand, main="Histogram of Data")

# Distribusi Eksponensial
x=rexp(200, 10)
hist(x, probability=TRUE, col= gray(.8), main="exponential dist") 
curve(dexp(x, 10), add=TRUE)

# Mengambil sampel dari data mtcars
data(mtcars)
Sample <- mtcars[sample(nrow(mtcars), 3), ] #mengambil 3 baris dari semua kolom 
Sample