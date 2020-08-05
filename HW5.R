#Create the following: we want to plot the observations from 1958 to 1974 as green filled squares 
# and the observations from 1981 to 2002 as red filled circles.
Veg <- read.table(file="Vegetation2.txt",header =TRUE)


Veg$Time2 <- Veg$Time
Veg$Time2 [Veg$Time > 1957 & Veg$Time < 1975] <- 3
Veg$Time2 [Veg$Time > 1980 & Veg$Time < 2003] <- 2
plot(x = Veg$BARESOIL, y = Veg$R,
     xlab = "Exposed soil",
     ylab = "Species richness", main = "Scatter plot",
      col = Veg$Time2, pch = 6)

#Create the following: we want to plot BARESOIL against species richness using a large filled 
#dot for observations made in 2002 and a smaller filled dot for all other observations.

Veg$Time2 <- Veg$Time
Veg$Time2 [Veg$Time > 1957 ==  ] <- 3
plot(x = Veg$BARESOIL, y = Veg$R,
     xlab = "Exposed soil",
     ylab = "Species richness", main = "Scatter plot",
     col = Veg$Time2, pch = 16)

#Make a default boxplot of Sepal. Width stratified by Species, from iris dataset. 
#Change the range of the y-axis so it starts at 2 and ends at 4.5.

iris$Myvar <- iris$Sepal.Width [iris$Sepal.Width >=2 & iris$Sepal.Width <=4.5]
boxplot(Myvar ~ Species, data = iris)

