setwd("/data/project/tmp/chenyawen/chenyawenchange/")
library(pROC)
library(readxl)
library(ggplot2)
library(reshape2)
library(plotly)
#pointplot
pdf(file = 'ddcfDNA.point.pdf',width = 4,height = 3)
ggplot(plot,aes(b,log10(`ddcfDNA concentration`*100)))+
  ylab('ddcfDNA% (log10)')+theme(axis.title = element_text(size = 10, face = "bold", vjust = 0.5, hjust = 0.5))+xlab('')+
  annotate('segment',x=0,xend=54,y=0,yend=0,col='gray')+  
  annotate('segment',x=0,xend=54,y=1,yend=1,col='gray')+
  geom_point()+
  #theme_bw()+
  theme(panel.background = element_blank(),panel.grid = element_blank(),
        axis.line = element_line(size=1),
        axis.text = element_text(size = 10, color = "black", face = "bold", vjust = 0.5, hjust = 0.5, angle = 0))

dev.off()


#boxplot
wheather_rejection.box=read_excel('/data/project/tmp/chenyawen/chenyawen.xlsx',sheet=2)

pdf(file = 'wheather_rejection.boxplot.pdf',width = 4,height = 5)

ggplot(wheather_rejection.box,aes(re,log10(concentration*100)))+
  ylab('ddcfDNA% (log10)')+theme(axis.title = element_text(size = 10,face = "bold", vjust = 0.5, hjust = 0.5))+xlab('')+geom_boxplot()+
  geom_jitter(width=0.2)+
  annotate('segment',x=0.8,xend=1.2,y=0.0934,yend=0.0934,col='black')+ 
  annotate('segment',x=0.8,xend=1.2,y=-0.55,yend=-0.55,col='black')+ 
  annotate('segment',x=1.8,xend=2.2,y=1.4798,yend=1.4798,col='black')+ 
  annotate('segment',x=1.8,xend=2.2,y=-0.6575,yend=-0.6575,col='black')+
  theme(panel.background = element_blank(),panel.grid = element_blank(),
  axis.line = element_line(size=1),
  axis.text = element_text(size = 10, color = "black", face = "bold", vjust = 0.5, hjust = 0.5, angle = 0))

#theme_bw()+
#box=ggplotly(box)

dev.off()
#boxplot(data=databoxplot,log10(concentration)~re)
# Add data points
#mylevels<-levels(databoxplot$re)
#levelProportions<-summary(databoxplot$concentration)/nrow(databoxplot)

#for(i in 1:length(mylevels)){
  
#  thislevel<-mylevels[i]
#  thisvalues<-databoxplot[databoxplot$re==thislevel, "concentration"]
  
  # take the x-axis indices and add a jitter, proportional to the N in each level
#  myjitter<-jitter(rep(i, length(thisvalues)), amount=levelProportions[i]/2)
#  points(myjitter, thisvalues, pch=20, col=rgb(0,0,0,.2)) 
  
#}

#ROC wheather rejection
wheather_rejection=read_excel('/data/project/tmp/chenyawen/chenyawen.xlsx',sheet=2)
wheather_rejection=roc(wheather_rejection$re,wheather_rejection$concentration,plot=TRUE,print.auc=TRUE)

pdf(file = 'wheather_rejection.roc.pdf',width = 4,height = 4)
wheather_rejection.df=data.frame(FP=1-wheather_rejection$specificities,TP=wheather_rejection$sensitivities)
wheather_rejection.df.sort = wheather_rejection.df[order(wheather_rejection.df$TP,decreasing = F),]
ggplot(wheather_rejection.df.sort,aes(x=FP,y=TP))+
  xlab('False positive fraction')+
  theme(axis.title = element_text(size = 10,color = 'black',face = "bold", vjust = 0.5, hjust = 0.5))+
  ylab('True positive fraction')+
  geom_line()+
  #ggtitle('ROC')+
  annotate(geom = "text",x=0.25,y=0.8,label=paste0("Auc:",round(wheather_rejection$auc,4)))+
  annotate(geom = "segment",x=0,xend=1,y=0,yend=1)+xlim(0,1)+ylim(0,1)+
  #theme_bw()+
  theme(panel.background = element_blank(),panel.grid = element_blank(),axis.line = element_line(size = 1),
        axis.text = element_text(size = 10, color = "black", face = "bold", vjust = 0.5, hjust = 0.5, angle = 0))

