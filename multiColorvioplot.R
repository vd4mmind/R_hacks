source("~path/vioplotc.R")

vioplot(df$col1,df$col2,df$col3,df$col4, names=c("Sample1","Sample2","Sample3","Sample4"), col=c("light green","red","blue","dark green"))
title("According to data represented" )
legend("bottomleft", legend = c("Sample1","Sample2","Sample3","Sample4"),pch=20 , pt.cex = 0.8, cex = 0.5, horiz = FALSE,col=c("red","blue","dark green","light green"))
