### To find enhancer marks of K4me1_K27ac (active) from overlapping bed files of K4me1 and K27ac
k4me1_k27ac<-read.delim("/path/HOMER_annotated_output.txt",sep="\t")
dim(k4me1_k27ac)
ind_enhancers<-which(abs(k4me1_k27ac$Distance.to.TSS)>5000) ## find enhancers having Distance to TSS above 5KB
enhancers<-k4me1_k27ac[ind_enhancers,]
ind_put_enhancers<- which(2500< abs(k4me1_k27ac$Distance.to.TSS) & abs(k4me1_k27ac$Distance.to.TSS) < 5000) # find enhancers with distance to TSS between 2.5-5KB
put_enhancers<-k4me1_k27ac[ind_put_enhancers,]
dim(put_enhancers)
dim(enhancers)
write.table(put_enhancers,"/path/active_put_enhancers_2.5-5kb.txt",sep="\t",)
write.table(enhancers,"/path/active_enhancers_above5kb.txt",sep="\t",)
