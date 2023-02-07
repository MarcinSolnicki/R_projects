pacman::p_load(pacman,tidyverse)
diamonds
plot(diamonds$cut)
#similar procces using pipies-------
diamonds%>%
  select(color)%>%
  plot()
## table barplot with sorting-----------
diamonds%>%
  select(clarity)%>%
  table()%>%
  sort(decreasing = T)%>%
  barplot()
# More options options----
diamonds%>%
  select(clarity)%>%
  table()%>%
  sort(decreasing = T)%>%
  barplot(
    main="Clarity of diamonds ",
    xlab="Ferquency",
    sub="(Source: ggplot2::diamonds)",
    ylab="clarity of diamonds",
    horiz=T,
    xlim= c(0,15000),
    border=NA, #no borders on bars
    col='#CD0000'
  )
#another plot----
plot(diamonds$color, diamonds$clarity)
# histograms------
?diamonds
diamonds
hist(diamonds$price,
     breaks=7,
     main="hisrogram price of diamonds",
     ylab="ferquency",
     borders=NA)
#boxplots----
boxplot(diamonds$price~diamonds$color,col="black",
        #horizontal = TRUE,
        #notch=T,
        )
## line charts----        
library(datasets)
uspop
plot(uspop,main='US population from 1790 to 1970',
     ylab="in milions")
abline(v=1930,col='lightgrey')
text(1930,30,"1930")
abline(v=1940,col='lightgrey')
text(1940,2,"1940")
## new datasets--------
EuStockMarkets
plot(EuStockMarkets)
ts.plot(EuStockMarkets)#plot for time series in one window
## cleaning environment----
rm(list=ls())
#data wrangling-----


