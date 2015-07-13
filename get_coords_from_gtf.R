library(plyr)

gtf = read.delim('gtf_file',header=F)
gtf = gtf[,-6]
gtf = ddply(gtf, .(V1,V4,V5), summarise, start= min(V2), end= max(V3))
gtf$score = 0
gtf = gtf[,c(1,4,5,3,6,2)]
