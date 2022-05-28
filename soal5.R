library(ggpubr)
library(multcompView)
library(ggplot2)

my_data <- read.csv("D:/GTL.csv")

str(my_data)

my_data$Glass <- factor(my_data$Glass)
my_data$Temp <- factor(my_data$Temp)
head(my_data)

qplot(Glass, Light, data=my_data)

ggboxplot(my_data, x = "Glass", y = "Light", color = "Temp",
          palette = c("#00AFBB", "#E7B800" , "#E7B800"))

res.aov2 <- aov(Light ~ Glass+Temp, data=my_data)
summary(res.aov2)

table(my_data$Glass, my_data$Temp)

res.tukey <- TukeyHSD(res.aov2)
res.tukey

multcompLetters4(res.aov2, res.tukey)