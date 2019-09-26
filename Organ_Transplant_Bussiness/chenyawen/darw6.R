setwd("/data/project/tmp/chenyawen/chenyawenchange/")
library(pROC)
library(readxl)
library(ggplot2)
library(reshape2)
library(plotly)
library(RColorBrewer)

#ROC IB-non

dataIB_non=read_excel('/data/project/tmp/chenyawen/chenyawen.xlsx',sheet=10)
dataIB_non.df=data.frame(ddcfDNA=dataIB_non$concentration,type=dataIB_non$type)
#ggplot(dataATROC.df, aes(d = type, m = ddcfDNA)) + geom_roc()

dataIB_non.roc=roc(dataIB_non$type,dataIB_non$concentration,plot=TRUE,print.auc=TRUE)

pdf(file = 'B-non.roc.pdf',width = 4,height = 4)
dataIB_non.df=data.frame(FP=1-dataIB_non.roc$specificities,TP=dataIB_non.roc$sensitivities)
dataIB_non.df.sort = dataIB_non.df[order(dataIB_non.df$TP,decreasing = F),]
ggplot(dataIB_non.df.sort,aes(x=FP,y=TP))+
  xlab('False positive fraction')+ylab('True positive fraction')+
  theme(axis.title = element_text(size = 10,color = 'black',face = "bold", vjust = 0.5, hjust = 0.5))+
  #ggtitle('ROC')+
  geom_line()+
  annotate(geom = "text",x=0.35,y=0.77,label=paste0("Auc:",round(dataIB_non.roc$auc,4)))+
  annotate(geom = "segment",x=0,xend=1,y=0,yend=1)+xlim(0,1)+ylim(0,1)+
  # theme_bw()+
  theme(panel.background = element_blank(),panel.grid = element_blank(),axis.line = element_line(size = 1),
        axis.text = element_text(size = 10, color = "black", face = "bold", vjust = 0.5, hjust = 0.5, angle = 0))

dev.off()

#============sensitivity vs sepcificity A-non

pdf(file = 'IB_non_sensitivity-vs-specificity.pdf',width = 4,height = 3)

ggplot(dataIB_non.df, aes(x=dataIB_non.roc$thresholds)) + 
  geom_line(aes(y=dataIB_non.roc$sensitivities))+
  geom_line(aes(y=dataIB_non.roc$specificities))+
  xlab('cutoff of %ddcfDNA')+ylab('')+
  
  theme(axis.title = element_text(face="bold",size = 10))+
  annotate(geom = "text",x=0.05,y=0.9,label=paste0("sensitivity"),size=5)+
  annotate(geom = "text",x=0.05,y=0.4,label=paste0("specificity"),size=5)+
  
  annotate(geom = "text",x=0.0072,y=0.82,label=paste0("*"),size=7)+
  annotate(geom = "text",x=0.0072,y=0.98,label=paste0("*"),size=7)+
  annotate(geom = "text",x=0.016,y=1,label=paste0("100%"),size=5)+
  annotate(geom = "text",x=0.016,y=0.86,label=paste0("82%"),size=5)+
  
  #theme_bw()+
  theme(panel.background = element_blank(),panel.grid = element_blank(),axis.line = element_line(size = 1),
        axis.text =element_text(face='bold',size = 10))

dev.off()

#============PPV vs NPV A-non

IB_non.pv=data.frame()
for(th in dataIB_non.roc$thresholds)
{
  #print(th)
  pvth=coords(dataIB_non.roc,th,"threshold",ret=c("ppv","npv"))
  pvth=c(pvth,th)
  IB_non.pv=rbind(IB_non.pv,pvth)
}
names(IB_non.pv) = c("ppv","npv","threshold")
IB_non.pv=IB_non.pv[order(IB_non.pv$threshold,decreasing = F),]
IB_non.pv=IB_non.pv[IB_non.pv$threshold!='Inf',]
IB_non.pv.melt=melt(data = IB_non.pv,measure.vars = c("ppv","npv"), variable.name = "type")

pdf(file = 'IB_non.PPV-vs-NPV.pdf',width = 4,height = 3)

ggplot(IB_non.pv.melt,aes(threshold,value,group=type))+geom_line()+geom_point()+
  #geom_text(aes(x=threshold,y=value-0.1,label=value),size=3)+
  xlab('cutoff of %ddcfDNA')+ylab('')+
  theme(axis.title = element_text(face="bold",size = 10))+
  annotate(geom = "text",x=0.05,y=0.95,label=paste0("PPV"))+
  annotate(geom = "text",x=0.05,y=0.85,label=paste0("NPV"))+
  
  annotate(geom = "text",x=0.0049,y=0.31,label=paste0("*"),size=10)+
  annotate(geom = "text",x=0.0049,y=0.99,label=paste0("*"),size=10)+
  annotate(geom = "text",x=0.015,y=1.03,label=paste0("100%"),size=5)+
  annotate(geom = "text",x=0.012,y=0.36,label=paste0("31%"),size=5)+
  
  #theme_bw()+
  
  theme(panel.background = element_blank(),panel.grid = element_blank(),axis.line = element_line(size = 1),
        axis.text =element_text(face='bold',size = 10))

dev.off()
dev.off()