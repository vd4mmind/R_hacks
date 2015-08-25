# blank plot

df <- data.frame()

ggplot(df) + geom_point() + xlim(0, 0.5) + ylim(0, 1) + geom_abline(intercept=0.0,slope=2.00,linetype=2,size=1.25) + ggtitle("Relative Distances\n") + xlab("\nFractional Distance") + ylab("Cummulative Fraction\n") +theme(axis.text.x =element_text(vjust = 0.5,face="bold",colour="black",size=12),axis.text.y=element_text(face="bold",colour="black",size=12), axis.title.x=element_text(size=14),axis.title.y=element_text(size=14),title=element_text(size=12,face="bold"),legend.text=element_text(size=11),legend.title=element_text(size=12))



