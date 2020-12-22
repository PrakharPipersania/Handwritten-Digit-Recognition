#Importing Library
library(caret)
library(FNN)

#Importing Training & Testing Dataset
train_data=read.csv("Mnist_Train.csv")
test_data=read.csv("Mnist_Test.csv")

#Print Label & Digit Image
Print_Digit=function(data)
{
  n=floor(sqrt(length(data)-1))
  print(paste("Label:",data[[1]]))
  digit=matrix(data[2:length(data)],nrow=n,ncol=n,byrow=T)
  rownames(digit)=colnames(digit)=1:n
  print("Image:")
  print(digit)
}
#Print_Digit(test_data[1,])

#KNN using FNN
KNN_Classifier<-function(k,train,test,train_size,test_size)
{
  predict=knn(train[1:train_size,-1],test[1:test_size,-1],train[1:train_size,1],k)
  tab=table(pred=predict,true=test[1:test_size,1])
  confusionMatrix(tab)
}

#Custom KNN
accuracy=function(actual_digit,predicted_digit)
{
  len=length(actual_digit)
  correct=0
  for(i in 1:len)
    if(actual_digit[i]==predicted_digit[i])
      correct=correct+1
  cat("Accuracy: ",(correct/len),"\n")
}
KNN_Classifier_Custom=function(k,train,test,train_size,test_size)
{
  len=length(train)
  result=c()
  for(i in 1:test_size)
  {
    dist=c()
    for(j in 1:train_size)
      dist=c(dist,sqrt(sum((test[i,2:len]-train[j,2:len])**2)))
    closest_dist=sort(dist)[1:k]
    result=c(result,as.numeric(names(sort(table(train_data[which(dist %in% closest_dist),1]),decreasing=T)[1])))
  }
  accuracy(test[1:test_size,1],result)
  return (result)
}

#Execution
KNN_Classifier(5,train_data,test_data,5000,500)
KNN_Classifier_Custom(3,train_data,test_data,150,10)
