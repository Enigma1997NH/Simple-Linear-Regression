# read the dataset into R
#wc.at <- read.csv("path of dataset",header=T)

# load the package for doing graphical representation
install.packages("lattice")
library("lattice")
??lattice

View(wc_at)
# Exploratory data analysis
summary(wc_at)

# Graphical exploration
dotchart(wc_at$Waist)
dotchart(wc_at$Waist, main="Dot Plot of Waist Circumferences")

dotchart(wc_at$AT, main="Dot Plot of Adipose Tissue Areas")

boxplot(wc_at$Waist,col="dodgerblue4")

boxplot(wc_at$AT,col="red", horizontal = T)

#Scatter plot

attach(wc_at)

plot(Waist,AT,main = "scatter plot for SLR")


plot(wc_at$Waist,wc_at$AT, main="Scatter Plot", col="Dodgerblue4", 
     col.main="Dodgerblue4", col.lab="Dodgerblue4", xlab="Waist Ciscumference", 
     ylab="Adipose Tissue area", pch=20)  # plot(x,y)

?plot

attach(wc_at)



# Correlation coefficient

cor(Waist, AT)

#Build Linear regression
reg <- lm(AT~Waist, data=wc_at) # Y ~ X

summary(reg)

confint(reg,level=0.95)

predict(reg,interval="predict")

reg_log <- lm(AT ~ log(Waist))      # Regression using Logarithmic Transformation
summary(reg_log)
confint(reg_log, level=0.95)
predict(reg_log, interval="predict")



