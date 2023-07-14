data("swiss")
?swiss
attach(swiss)


#NOMOR 1

#sort
getsort = function(var){
  for (i in 1 : (length(var) - 1)) {
    for (idx in 1 : (length(var) - i)) {
      if (var[idx] > var[idx + 1]) {
        first = var[idx]
        second = var[idx + 1]
        var[idx] <- second
        var[idx + 1] <- first
      }
    }
  }
  return(var)
}
getsort(Fertility)

#min
getmin <- function(x) {
  min_value <- x[1]
  for (i in 2:length(x)) {
    if(x[i] < min_value) {
      min_value <- x[i] 
    }
  }
  return(min_value)
}
getmin(Fertility)

#max
getmax <- function(x) {
  max_value <- x[1]
  for (i in 2:length(x)) {
    if(x[i] > x[1]) {
      max_value <- x[i]
    }
  }
  return(max_value)
}
getmax(Fertility)

#range
getrange <- function(x){
  n = length(x)
  u = getsort(x)
  min <- getmin(x)
  maks <- getmax(x)
  range = maks-min 
  return(range)
}
getrange(Fertility)

#mean
getmean <- function(x) {
  n <- length(x)
  xbar <- 0
  for (i in c(1:n))
  {
    xbar <- xbar + ((x[i]/n))
  }
  xbar
} 
getmean(Fertility)

#modus
getmode <- function(x) {
  uniqx <- unique(x)
  uniqx[which.max(tabulate(match(x, uniqx)))]
}
getmode(Fertility)


#median
getmedian <- function(x){
  n = length(x)
  u = getsort(x)
  k = n*0.5
  if (n%%2==0)
  {
    median = (u[k]+u[k+1])/2
  }
  else
  {
    median=u[ceiling(k)]
  }
  median
}
getmedian(Fertility)

#hasil
semangat <- function(x){
  n = length(x)
  dev = 0
  for (i in 1:n)
  {
    min = getmin(x)
    max = getmax(x)
    range = getrange(x)
    mean = getmean(x)
    median = getmedian(x)
    modus = getmode(x)
    dev = dev + (x[i]-getmean(x))^2
    varians = dev/(n-1)
    stdev = sqrt(varians)
  }
  summary = list(min = min, max= max, range= range, mean = mean, median = median, modus = modus, Var = varians, std = stdev)
  cbind(summary)
}
semangat(Fertility)







