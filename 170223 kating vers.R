data("mtcars") 
?mtcars

attach(mtcars)
getrange <- function(x){
  n = length(x)
  u = sort(x)
  min = u[1]
  maks = u[n]
  {
    summary=list(minimum = min, maksimum = maks, range = maks-min)
    cbind(summary)
  }
}
getrange(wt)


getmean <- function(x) {
  n <- length(x)
  xbar <- 0
  for (i in 1:n)
  {
    xbar <- xbar + (x[i]/n)
  }
  xbar
}
getmean(wt)

getmedian = function(x){
  n = length(x)
  u = sort(x)
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
getmedian(mtcars$wt)

getmodus<- function(x) {
  uniq <- unique(x)
  tab <- tabulate(match(x, uniq))
  if (length(uniq) == length(x))
  {
    modus <- NA
  }
  else
  {
    modus <- uniq[tab == max(tab)]
  }
  return(modus)
}
getmodus(cyl)

  getvarsd <- function(x){
    n = length(x)
    dev = 0
    for (i in 1:n)
    {
      dev = dev + (x[i]-mean(x))^2
      varians = dev/(n-1)
      stdev = sqrt(varians)
    }
    spread = list(Variansi = varians, `Standar Deviasi` = stdev)
    return(spread)
  }
  getvarsd(mtcars$wt)
  
  