dev.off()


#============sensitivity vs sepcificity

pdf(file = 'wheather_rejection-sensitivity-vs-specificity.pdf',width = 4,height = 3)
ggplot(wheather_rejection.df, aes(x=wheather_rejection$thresholds)) + 
  geom_line(aes(y=wheather_rejection$sensitivities))+
  geom_line(aes(y=wheather_rejection$specificities))+
xlab('cutoff of %ddcfDNA')+ylab('')+
  theme(axis.title = element_text(face="bold",size = 10))+
  annotate(geom = "text",x=0.15,y=0.9,label=paste0("sensitivity"),alpha = 1,size=5,color='black')+
  annotate(geom = "text",x=0.05,y=0.15,label=paste0("specificity"),size=5)+
  annotate(geom = "text",x=0.01275,y=0.989,label=paste0("*"),size=7)+
  annotate(geom = "text",x=0.01275,y=0.528,label=paste0("*"),size=7)+
  annotate(geom = "text",x=0.03,y=0.95,label=paste0("100%"),size=5)+
  annotate(geom = "text",x=0.03,y=0.6,label=paste0("54%"),size=5)+
  #theme_bw()+
  theme(panel.background = element_blank(),panel.grid = element_blank(),axis.line = element_line(size = 1),
        axis.text =element_text(face='bold',size = 10))

dev.off()

#============PPV vs NPV  

wheather_rejection.pv=data.frame()
for(th in wheather_rejection$thresholds)
{
  #print(th)
  pvth=coords(wheather_rejection,th,"threshold",ret=c("ppv","npv"))
  pvth=c(pvth,th)
  wheather_rejection.pv=rbind(wheather_rejection.pv,pvth)
}
names(wheather_rejection.pv) = c("ppv","npv","threshold")
wheather_rejection.pv=wheather_rejection.pv[order(wheather_rejection.pv$threshold,decreasing = F),]
wheather_rejection.pv=wheather_rejection.pv[wheather_rejection.pv$threshold!='Inf',]
wheather_rejection.pv.melt=melt(data = wheather_rejection.pv,measure.vars = c("ppv","npv"), variable.name = "type")
pdf(file = 'wheather_rejection.PPV-vs-NPV.pdf',width = 4,height = 3)
ggplot(wheather_rejection.pv.melt,aes(threshold,value,group=type))+geom_line()+geom_point(col='black')+
  #geom_text(aes(x=threshold,y=value-0.1,label=value),size=3)+
  xlab('cutoff of %ddcfDNA')+ylab('')+
  theme(axis.title = element_text(face="bold",size = 10))+
  annotate(geom = "text",x=0.16,y=0.9,label=paste0("PPV"),size=5)+
  annotate(geom = "text",x=0.16,y=0.23,label=paste0("NPV"),size=5)+
  annotate(geom = "text",x=0.01275,y=0.989,label=paste0("*"),size=7)+
  annotate(geom = "text",x=0.01275,y=0.485,label=paste0("*"),size=7)+
  annotate(geom = "text",x=0.03,y=0.95,label=paste0("100%"),size=5)+
  annotate(geom = "text",x=0.03,y=0.54,label=paste0("50%"),size=5)+
  #theme_bw()+

  theme(panel.background = element_blank(),panel.grid = element_blank(),axis.line = element_line(size = 1),
        axis.text =element_text(face='bold',size = 10))

dev.off()
