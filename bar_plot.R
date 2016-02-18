### Creating bar plots with frequencies on top of the plots chosing from any directory
### The data format is in the file plot_file.txt
data1= read.delim(file.choose(), row.names=1,header=T)
data2=as.matrix(data1)
b<-barplot(data2, legend= rownames(data2), beside= TRUE,las=2,cex.axis=0.7,cex.names=0.7,ylim=c(0,14000))
tx2 <- data2
text(b,tx2+10, as.character(tx2),pos = 3, cex = 0.5, col = "red")
