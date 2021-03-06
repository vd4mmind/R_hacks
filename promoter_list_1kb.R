###H3K27me3 promoters with dist.to.TSS +/- 2.5KB (standard)
k27me3<-read.delim("/path/HOMER_annotated_K4me3_peak_file.txt",sep="\t")
dim(k27me3)
ind_promoters<- which(-2500< k27me3$Distance.to.TSS & k27me3$Distance.to.TSS < 2500)
promoters<-k27me3[ind_promoters,]
dim(promoters)
write.table(promoters,"/path/H3K27me3_promoters.txt",sep="\t",)

###H3K4me3
k4me3<-read.delim("/path/HOMER_annotated_K4me3_peak_file.txt",sep="\t")
dim(k4me3)
ind_promoters<- which(-2500< k4me3$Distance.to.TSS & k4me3$Distance.to.TSS < 2500)
promoters<-k4me3[ind_promoters,]
dim(promoters)
write.table(promoters,"/path/H3K4me3_promoters.txt",sep="\t",)
