# This format is of Affymetrix MoGene-2_0-st annotation data. 
# You can get the corresponding Entrez ID, Gene Symbol & Ensembl ID using:

source("http://bioconductor.org/biocLite.R")
biocLite("mogene20sttranscriptcluster.db")
library(mogene20sttranscriptcluster.db)
Annot <- data.frame(SYMBOL=sapply(contents(mogene20sttranscriptclusterSYMBOL), paste, collapse=","), 
                    DESC=sapply(contents(mogene20sttranscriptclusterGENENAME), paste, collapse=","),
                    ENTREZID=sapply(contents(mogene20sttranscriptclusterENTREZID), paste, collapse=","),
                    ENSEMBLID=sapply(contents(mogene20sttranscriptclusterENSEMBL), paste, collapse=","))

