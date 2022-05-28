data <- read.csv("D:/Studies/ITS/Semester 4 (7 Feb 2022 - )/Probstat (F)/responden_soal1.csv", header=TRUE, sep=";")
data

selisih <- c()

i = 1
while(i<10){
  selisih <- append(selisih, data$Y[i] - data$X[i])
  i = i+1
}

sd(selisih)

t.test(data, alternative='two.sided', mu=80)

cor.test(data$X, data$Y)