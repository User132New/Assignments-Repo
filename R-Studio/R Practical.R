#1-a
tmp<-10:100
sum(tmp^3+4*tmp^2)

#1-b
tmp<-1:25
sum((2^tmp)/tmp+(3^tmp)/(tmp^2))

#2
vec=c(2.03,5.20,2.12,5.29,1.36,2.16,1.51,6.97,7.99,9.52)
mat=matrix(vec,2,5)
if(any((vec-1)>9)||matrix(vec,2,5)[2,1]<=6){
  cat("Condition satisfied--\n")
  mlist<-list(aa=vec,bb=mat+0.5)
  cat("--a list with",length(mlist),"members now exists.")
}

#3
num=as.integer(readline(prompt = "Enter a number to find factorial: "))
recr_fact<-function(num){
  if(num<=1){
    return(1)
  }else{
    return(num*recr_fact(num-1))
  }
}
if(num<0){
  print(paste(num,"have no fact"))
}else{
  print(paste(num,"factorial is",recr_fact(num)))
}

#4-a
vec<-c(1,3,2,42)
result<-rep(vec,each=10,time=2)
result<-sort(result,decreasing = TRUE)
result

#4-b
num=as.integer(readline(prompt = "Enter a number"))
sum=0
temp=num
while(temp>0){
digit=temp%%10
sum=sum+(digit^3)
temp=floor(temp/10)
}
#display the result
if(num==sum){
print(paste(num,"is an armstrong number"))
}else{
print(paste(num,"is not an armstrong number"))
}

#5
my_list <- list()
while (TRUE){
  num = (readline("Enter : "))
  if (num=="close"){
    break
  }else{
    my_list = c(my_list,num)
  }
}

for (element in my_list) {
  cat(element, "\n")
}


#6
emp<-data.frame(
  emp.ID=c(1:5),
  emp.Name=c("Kaphi","Khushi","Nitin","Rahul","Tirth"),
  emp.salary=c(1000,2000,3000,4000,5000),
  Join_date=c("2023-9-12","2023-8-13","2023-7-14","2023-6-15","2023-5-16"),
  stringsAsFactors = FALSE
)
print(emp)
emp1<-data.frame(emp.ID=6,
                 emp.Name="Nargis",
                 emp.salary=2000,
                 Join_date="2023-1-12")
emp<-rbind(emp,emp1)
emp

#7
x=c(2,6,8,1,7,4,9,3,0)
y=c(6,4,8,9,2,5,7,6,1)
mat1<-matrix(data=x,nrow = 3,ncol = 3,byrow = FALSE)
mat1
mat2<-matrix(data=y,nrow = 3,ncol = 3,byrow = FALSE)
mat2
result=mat1*mat2
result
solve(mat1)

#8
mat<-matrix(1:9,nrow=3,ncol=3)
print(mat)
#Create the loop with r and c to iterate over the matrix
for(r in 1:nrow(mat)){
  for(c in 1:ncol(mat)){
    print(paste("Row",r,"and column",c,"have values of",mat[r,c]))
  }
}

#9
Student<-data.frame (
  stu.roll=c(1:5),
  stu.Name=c("Kaphi","Khushi","Nitin","Rahul","Tirth"),
  stu.Marks=c(90,80,70,98,45)
)
print(Student)
Student[Student$stu.Marks>80,]  

#10-a Normal
# 10 draws from the standard 0-1 normal distribution
rnorm(n=10)
# 10 draws from the 100-20 distribution
rnorm(n=10, mean=100, sd=20)
randNorm10 <- rnorm(10)
randNorm10
dnorm(randNorm10)
dnorm(c(-1, 0, 1))

# Generate the normal variables
randNorm <- rnorm(30000)
# Calcualte their distributions
randDensity <- dnorm(randNorm)
library(ggplot2)
ggplot(data.frame(x=randNorm, y=randDensity)) + aes(x=x, y=y) +geom_point() + labs(x="Random Normal Variables", y="Density")

#10-b Binomial
rbinom(n=1, size=10, prob=.4)
rbinom(n=1, size=10, prob=.4)
rbinom(n=5, size=10, prob=.4)
rbinom(n=10, size=10, prob=.4)
rbinom(n=1, size=1, prob=.4)
rbinom(n=5, size=1, prob=.4)
rbinom(n=10, size=1, prob=.4)
binomData <- data.frame(Successes=rbinom(n=10000, size=10, prob=.3))
ggplot(binomData, aes(x=Successes)) + geom_histogram(binwidth=1)

#11
pois1<-rpois(n=10000,lambda = 1)
pois2<-rpois(n=10000,lambda = 2)
pois5<-rpois(n=10000,lambda = 5)
pois10<-rpois(n=10000,lambda = 10)
pois20<-rpois(n=10000,lambda = 20)
pois<-data.frame(Lambda.1=pois1,Lambda.2=pois2,Lambda.5=pois5,Lambda.10=pois10,Lambda.20=pois20)
library(reshape2)
pois <- melt(data=pois, variable.name="Lambda", value.name="x")
library(stringr)
pois$Lambda<-as.factor(as.numeric(str_extract(string=pois$Lambda,pattern="\\d+")))
head(pois)
tail(pois)
library(ggplot2)
ggplot(pois,aes(x=x))+geom_histogram(binwidth = 1) +facet_wrap(~Lambda)+ggtitle("Probability Mass Function")
  
#12
data(father.son,package = 'UsingR')
library(ggplot2)
head(father.son)
ggplot(father.son,aes(x=fheight,y=sheight))+geom_smooth(method = "lm")+labs(x="Father",y="Sons")
heightsLM<-lm(sheight~fheight,data=father.son)
heightsLM
summary(heightsLM)

#13
m<-data.frame(size=c(0.4,0.6,0.3,0.7,0.5,0.2,0.1,0.9,0.3),
              weight=c(0.9,1.8,2.4,3.5,3.9,4.4,5.1,5.6,6.3),
              tail=c(0.7,1.3,0.7,2.0,3.6,3.0,2.9,3.9,4.0))
m
plot(m)
multiple.regression=lm(size~weight+tail,data=m)
summary(multiple.regression) 

#14
range=c(1:10)
admitted=c(0,0,0,0,1,1,1,1,1,1)
df=data.frame(student=range,admission=admitted)
result=glm(admission~student,df,family=binomial(link='logit'))
result
ggplot(result, aes(x=student, y=admission))+geom_line()
