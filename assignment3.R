#################
## assignment3 ##
#################

head(mtcars)

bad<-kmeans(mtcars, center=2)

plot(mtcars$mpg, mtcars$hp, col=bad$cluster, pch=16, cex=2, xlab="MPG", ylap="Horsepower")

########

install.packages("klaR")
install.packages("caret")
install.packages("class")
install.packages("e1071")


library("klaR")
library("caret")
library("class")
library("e1071")

#predicit 5th column
classifier<-naiveBayes(iris[,1:4], iris[,5])
table(predict(classifier,iris[,-5]), iris[,5])

#training
model = train(x,y,trControl=trainControl(method="cv",number=10))

predict(predict(model$finalModel,x))



######

install.packages('ElemStatLearn')
library("ElemStatLearn")

sub=sample(nrow(spam),floor(nrow(spam)*0.9))
train=spam[sub,]
test=spam[-sub,]

xTrain - train[,-58]
yTrain = train$spam

xTest = test[,-58]
yTest = test$spam

model = train(xTrain,yTrain,'nb',trControl=trainControl(method="cv", number=10))


prop.table(table(predict(model$finalModel,xTest)$class,yTest))



#################### any data #####################

car
model=lm(mpg~wt, data=mtcars)
predic=predict(model, data=mtcars)
plot(mpg~wt, data=mtcars)
par(new=T)
abline(model,col="red")



points(mtcars$wt,predic,col="blue",pch=16)


newsls <- data.frame(wt=seq(1,25,0.5))
newsls$pred <- predict(model, newsls)
points(newsls$wt, newsls$pred, col="green")
points(newsls$wt,newsls$pred,col="green",pch=6)





