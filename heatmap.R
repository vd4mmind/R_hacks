# create heatmap with heatmap.2 or heatmap.3
dist2 <- function(x, ...) {as.dist(1-cor(t(x), method="pearson"))}
col_ylgnbu <- colorRampPalette(rev(brewer.pal(n = 9, "YlGnBu")))

# color.lab is vector of colors
heatmap.2(as.matrix(expr.sub), scale="row", key=TRUE, symkey=FALSE, trace='none', cexCol=0.8, col=redblue(50), 
          dist=dist2, margins=c(5,5), main="Expression Cardiac Genes\n", ColSideColors = color.lab)

heatmap.3(x = as.matrix(expr.sub), dendrogram = 'column', dist.FUN = dist2, scale = 'row', color.FUN = col_ylgnbu, 
          ColIndividualColors = color.lab,
          cex.main = 1.5,trace = 'none',
          main = 'Expression Cardiac Genes\n', 
          key = F, cexRow = 1.5, cexCol = 1)
