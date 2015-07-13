library(NMF)
library(RColorBrewer)

color <- vector.of.colors.for.annotation

aheatmap(x = dat, scale = 'row', distfun = dist2, legend = F, fontsize = 12, annRow = color,
         cexRow = 29, cexCol = .9, cellwidth = 40, Rowv = NA, Colv=NA,
         color = "YlGnBu",
         main = '')
