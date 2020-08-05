#Create in three ways vector with elements: 10, 9, 8, 7, 6.
x<-c(10, 9, 8, 7, 6)
y <- 10:6
Z <- seq(10,6,-1)

#Create a random vector of 20 positive numerics numbers.
random <- c(sample(100,20))

#Display as a cubes of numbers from 1 to 20 (use the operator: and ^).
cubes <- (1:20)^3
cubes

#In a given integer vector find the square of elements greater than 5. Do not enter a new variable.
x[x>5]^2

#Let a <- c(-1,0,5,33,2,-3,6,8) and b <- c(TRUE, FALSE, TRUE, FALSE,TRUE, FALSE,TRUE, FALSE), what will be the output for the R expression max(a[b])?
a <- c(-1,0,5,33,2,-3,6,8)
b <- c(TRUE, FALSE, TRUE, FALSE,TRUE, FALSE,TRUE, FALSE)
max(a[b])
# max(a[b]) = 6

#Write an R expression that will return the positions of 3 and 8 in the vector x <- c(1, 3, 6, 7, 3, 7, 8, 9, 3, 8, 8, 2, 3, 3)
x <- c(1, 3, 6, 7, 3, 7, 8, 9, 3, 8, 8, 2, 3, 3)
x[3:8][-(2:5)]

#Write some R code that will generate a vector with the following elements "ae" "bd" "cc" "db" "ea"
paste(letters[1:5] ,letters[5:1])

#Write some R code that will generate a vector with the following elements...
paste(letters[1:5] ,letters[5:1], 1:125)

#Create a character vector consisting of 10 symbols denoting sex (F, M). Then generate a vector of positive numbers that will store the pay of people from 1200zl to 10000zl. Then create a vector in which you will convert the women's salary on the euro.
bool <- c(sample(c('F','M'), 10 ,rep=TRUE))
salaries <- c(sample(1200:10000), 10 , rep=TRUE)
salaries[which(bool=='M')]/4.27

