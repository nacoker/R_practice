library(ggplot2);library(readxl);library(gridExtra);library(RVAideMemoire);library(car);
pre.data<-read_excel("C:/Users/nc005/Desktop/t-test sample files.xlsx",sheet="missing-independent")
independent<-as.data.frame(pre.data)
mt.group<-ggplot(independent,aes(x=mt))+geom_histogram(aes(color=group,fill=group),position="identity",bins=15)+scale_fill_brewer(palette="Greys")+scale_color_brewer(palette="Greens")+theme_classic()
end.norm<-byf.shapiro(mt~group,data=independent)
lev.test<-leveneTest(independent$mt,independent$group,center=mean)
ind.t<-t.test(mt~group,data=independent,paired=FALSE,var.equal=TRUE)
mt.vio<-ggplot(independent,aes(x=group,y=mt,fill=group))+geom_violin()+geom_boxplot()+geom_point(position=position_jitter(width=0.15,height=0))+theme_classic()
mt.group
end.norm
lev.test
ind.t
mt.vio
