annotate.eset <- function(eset, transcriptdb, ensemblonly=T){
  gns <- AnnotationDbi::select(transcriptdb, keys=featureNames(eset), columns=c("SYMBOL","GENENAME",'ENTREZID','ENSEMBL'), 
                                keytype="PROBEID")
  gns_cts <- dplyr::count(gns,PROBEID)
  colnames(gns_cts)[2] <- "GenestoProbe"
  gns <- gns[!duplicated(gns[,1]),]
  gnsmerg <- dplyr::inner_join(gns,gns_cts,by='PROBEID')
  colnames(gnsmerg)[1] ='ID'
  gnsmerg = gnsmerg[,-6]
  fData(eset) <- gnsmerg
  return(eset)
}
