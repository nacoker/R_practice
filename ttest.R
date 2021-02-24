#load necessary packages (ggplot,readxl,gridExtra)
library(ggplot2);library(readxl);library(gridExtra)
pre.data<-read_excel("C:/Users/ncoker/Desktop/t-test sample files.xlsx",sheet="missing-dependent") #opens excel file on path, entering it as a tibble
dependent<-as.data.frame(pre.data) #converts tibble to data frame
pre<-pre+labs(title="Pre-training 1RM",x="One-repetition maximum (kg)",y="Frequency")+theme_classic()
post<-post+labs(title="Post-training 1RM",x="One-repetition maximum (kg)",y="Frequency")+theme_classic() #creates 2 histograms (pre and post), labels the x and y axes appropriately, and applies the classic theme
prepost<-grid.arrange(pre,post,nrow=1) #arranges both pre and post data in tiled layout, displays them
