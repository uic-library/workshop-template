#--------------------------------------------------------------------------
# Copyright, Digital Scholarship Hub. All rights reserved.
#--------------------------------------------------------------------------

# Run the following lines of code in console separately once
# and directly from the script area once  
2+2
2-2
2*2
2/2
3%%2

#------------------------------------------------------------------------

#Assigning values to variables
x <- 3
y <- 5
x+y

z <- x+y
z

#------------------------------------------------------------------------

# PACKAGES

install.packages(C("psych" , "dplyr" , "magrittr"))
library(psych)
library(dplyr)
library(magrittr)

#------------------------------------------------------------------------

# Vectors
x <- c(9, 8, 7, 6)
typeof(x)
length(x)
x[1]
x[3]

x <- c(2:5)
x
typeof(x)

x <- c(9, 8, 7, 6.32)
typeof(x)

x <- c(9, 8, "Hello")
typeof(x)
#------------------------------------------------------------------------

# Analyzing a Vector

x <- c(1,2,3,4)
class(x)
str(x)
length(x)
is.na(x)
is.null(x)


x <- c(TRUE,FALSE, TRUE,TRUE)
class(x)
str(x)
length(x)

x <- c(1,2,3,NA)
is.na(x)

x <- c()
is.null(x)

#------------------------------------------------------------------------

#Subsetting a vector
x <- c("A","B","C","D","E")
x[1]
x[4]
x[1:4]
x[c(1,4)]
x[-c(1,4)]

#------------------------------------------------------------------------

# Sorting a vector
sort(x)
order(x)
x[order(x)]

sort(x, decreasing = TRUE)
order(x, decreasing = TRUE)
x[order(x, decreasing = TRUE)]
#------------------------------------------------------------------------

#LOGICAL OPERATORS
x <- c(1:6)
x

x<3
x<=3

x>3
x>=3

x==2
x!=2

x <- c(T, F, T, F)
y <- c(T, T, F, F)
x&y
x|y
!x
#------------------------------------------------------------------------

# Data Frame
Numbers = c(1, 2, 3, 4) 
Alphabets = c("A", "B", "C", "D") 
Boolean = c(TRUE, FALSE, TRUE, TRUE)
Float = c(1.1, 2.2, 3.3, 4.4)
df = data.frame(Numbers, Alphabets, Boolean, Float)
df


#------------------------------------------------------------------------

# Analyzing a DataFrame

dim(df)
ncol(df)
nrow(df)
str(df)
names(df)
colnames(df)
rownames(df)

head(df,2)
tail(df,2)

#------------------------------------------------------------------------

# Subsetting a data frame
# Only columns
df[1]
df[c(1,4)]
df[-c(1,4)]
df[c(1:4)]

# Rows and columns
df[c(1,3) , c(2,4)]
df[c(1:3) , c(2:4)]

#------------------------------------------------------------------------

# UNIVARIATE ANALYSIS

# Factor

library(datasets)
data("mtcars")
mtcars$cyl <- as.factor(mtcars$cyl)
mtcars$vs <- as.factor(mtcars$vs)
mtcars$am <- as.factor(mtcars$am)
mtcars$gear <- as.factor(mtcars$gear)
mtcars$carb <- as.factor(mtcars$carb)
str(mtcars)

tab <- table(mtcars$am)
tab

prop.table(tab)

summary(mtcars[,c("cyl" , "vs" , "am" , "gear" , "carb")])

#-------------------------------------------

# Numeric

mean(mtcars$mpg)
median(mtcars$mpg)
min(mtcars$mpg)
max(mtcars$mpg)
range(mtcars$mpg)
quantile(mtcars$mpg)
summary(mtcars$mpg)

#------------------------------------------------------------------------

# BIVARIATE ANALYSIS

# Two Factors

data(esoph)
View(esoph)
str(esoph)

tab <- table(esoph$agegp, esoph$alcgp)
tab

prop_tab <- prop.table(tab)
prop_tab

addmargins(tab)
addmargins(prop_tab)
round(prop_tab,2)
round(addmargins(prop_tab),2)

prop_tab1 <- prop.table(tab, margin=1)
round(addmargins(prop_tab1),2)

prop_tab2 <- prop.table(tab, margin=2)
round(addmargins(prop_tab2),2)

#-------------------------------------------

# Two Numeric
data(mtcars)
View(mtcars)

cor(mtcars$mpg , mtcars$hp)
cor(mtcars$disp , mtcars$hp)

#-------------------------------------------

# One Factor & One Numeric
aggregate(mpg ~ cyl, data = mtcars, FUN = "mean")
aggregate(mpg ~ cyl, data = mtcars, FUN = "sd")

mtcars %>% group_by(cyl) %>% summarise(avg=mean(mpg) , median=median(mpg) , std=sd(mpg))

describeBy(mtcars$mpg , mtcars$cyl)

#------------------------------------------------------------------------

# Probability

#Random normal distribution
rnorm(mean=1000, sd=250, 100)

# Histogram
values <- rnorm(mean=1000, sd=250, 10000)
hist(values, main="Normal Distribution", col="steelblue", xlab="Mean=1000, SD=250", freq=F)
lines(density(values), col="yellow", lwd=3)

# Percentile given observed value
pnorm(65 , 50 , 10)

# Value given a percentile
qnorm(0.9 , 50 , 10)