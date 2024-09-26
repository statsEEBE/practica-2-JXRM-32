# Codigo para problema 1
# Mirant les dades determinem el coefiient de determinacio Rsq
# i calculem el coeficient de correlació
Rsq <- 0.1923
Coef_Cor2 <- sqrt(Rsq)

# Mirant les dades construim y = m*x + b i calculem y de 647.1
m <- 0.06576
b <- 11.79755
m*647.1+b
ypred <- predict(m,b, data.frame(x=x))
