library(ggplot2)
# consider your count files have the following pattern
# get list of files
list.f <- list.files(pattern="*_counts.txt")
# get names of files
names <- sub('_counts.txt','',list.f)

# generate a large dataframe of counts
lib.total <- data.frame()
for(i in 1:20)
{
  lib <- read.table(list.f[i],skip = 1)
  lib$name <- names[i]
  lib.total<-rbind(lib.total,lib)
}

# use ggplot to make distribution & color by name
ggplot(data=lib.total, aes(x=log2(V1),color=name)) + geom_density() + xlab('\n log2(counts)') + 
ggtitle('Distribution of Read Counts\n') + theme_bw(base_size = 18) 

