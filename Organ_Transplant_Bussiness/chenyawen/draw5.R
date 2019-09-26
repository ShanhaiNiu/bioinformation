setwd("/data/project/tmp/chenyawen/chenyawenchange/")
library(pROC)
library(readxl)
library(ggplot2)
library(reshape2)
library(plotly)
library(RColorBrewer)

#ROC A-non

dataIA_non=read_excel('/data/project/tmp/chenyawen/chenyawen.xlsx',sheet=9)
dataIA_non.df=data.frame(ddcfDNA=dataIA_non$concentration,type=dataIA_non$type)
#ggplot(dataATROC.df, aes(d = type, m = ddcfDNA)) + geom_roc()

dataIA_non.roc=roc(dataIA_non$type,dataIA_non$concentration,plot=TRUE,print.auc=TRUE)

pdf(file = 'A-non.roc.pdf',width = 4,height = 4)
dataIA_non.df=data.frame(FP=1-dataIA_non.roc$specificities,TP=dataIA_non.roc$sensitivities)
dataIA_non.df.sort = dataIA_non.df[order(dataIA_non.df$TP,decreasing = F),]
ggplot(dataIA_non.df.sort,aes(x=FP,y=TP))+
  xlab('False positive fraction')+ylab('True positive fraction')+
  theme(axis.title = element_text(size = 10,color = 'black',face = "bold", vjust = 0.5, hjust = 0.5))+
  #ggtitle('ROC')+
  geom_line()+
  annotate(geom = "text",x=0.4,y=0.72,label=paste0("Auc:",round(dataIA_non.roc$auc,4)))+
  annotate(geom = "segment",x=0,xend=1,y=0,yend=1)+xlim(0,1)+ylim(0,1)+
  # theme_bw()+
  theme(panel.background = element_blank(),panel.grid = element_blank(),axis.line = element_line(size = 1),
        axis.text = element_text(size = 10, color = "black", face = "bold", vjust = 0.5, hjust = 0.5, angle = 0))

dev.off()

#============sensitivity vs sepcificity A-non

pdf(file = 'IA_non_sensitivity-vs-specificity.pdf',width = 4,height = 3)

ggplot(dataIA_non.df, aes(x=dataIA_non.roc$thresholds)) + 
  geom_line(aes(y=dataIA_non.roc$sensitivities))+
  geom_line(aes(y=dataIA_non.roc$specificities))+
  xlab('cutoff of %ddcfDNA')+ylab('')+
  theme(axis.title = element_text(face="bold",size = 10))+
  annotate(geom = "text",x=0.15,y=0.9,label=paste0("sensitivity"),alpha = 1,size=5,color='black')+
  annotate(geom = "text",x=0.08,y=0.15,label=paste0("specificity"),size=5)+
  annotate(geom = "text",x=0.0068,y=0.76,label=paste0("*"),size=7)+
  annotate(geom = "text",x=0.0068,y=0.8,label=paste0("*"),size=7)+
  annotate(geom = "text",x=0.026,y=0.85,label=paste0("80%"),size=5)+
  annotate(geom = "text",x=0.026,y=0.78,label=paste0("76%"),size=5)+
  #theme_bw()+
  theme(panel.background = element_blank(),panel.grid = element_blank(),axis.line = element_line(size = 1),
        axis.text =element_text(face='bold',size = 10))

dev.off()

#============PPV vs NPV A-non

IA_non.pv=data.frame()
for(th in dataIA_non.roc$thresholds)
{
  #print(th)
  pvth=coords(dataIA_non.roc,th,"threshold",ret=c("ppv","npv"))
  pvth=c(pvth,th)
  IA_non.pv=rbind(IA_non.pv,pvth)
}
names(IA_non.pv) = c("ppv","npv","threshold")
IA_non.pv=IA_non.pv[order(IA_non.pv$threshold,decreasing = F),]
IA_non.pv=IA_non.pv[IA_non.pv$threshold!='Inf',]
IA_non.pv.melt=melt(data = IA_non.pv,measure.vars = c("ppv","npv"), variable.name = "type")

pdf(file = 'IA_non.PPV-vs-NPV.pdf',width = 4,height = 3)

ggplot(IA_non.pv.melt,aes(threshold,value,group=type))+geom_line()+geom_point()+
  #geom_text(aes(x=threshold,y=value-0.1,label=value),size=3)+
  xlab('cutoff of %ddcfDNA')+ylab('')+
  theme(axis.title = element_text(face="bold",size = 10))+
  annotate(geom = "text",x=0.16,y=0.9,label=paste0("PPV"))+
  annotate(geom = "text",x=0.16,y=0.23,label=paste0("NPV"))+
  
  annotate(geom = "text",x=0.0068,y=0.67,label=paste0("*"),size=10)+
  annotate(geom = "text",x=0.0068,y=0.863,label=paste0("*"),size=10)+
  
  annotate(geom = "text",x=0.018,y=0.92,label=paste0("87%"),size=5)+
  annotate(geom = "text",x=0.02,y=0.7,label=paste0("67%"),size=5)+
  
  #theme_bw()+
  
  theme(panel.background = element_blank(),panel.grid = element_blank(),axis.line = element_line(size = 1),
        axis.text =element_text(face='bold',size = 10))

dev.off()
