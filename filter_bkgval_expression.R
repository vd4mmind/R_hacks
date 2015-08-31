# select genes where 80% of samples have value greater than bkgval
expr.filter <- which(rowMeans(expr.dat > bkgval) > 0.8)
