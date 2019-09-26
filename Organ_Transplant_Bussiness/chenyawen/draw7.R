setwd("/data/project/tmp/chenyawen/chenyawenchange/")
library(pROC)
library(readxl)
library(ggplot2)
library(reshape2)
library(plotly)
library(RColorBrewer)

#boxplot AT
dataAT_non.box=read_excel('/data/project/tmp/chenyawen/chenyawen.xlsx',sheet=3)
pdf(file = 'dataAT_non.boxplot.pdf',width = 4,height = 5)
ggplot(dataAT_non.box,aes(type,log10(concentration*100)))+
  ylab('ddcfDNA% (log10)')+theme(axis.title = element_text(size = 10,face = "bold", vjust = 0.5, hjust = 0.5))+xlab('')+geom_boxplot()+
  geom_jitter(width=0.2)+
  
  stat_boxplot(geom = "errorbar",width=0.5)+
  
  #annotate('segment',x=0.8,xend=1.2,y=0.0934,yend=0.0934,col='black')+ 
 # annotate('segment',x=0.8,xend=1.2,y=-0.55,yend=-0.55,col='black')+ 
 # annotate('segment',x=1.8,xend=2.2,y=1.4798,yend=1.4798,col='black')+ 
 # annotate('segment',x=1.8,xend=2.2,y=-0.6575,yend=-0.6575,col='black')+
  theme(panel.background = element_blank(),panel.grid = element_blank(),
        axis.line = element_line(size=1),
        axis.text = element_text(size = 10, color = "black", face = "bold", vjust = 0.5, hjust = 0.5, angle = 0))


dev.off()

#boxplot AB
dataAB_non.box=read_excel('/data/project/tmp/chenyawen/chenyawen.xlsx',sheet=7)
pdf(file = 'dataAB_non.boxplot.pdf',width = 4,height = 5)
ggplot(dataAB_non.box,aes(AB,log10(concentration*100)))+
  ylab('ddcfDNA% (log10)')+theme(axis.title = element_text(size = 10,face = "bold", vjust = 0.5, hjust = 0.5))+xlab('')+geom_boxplot()+
  geom_jitter(width=0.2)+
  
  stat_boxplot(geom = "errorbar",width=0.3)+
  
 # annotate('segment',x=0.8,xend=1.2,y=0.0934,yend=0.0934,col='black')+ 
 # annotate('segment',x=0.8,xend=1.2,y=-0.55,yend=-0.55,col='black')+ 
 # annotate('segment',x=1.8,xend=2.2,y=1.4798,yend=1.4798,col='black')+ 
 # annotate('segment',x=1.8,xend=2.2,y=-0.6575,yend=-0.6575,col='black')+
  theme(panel.background = element_blank(),panel.grid = element_blank(),
        axis.line = element_line(size=1),
        axis.text = element_text(size = 10, color = "black", face = "bold", vjust = 0.5, hjust = 0.5, angle = 0))



dev.off()





