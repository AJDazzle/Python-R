# matrix
m<-matrix(20:31,nrow=1,ncol=12)
m
m<-matrix(20:31,nrow=2,ncol=6)
m
m<-matrix(20:31,nrow=3,ncol=4)
m
# slicing and indexing
m<-1:10
m
dim(m)<-c(2,5)
m
dim(m)<-c(5,2)
m
x<-1:3
y<-10:12
#column bind and row bind
rbind(x,y)
cbind(x,y)
# using list and factor
x<-list(1,"a",TRUE,1+4i)
x<-factor(c("yes","yes","no","yes","no"))
x
table(x)
#to get the numerical value of level
unclass(x)
x<-factor(c("yes","yes","no1"),levels=c("yes","no"))
x
y<-(c("m","s","xl","l","s","xs"))
y<-factor(c("m","s","xl","l","s","xs"),levels=c("xs","s","m","l","xl"))
y
unclass(y)
# to find NA
x<-c(8,4,Na,7)
is.na(x)
#To find NaN
x<-c(8,4,NaN,7)
is.nan(x)
#Not numeric values is also NA
#dataframe
x<-data.frame(foo=1:4,bar=c(T,T,F,T))
x
nrow(x)
ncol(x)
#create avector of 5 values namely name, student no,student regno,dept,year of study,cgpa.
#and matrices
#dimnames
