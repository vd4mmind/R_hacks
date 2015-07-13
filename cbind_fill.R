# cbind.fill function
# use as many dataframes as you want to cbind
# used to cbind dataframes with unequal number of rows

cbind.fill<-function(...)
{
  nm <- list(...) 
  nm<-lapply(nm, as.matrix)
  n <- max(sapply(nm, nrow)) 
  as.data.frame(do.call(cbind, lapply(nm, function (x) 
    rbind(x, matrix(, n-nrow(x), ncol(x))))))
}
