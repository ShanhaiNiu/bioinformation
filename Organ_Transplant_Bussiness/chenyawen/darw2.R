setwd("/data/project/tmp/chenyawen/chenyawenchange/")
library(pROC)
library(readxl)
library(ggplot2)
library(reshape2)
library(plotly)
library(RColorBrewer)

#ROC T-non

dataT_non=read_excel('/data/project/tmp/chenyawen/chenyawen.xlsx',sheet=6)
dataT_non.df=data.frame(ddcfDNA=datT_non$concentration,type=dataT_non$type)
#ggplot(dataTTROC.df, aes(d = type, m = ddcfDNA)) + geom_roc()

dataT_non.roc=roc(dataT_non$type,dataT_non$concentration,plot=TRUE,print.auc=TRUE)

pdf(file = 'TMR-non.roc.pdf',width = 4,height = 4)
dataT_non.df=data.frame(FP=1-dataT_non.roc$specificities,TP=dataT_non.roc$sensitivities)
dataT_non.df.sort = dataT_non.df[order(dataT_non.df$TP,decreasing = F),]
ggplot(dataT_non.df.sort,aes(x=FP,y=TP))+
  xlab('False positive fraction')+ylab('True positive fraction')+
  theme(axis.title = element_text(size = 10,color = 'black',face = "bold", vjust = 0.5, hjust = 0.5))+
  #ggtitle('ROC')+
  geom_line()+
  annotate(geom = "text",x=0.35,y=0.8,label=paste0("Auc:",round(dataT_non.roc$auc,4)))+
  annotate(geom = "segment",x=0,xend=1,y=0,yend=1)+xlim(0,1)+ylim(0,1)+
  # theme_bw()+
  theme(panel.background = element_blank(),panel.grid = element_blank(),axis.line = element_line(size = 1),
        axis.text = element_text(size = 10, color = "black", face = "bold", vjust = 0.5, hjust = 0.5, angle = 0))

dev.off()

#============sensitivity vs sepcificity A-non

pdf(file = 'T-non_sensitivity-vs-specificity.pdf',width = 4,height = 3)

ggplot(dataT_non.df, aes(x=dataT_non.roc$thresholds)) + 
  geom_line(aes(y=dataT_non.roc$sensitivities))+
  geom_line(aes(y=dataT_non.roc$specificities))+
  xlab('cutoff of %ddcfDNA')+ylab('')+
  
  theme(axis.title = element_text(face="bold",size = 10))+
  annotate(geom = "text",x=0.15,y=0.9,label=paste0("sensitivity"),alpha = 1,size=5,color='black')+
  annotate(geom = "text",x=0.12,y=0.15,label=paste0("specificity"),size=5)+
  
  annotate(geom = "text",x=0.007,y=0.7,label=paste0("*"),size=7)+
  annotate(geom = "text",x=0.007,y=0.82,label=paste0("*"),size=7)+
  annotate(geom = "text",x=0.026,y=0.88,label=paste0("82%"),size=5)+
  annotate(geom = "text",x=0.026,y=0.7,label=paste0("71%"),size=5)+
  
  #theme_bw()+
  theme(panel.background = element_blank(),panel.grid = element_blank(),axis.line = element_line(size = 1),
        axis.text =element_text(face='bold',size = 10))

dev.off()

#============PPV vs NPV A-non

T_non.pv=data.frame()
for(th in dataT_non.roc$thresholds)
{
  #print(th)
  pvth=coords(dataT_non.roc,th,"threshold",ret=c("ppv","npv"))
  pvth=c(pvth,th)
  T_non.pv=rbind(T_non.pv,pvth)
}
names(T_non.pv) = c("ppv","npv","threshold")
T_non.pv=T_non.pv[order(T_non.pv$threshold,decreasing = F),]
T_non.pv=T_non.pv[T_non.pv$threshold!='Inf',]
T_non.pv.melt=melt(data = T_non.pv,measure.vars = c("ppv","npv"), variable.name = "type")

pdf(file = 'T_non.PPV-vs-NPV.pdf',width = 4,height = 3)

ggplot(T_non.pv.melt,aes(threshold,value,group=type))+geom_line()+geom_point()+
  #geom_text(aes(x=threshold,y=value-0.1,label=value),size=3)+
  xlab('cutoff of %ddcfDNA')+ylab('')+
  theme(axis.title = element_text(face="bold",size = 10))+
  annotate(geom = "text",x=0.16,y=0.9,label=paste0("PPV"))+
  annotate(geom = "text",x=0.16,y=0.23,label=paste0("NPV"))+
  annotate(geom = "text",x=0.02,y=0.29,label=paste0("*"),size=10)+
  annotate(geom = "text",x=0.02,y=0.74,label=paste0("*"),size=10)+
  annotate(geom = "text",x=0.045,y=0.8,label=paste0("74%"),size=5)+
  annotate(geom = "text",x=0.045,y=0.38,label=paste0("29%"),size=5)+
  #theme_bw()+
  theme(panel.background = element_blank(),panel.grid = element_blank(),axis.line = element_line(size = 1),
        axis.text =element_text(face='bold',size = 10))

dev.off()
