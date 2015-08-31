#SPIA
source("http://bioconductor.org/biocLite.R")
biocLite("SPIA")
library(SPIA)

# significant genes is a vector of fold changes where the names
# are ENTREZ gene IDs. The background set is a vector of all the 
# genes represented on the platform.
# top contains limma results from topTable (all expressed genes)
sig_genes <- subset(top, adj.P.Val<0.05)$logFC
names(sig_genes) <- subset(top, adj.P.Val<0.05)$ENTREZID
all_genes <- top$ENTREZID

# remove NAs
# remove duplicates
sig_genes <- sig_genes[complete.cases(names(sig_genes))]
sig_genes <- sig_genes[unique(names(sig_genes))]

# run SPIA.
spia_result <- spia(de=sig_genes, all=all_genes, organism="hsa", plots=TRUE)
spia_result <- spia_result[which(spia_result$pGFdr<0.05),]

# plot
plotP(spia_result, threshold=0.05)
