source("http://bioconductor.org/biocLite.R")
BiocInstaller::biocLite("Biostrings")

library(Biostrings)
csv = read.csv('sample.csv')
seq = csv$seq
names(seq) = csv$ID
dna = DNAStringSet(x = seq)
names(dna) <- names(seq)
writeXStringSet(dna, "sample.fasta")

# sample.csv has the following format
# sequence,ID
 
