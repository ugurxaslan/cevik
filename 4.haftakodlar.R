x<- matrix(1:4,2,2)
print(x)
y<- matrix(rep(10,4),2,2)
print(y)
x*y
x/y
x%*%y
x<-Sys.time
x
class(x)
p<- as.POSIXlt(x)
class(p)
names(unclass(p))
p$wday
p$yday
names(unclass(x))
unclass(x)
??unclass()
datestring<-c("January 10 2012 10:40","December 9,2011 9:10")
x<-strptime(datestring, "%B %d, %Y %H:%M")
class(x)
d1<-as.Date("2012-03-01")
d2<-as.Date("2012-02-28")
(td<-d1-d2)
class(td)
x<-as.POSIXct("2012-10-25 01:00:00")
y<-as.POSIXct("2012-10-25 06:00:00",tz="GMT")
(x-y)
x<-list(a=1:5,b=rnorm(10))
lapply(x,mean)
sapply(x,mean)
x<-list(a=matrix(1:4,2,2),b=matrix(1:8,4,2))
lapply(x,function(elt){elt[,1]})
liblary(datasets)
head(airquality)
s<-split(airquality,airquality$Month)
str(s)
sapply(s,function(x){
            colMeans(x[,c("Ozone","Solar.R","Wind")])
})
sapply(s,function(x){
  colMeans(x[,c("Ozone","Solar.R","Wind")],na.rm=TRUE)
})
x<-rnorm(9)
lev<-gl(3,3,labels=c("Ocak","Subat","Mart"))
grps<-split(x,lev)
grps
sapply(grps,function(x) sum(abs(x)))
grps
a<-
  jsonlite::fromJSON("https://raw.githubusercontent.com/CevikYazilimGelistirme-2324/Exercises/main/Week3/example_2.json")
sapply(a$quiz$maths,function(j)j$options[1])




