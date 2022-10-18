

mydata=read.csv("D:/data.csv",header=TRUE,sep=",")
names(mydata)
names(mydata)[2]="new"
mydata=edit(mydata)
mydata$gender =factor(mydata$gender,
                      levels=c(1,2),
                      labels=c("male","female"))
mydata$gender =factor(mydata$gender,
                      labels=c(1,2),
                      levels=c("male","female"),
                      )
str(mydata)
summary(mydata)
s=mydata$new
sd(s)
install.packages("dplyr")
library(dplyr)

install.packages("matrixStats")
library(matrixStats)
mydata=edit(mydata)
mydata$score=rowSds(as.matrix(mydata[,c(2,3)]))
mydata$score
sample_n(mydata,3)
mydata2=select(mydata,Loan)
remove=na.omit(mydata)#na jekhanease remove kore dibe

colSums(is.na(mydata))#koita missing valuease
which(is.na(mydata$intwerest_rate))#kotono rowteh missing value ase

mydata%>% summarise_if(is.numeric,sd)

#standard deviation sd
