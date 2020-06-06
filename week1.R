x<- c('a', 'b','c','c','d','a')
## subset the vector x using a numeric index##
x[1]
x[1:4]
##subset the vector using a logical index- alphabetical order##
x [x>'a']
##create a logical vector that tells me which element of x is greater than a##
u<- x>'a'
u
x[u]


#subsetting lists
#list with two elements: foo and bar
x<-list(foo=1:4, bar=0.6)
#extract the first element with []- returns a list
x[1]
#extract the first element with [[]]- returns just the sequence, not the list
x[[1]]
#extract with the name of the elements with $
x$bar
x[['bar']]
x['bar']
#the last one give a list

x<-list(a=list(10,12,14), b=c(3.14,2.81))
#to extract '14', the third element of list a, which is the first element of list x
x[[c(1,3)]]
x[[1]][[3]]
#to extract the first element of the second element by passing the integer vector (2,1)
x[[c(2,1)]]

#a matrix for 1 to 6 with 2 rows and 3 columns
x<-matrix(1:6, 2, 3)
print(x)
#the first row second column
x[1,2]
#the second row first column
x[2,1]
#indices can also be missing
#only the first row
x[1,]
#only the second column
x[,2]


x<-1:4
x
y<-2:3
y
x+y

x<-c(3,5,1,10,12,6)
x[x%in% 1:5]<-0
x

x<-c(3,5,1,10,12,6)
x[x>0]<-6
x

data<-read.csv('hw1_data.csv')
data[1:2,]
dim(data)
data[47,]
bad<-is.na(data[['Ozone']])
table(bad)
Ozone<-data[,'Ozone']
mean(Ozone[!bad])
data['Ozone'>31,]
data1<-data[complete.cases(data$Ozone,data$Temp),]
data2<-data1[data1$Ozone>31& data1$Temp>90,]
mean(data2$Solar.R)

mean(data[data$Month==6,]$Temp)

max(data1[data1$Month==5,]$Ozone)

x<4L
class(x)

x<-1:4
y<-2
print(x+y)

x<-c(17,14,4,5,13,12,10)
x[x>10]==4