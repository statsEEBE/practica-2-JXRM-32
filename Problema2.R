#Codigo para problema 2
dades <- iris
# Primer apartat
y <- dades$Sepal.Length
x <- dades$Petal.Length
plot(x,y,pch=16,col='blue') # per veure si son directament proporcional
xmit <- mean(x) # mitja de Sepal.Length
ymit <- mean(y) # mitja de Petal.Length
# Treiem l'equuació de m i b fent minims quadrats
m <- sum((x-xmit)*(y-ymit))/sum((x-xmit)^2)
b <- ymit-m*xmit
# R té la opció de lm que ho fa directament
mib <- lm(y~x)
# Preveem totes les "y" de les "x" amb m i be que troba lm
ypred <- predict(mib, data.frame(x=x))
# Creem la recta de regressió lineal
lines(x,ypred)
# Coeficient de dterminació, com de precísa és la recta, va de 0 a 1
Rsq <- sum((ypred-ymit)^2)/sum((y-ymit)^2)
# També es pot fer amb la funció summary
summary(mib) # Res és el Multiple R-squared
# El coeficient de correlació és arrel de Rsq
Cor_Coef <- sqrt(Rsq)
Cor_Coef
