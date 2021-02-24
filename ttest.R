#load necessary packages (ggplot2,readxl,gridExtra)
library('ggplot2');library('readxl');library(gridExtra);
pre.data<-read_excel("C:/Users/ncoker/Desktop/t-test sample files.xlsx",sheet="missing-dependent") #opens excel file on path, entering it as a tibble
dependent<-as.data.frame(pre.data) #converts tibble to data frame
pre<-qplot(dependent$'max-pre',geom="histogram",binwidth=10)+xlab('1RM (kg)')+ylab('Frequency')+theme_classic()
post<-qplot(dependent$'max-post',geom="histogram",binwidth=10)+xlab('1RM (kg)')+ylab('Frequency')+theme_classic() #creates 2 histograms (pre and post), labels the x and y axes appropriately, and applies the classic theme
prepost<-grid.arrange(pre,post,nrow=1) #arranges both pre and post data in tiled layout, displays them
pre.norm<-shapiro.test(dependent$'max-pre')
post.norm<-shapiro.test(dependent$'max-post') #Performs Shapiro-Wilk test to assess normality of the data for both pre and post columns
result<-t.test(dependent$'max-pre',dependent$'max-post',data=my_data,alternative="less",var.equal=TRUE,paired=TRUE)#creates statistics table for a dependent t-test assuming paired samples, equal variance, and a one-tailed test assuming that the post value will be higher than the pre value

