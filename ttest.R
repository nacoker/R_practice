#load necessary packages (ggplot,rmarkdown,readxl)
library('rmarkdown');library('ggplot2');library('readxl')
data<-read_excel("C:/Users/nc005/Desktop/ttest.xlsx",sheet="missing-dependent")
ttest.frame<-as.data.frame(data)
ggplot(ttest.frame,aes(ttest.frame$`1RM Pre`))+geom_histogram(binwidth=10)+theme_classic() #takes data of interest and generates histogram, adding classic theme
