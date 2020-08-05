#Create a vector of 100 natural numbers from the set {1,2,3,4}, then transform it into a factor by giving it the following labels ("red", "green", "blue", "yellow"). Check how many times each color repeats.
x <- rep(c(1,2,3,4),25)
factor <- factor(x)
levels(factor) <- c("red", "green", "blue", "yellow")
table(factor)

#Consider the iris data set in R. Write an R expression that will cut the Sepal.Length variable and create the following factor with five levels.
a <- cut(iris$Sepal.Length , 5)
factor.a <- factor(a)
table(factor.a)

#Consider again the iris data set. Write an R expression that will generate a two-way frequency table with two rows and three colums. The rows should relate to Sepal.length (less than 5: TRUE or FALSE) and columns to Species, with the following output:
table(iris$Sepal.Length < 5, iris$Species)

#Consider a vector x such that: x<-c(1,3,4,7,11,18,29). Write an R statement that will return a list x2 with components of value: x*2,x/2,sqrt(x) and names "x*2","x/2","sqrt(x)". Write an R statement that will return a vector: 2.000000 2.645751 3.316625
x<-c(1,3,4,7,11,18,29)
list.x <- list( "x*2"=x*2,"x/2"=x/2,"sqrt(x)"=sqrt(x) )
list.x[[3]][3:5]

#Consider two vectors: x=seq(1,43,along.with=Id) and y=seq(-20,0,along.with=Id). Create a data.frame df:
reps <- rep(c(1,2,3,4),c(3,3,3,3))
Id <- factor(reps)
Letter <- rep(c("a","b","c"),4)
x<-seq(1,43,along.with=Id)
y<-seq(-20,0,along.with=Id)
df<- data.frame(Id,Letter,x,y)

#With the dataset swiss, create a data frame of only the rows 1, 2, 3, 10, 11, 12 and 13, and only the variables Examination, Education and Infant.Mortality.
s<-swiss[1:13,3:6][-(4:9),-3]
dataframe <- data.frame(s)
dataframe
