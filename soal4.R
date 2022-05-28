library("ggpubr")

my_data <- read.delim("D:/onewayanova.txt",
                 header=TRUE)

ggboxplot(my_data, x = "Group", y = "Length",
          color = "Group", palette = c("#00AFBB", "#E7B800", "#FC4E07"),
          order = c("1", "2", "3"),
          ylab = "Length", xlab = "Grup")

model1 <- aov(Length~factor(Group), data=my_data)
summary(model1)

tukey.test <- TukeyHSD(model1)
plot(tukey.test)