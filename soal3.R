library(BSDA)

data <- read.csv("D:/Studies/ITS/Semester 4 (7 Feb 2022 - )/Probstat (F)/responden_soal3.csv",
                 header=TRUE, sep=";")
data

plm(data$Bandung[1]~data$B)