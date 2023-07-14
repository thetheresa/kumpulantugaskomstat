#ordered and unordered
state <- c("tas", "sa", "qld", "nsw", "nsw", "nt", "wa", "wa", "qld", "vic", "nsw", "vic", "qld", "qld", "sa", 
           "tas", "sa", "nt", "wa", "vic", "qld", "nsw", "nsw", "wa", "sa", "act", "nsw", "vic", "vic", "act")
statef <- factor(state) #pengelompokan dengan factornya
statef
incomes <- c(60, 49, 40, 61, 64, 60, 59, 54, 62, 69, 70, 42, 56, 61, 61, 61, 58, 51, 48, 65, 49, 49, 41, 48, 52, 46, 59, 46, 58, 43)
incmeans <- tapply(incomes, statef, mean) #tapply berguna u/ splits data dari var pertama,berdasarkan urutan dari variabel kedua(Transect)
incmeans


#pengurutan
v <- c(34, 47, 25, 14)
order(v) #urutan dari indeks dari angka terkecil--> indeks posisi angka
sort.list(v) #urutan dari nilai terkecil ke terbesar
sort(v)
W <- c(34,47,NA,14)
order(W) 
sort.list(W) #indeks
sort(W) #dari nilai terkecil, NA diabaikan


#Data wrangling --> tidak se