setwd("/data/project/tmp/chenyawen/chenyawenchange/")
library(pROC)
library(readxl)
library(ggplot2)
library(reshape2)
library(plotly)
library(RColorBrewer)

#ROC AB

dataAB=read_excel('/data/project/tmp/chenyawen/chenyawen.xlsx',sheet=8)
dataAB.df=data.frame(ddcfDNA=dataAB$concentration,AB=dataAB$AB)
#ggplot(dataATROC.df, aes(d = AB, m = ddcfDNA)) + geom_roc()

dataAB.roc=roc(dataAB$AB,dataAB$concentration,plot=TRUE,print.auc=TRUE)

pdf(file = 'AB.roc.pdf',width = 4,height = 4)
dataAB.df=data.frame(FP=1-dataAB.roc$specificities,TP=dataAB.roc$sensitivities)
dataAB.df.sort = dataAB.df[order(dataAB.df$TP,decreasing = F),]
ggplot(dataAB.df.sort,aes(x=FP,y=TP))+
  xlab('False positive fraction')+ylab('True positive fraction')+
  theme(axis.title = element_text(size = 10,color = 'black',face = "bold", vjust = 0.5, hjust = 0.5))+
  #ggtitle('ROC')+
  geom_line()+
  annotate(geom = "text",x=0.35,y=0.8,label=paste0("Auc:",round(dataAB.roc$auc,4)))+
  annotate(geom = "segment",x=0,xend=1,y=0,yend=1)+xlim(0,1)+ylim(0,1)+
  # theme_bw()+
  theme(panel.background = element_blank(),panel.grid = element_blank(),axis.line = element_line(size = 1),
        axis.text = element_text(size = 10, color = "black", face = "bold", vjust = 0.5, hjust = 0.5, angle = 0))

dev.off()

#============sensitivity vs sepcificity AB

pdf(file = 'AB_sensitivity-vs-specificity.pdf',width = 4,height = 3)

ggplot(dataAB.df, aes(x=dataAB.roc$thresholds)) + 
  geom_line(aes(y=dataAB.roc$sensitivities))+
  geom_line(aes(y=dataAB.roc$specificities))+
  xlab('cutoff of %ddcfDNA')+ylab('')+
  theme(axis.title = element_text(face="bold",size = 10))+
  annotate(geom = "text",x=0.15,y=0.8,label=paste0("sensitivity"),alpha = 1,size=5,color='black')+
  annotate(geom = "text",x=0.08,y=0.15,label=paste0("specificity"),size=5)+
  annotate(geom = "text",x=0.038,y=0.74,label=paste0("*"),size=7)+
  annotate(geom = "text",x=0.038,y=0.69,label=paste0("*"),size=7)+
  annotate(geom = "text",x=0.03,y=0.83,label=paste0("75%"),size=5)+
  annotate(geom = "text",x=0.025,y=0.7,label=paste0("70%"),size=5)+
  #theme_bw()+
  theme(panel.background = element_blank(),panel.grid = element_blank(),axis.line = element_line(size = 1),
        axis.text =element_text(face='bold',size = 10))

dev.off()

#============PPV vs NPV A-non

AB.pv=data.frame()
for(th in dataAB.roc$thresholds)
{
  #print(th)
  pvth=coords(dataAB.roc,th,"threshold",ret=c("ppv","npv"))
  pvth=c(pvth,th)
  AB.pv=rbind(AB.pv,pvth)
}
names(AB.pv) = c("ppv","npv","threshold")
AB.pv=AB.pv[order(AB.pv$threshold,decreasing = F),]
AB.pv=AB.pv[AB.pv$threshold!='Inf',]
AB.pv.melt=melt(data = AB.pv,measure.vars = c("ppv","npv"), variable.name = "AB")

pdf(file = 'AB.PPV-vs-NPV.pdf',width = 4,height = 3)

ggplot(AB.pv.melt,aes(threshold,value,group=AB))+geom_line()+geom_point()+
  #geom_text(aes(x=threshold,y=value-0.1,label=value),size=3)+
  xlab('cutoff of %ddcfDNA')+ylab('')+
  theme(axis.title = element_text(face="bold",size = 10))+
  annotate(geom = "text",x=0.16,y=0.9,label=paste0("PPV"))+
  annotate(geom = "text",x=0.16,y=0.23,label=paste0("NPV"))+
  annotate(geom = "text",x=0.038,y=0.86,label=paste0("*"),size=10)+
  annotate(geom = "text",x=0.038,y=0.48,label=paste0("*"),size=10)+
  annotate(geom = "text",x=0.05,y=0.95,label=paste0("88%"),size=5)+
  annotate(geom = "text",x=0.05,y=0.6,label=paste0("50%"),size=5)+
  #theme_bw()+
  theme(panel.background = element_blank(),panel.grid = element_blank(),axis.line = element_line(size = 1),
        axis.text =element_text(face='bold',size = 10))

dev.off()
dev.off()