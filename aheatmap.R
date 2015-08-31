library(NMF)
library(RColorBrewer)

# distance function
dist2 <- function(x, ...) {as.dist(1-cor(t(x), method="pearson"))}

# either use this or YlGnBu
# col_ylgnbu <- colorRampPalette(rev(brewer.pal(n = 9, "YlGnBu"))) 

nc <- ncol(dd) # number of columns
nr <- nrow(dd) # number of rows

# vector of annotation terms
# this could be any ID e.g. GO Term ID for that particular gene
annot = data.frame(<label for annotation> = <values for annotation>)
# vector of symbols to use for row labels
syms <- ""
# vector of symbols to use for column labels
grp <- ""
    
aheatmap(x = as.matrix(dat), scale = 'row', distfun = dist2, fontsize = 16, annRow = annot, labRow = syms, labCol = grp,
             cexRow = min(0.2 + 1/log10(nr), 1.2), cexCol = min(0.2 + 1/log10(nc), 1.2), Rowv = NA, Colv=NA,
             color = "YlGnBu", cellwidth = 40,
             main = 'Heatmap of ... Genes')
