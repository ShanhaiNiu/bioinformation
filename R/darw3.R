setwd("/data/project/tmp/chenyawen/chenyawenchange/")
library(pROC)
library(readxl)
library(ggplot2)
library(reshape2)
library(plotly)
library(RColorBrewer)

#ROC A-non

dataA_non=read_excel('/data/project/tmp/chenyawen/chenyawen.xlsx',sheet=5)
dataA_non.df=data.frame(ddcfDNA=dataA_non$concentration,type=dataA_non$type)
#ggplot(dataATROC.df, aes(d = type, m = ddcfDNA)) + geom_roc()

dataA_non.roc=roc(dataA_non$type,dataA_non$concentration,plot=TRUE,print.auc=TRUE)

pdf(file = 'A-non.roc.pdf',width = 4,height = 4)
dataA_non.df=data.frame(FP=1-dataA_non.roc$specificities,TP=dataA_non.roc$sensitivities)
dataA_non.df.sort = dataA_non.df[order(dataA_non.df$TP,decreasing = F),]
ggplot(dataA_non.df.sort,aes(x=FP,y=TP))+
  xlab('False positive fraction')+ylab('True positive fraction')+
  theme(axis.title = element_text(size = 10,color = 'black',face = "bold", vjust = 0.5, hjust = 0.5))+
  #ggtitle('ROC')+
  geom_line()+
 # annotate(geom = "text",x=0.35,y=0.8,label=paste0("Auc:",round(dataA_non.roc$auc,4)))+
  annotate(geom = "segment",x=0,xend=1,y=0,yend=1)+xlim(0,1)+ylim(0,1)+
  # theme_bw()+
  theme(panel.background = element_blank(),panel.grid = element_blank(),axis.line = element_line(size = 1),
        axis.text = element_text(size = 10, color = "black", face = "bold", vjust = 0.5, hjust = 0.5, angle = 0))

dev.off()

#============sensitivity vs sepcificity A-non

pdf(file = 'A-non_sensitivity-vs-specificity.pdf',width = 4,height = 3)

ggplot(dataA_non.df, aes(x=dataA_non.roc$thresholds)) + 
  geom_line(aes(y=dataA_non.roc$sensitivities))+
  geom_line(aes(y=dataA_non.roc$specificities))+
  xlab('cutoff of %ddcfDNA')+ylab('')+
  
  theme(axis.title = element_text(face="bold",size = 10))+
  annotate(geom = "text",x=0.1,y=0.9,label=paste0("specificity"),alpha = 1,size=5,color='black')+
  annotate(geom = "text",x=0.08,y=0.15,label=paste0("sensitivity"),size=5)+
  
  annotate(geom = "text",x=0.0128,y=0.76,label=paste0("*"),size=7)+
  annotate(geom = "text",x=0.0128,y=0.98,label=paste0("*"),size=7)+
  annotate(geom = "text",x=0.026,y=0.95,label=paste0("100%"),size=5)+
  annotate(geom = "text",x=0.026,y=0.8,label=paste0("78%"),size=5)+
  
  #theme_bw()+
  theme(panel.background = element_blank(),panel.grid = element_blank(),axis.line = element_line(size = 1),
        axis.text =element_text(face='bold',size = 10))

dev.off()
 
#============PPV vs NPV A-non

A_non.pv=data.frame()
for(th in dataA_non.roc$thresholds)
{
  #print(th)
  pvth=coords(dataAMR_non.roc,th,"threshold",ret=c("ppv","npv"))
  pvth=c(pvth,th)
  A_non.pv=rbind(A_non.pv,pvth)
}
names(A_non.pv) = c("ppv","npv","threshold")
A_non.pv=A_non.pv[order(A_non.pv$threshold,decreasing = F),]
A_non.pv=A_non.pv[A_non.pv$threshold!='Inf',]
A_non.pv.melt=melt(data = A_non.pv,measure.vars = c("ppv","npv"), variable.name = "type")

pdf(file = 'A_non.PPV-vs-NPV.pdf',width = 4,height = 3)

ggplot(A_non.pv.melt,aes(threshold,value,group=type))+geom_line()+geom_point()+
  #geom_text(aes(x=threshold,y=value-0.1,label=value),size=3)+
  xlab('cutoff of %ddcfDNA')+ylab('')+
  theme(axis.title = element_text(face="bold",size = 10))+
  annotate(geom = "text",x=0.16,y=0.9,label=paste0("PPV"))+
  annotate(geom = "text",x=0.16,y=0.23,label=paste0("NPV"))+
  
  annotate(geom = "text",x=0.0128,y=0.33,label=paste0("*"),size=15)+
  annotate(geom = "text",x=0.0128,y=0.85,label=paste0("*"),size=10)+
  annotate(geom = "text",x=0.03,y=0.9,label=paste0("85%"),size=5)+
  annotate(geom = "text",x=0.01,y=0.42,label=paste0("33%"),size=5)+
  
  #theme_bw()+
  
  theme(panel.background = element_blank(),panel.grid = element_blank(),axis.line = element_line(size = 1),
        axis.text =element_text(face='bold',size = 10))

dev.off()
