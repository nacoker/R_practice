#load necessary packages (ggplot,rmarkdown,readxl,gridExtra)
library('rmarkdown');library('ggplot2');library('readxl');library(gridExtra)
pre.data<-read_excel("C:/Users/ncoker/Desktop/t-test sample files.xlsx",sheet="missing-dependent") #opens excel file on path, entering it as a tibble
dependent<-as.data.frame(pre.data) #converts tibble to data frame
pre<-qplot(dependent$'max-pre',geom="histogram",binwidth=10)+xlab('1RM (kg)')+ylab('Frequency')+theme_classic()
post<-qplot(dependent$'max-post',geom="histogram",binwidth=10)+xlab('1RM (kg)')+ylab('Frequency')+theme_classic() #creates 2 histograms (pre and post), labels the x and y axes appropriately, and applies the classic theme
prepost<-grid.arrange(pre,post,nrow=1) #arranges both pre and post data in tiled layout, displays them