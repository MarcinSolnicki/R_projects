# Marcin Solnicki 122816
library(dplyr)
library(eurostat)
library(ggplot2)
nazwy<-eurostat::eu_countries
View(nazwy)
a<-eurostat::get_eurostat("prc_hicp_manr")
View(a)
a1<-a%>%
  filter(coicop=="CP00",geo%in%eu_countries$code,!geo=="UK",time>='2000-02-01'&time<'2022-09-30')
View(a1)

a2<-eurostat::label_eurostat(a1)
a2$geo[a2$geo == "Germany (until 1990 former territory of the FRG)"]<-"Germany"
ggplot(a2,aes(x=time,y=values,color=geo))+geom_smooth(alpha=0.3)
##cluster----
d1<-subset(a2,select=c("geo","time","values"))

my_mtx<-matrix(nrow=length(unique(d1$geo)),ncol=length(unique(d1$time)))
my_mtx
rownames(my_mtx)<-unique(d1$geo)
colnames(my_mtx)<-unique(d1$time)

for(i in rownames(my_mtx)){
  my_mtx[i,]<-as.matrix(select(filter(d1,d1$geo==i),values))
}
View(my_mtx)
distances<-dist(my_mtx,method="minkowski")
#distances
h<-hclust(distances,method = "complete")
hh<-plot(as.dendrogram(h))
h%>%rect.hclust(,k=4,border="red")
#rm(list = ls())
