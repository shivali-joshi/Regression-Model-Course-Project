#Assignment: They are particularly interested in the following two questions:
#“Is an automatic or manual transmission better for MPG”
#"Quantify the MPG difference between automatic and manual transmissions"

#Requirements:Take the mtcars data set and write up an analysis to answer their question using regression models and exploratory data analyses.

#Your report must be:
    
  #  Written as a PDF printout of a compiled (using knitr) R markdown document.
#Brief. Roughly the equivalent of 2 pages or less for the main text. Supporting figures in an appendix can be included up to 5 total pages including the 2 for the main report. The appendix can only include figures.
#Include a first paragraph executive summary.
#Upload your PDF by clicking the Upload button below the text box.

#Summary of dataset
summary(mtcars)
#Get data types
str(mtcars)
#Get data class
class(mtcars)
                    
#Graphics
#Scatterplot matrix of all variables
#Load lattice package
library(lattice)
#Scatterplot matrix of mpg, disp, hp, drat, wt, and qsec
splom(~mtcars[c(1, 3:7)], data = mtcars, groups = cyl, pscales = 0,
      auto.key = list(columns = 3, title = "Number of Cylinders"))
#Plot mpg against am
xyplot(mpg ~ am, data = mtcars, type = c("p", "r"))

#Barchart of categorical variables
#Gears - going haywire 
barchart(mtcars$gear, main = "Gears", xlab = "count")
#Carb
barchart(mtcars$carb, main = "Carburetors", xlab = "count")

#Correlation between mpg and other variables in mtcars
cor(mtcars, mtcars$mpg)

#Linear model 1 
regr <- lm(mpg ~ ., data = mtcars)
#Summary of regression
summary(regr)

#Linear model 2
regr2 <- lm(mpg ~ cyl + disp + hp + wt + am, data = mtcars)
#Summary of regression
summary(regr2)

#Graph of regression 2
xyplot(regr2, mtcars, type = c("p", "r"))
#Graph regression line 
plot(regr2)

#Question 1
Manual transmission better for mpg than automatic. 
#Question 2
In the second model, manual increases mpg by 1.55 more.

#2
#Residuals -  do MPG on y and indep. on x for every x. slide 1 of 3 residuals ggplot2.

#3
#Do horizontal residual plots
#Code for horizontal plot line 136 part 2 of 3
#Code for vertical plot line 134 part 2 of 3 
#DO SCATTERPLOTS FOR BOTH

#Test for heteroscketasticity - heterosckdastic if residuals in "funnel-shape" 

install.packages("rmarkdown")
library(markdown)
