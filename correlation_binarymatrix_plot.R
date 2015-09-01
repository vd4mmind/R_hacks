library(pheatmap)
ggplotColours <- function(n=6, h=c(0, 360) +15)
{
  if ((diff(h)%%360) < 1) h[2] <- h[2] - 360/n
  hcl(h = (seq(h[1], h[2], length = n)), c = 100, l = 65)
}

# mat is a matrix with rows and column names
# values are either 0, -1 or 1 for no correlation, positive and negative correlation

draw_colnames_45 <- function (coln, ...) {
  m = length(coln)
  x = (1:m)/m - 1/2/m
  grid.text(coln, x = x, y = unit(0.96, "npc"), vjust = 1, 
            hjust = 1, rot = 45, gp = gpar(...)) ## Was 'hjust=0' and 'rot=270'
}

assignInNamespace(x="draw_colnames", value="draw_colnames_45", ns=asNamespace("pheatmap"))

pheatmap(mat, display_numbers = T, legend = F, main = "Differentially Expressed lncRNAs in various cancers (TCGA)\n",
         fontsize_number = 12, color = c("#F8766D","white","#7CAE00"), cellwidth = 70,cellheight = 40,fontsize_row=16, fontsize_col=16,fontsize=16)

