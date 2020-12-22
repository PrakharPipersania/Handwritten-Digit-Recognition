# Handwritten Digit Recognition
## Introduction
This project was implemented in R and executed by applying KNN algorithm with recognition accuracy of around 90-95%. The aim of this project is to implement a classification algorithm to recognize handwritten digits (0‐9). The desired results have been obtained by training the machine first using the Mnist_Train Data-set and later testing the obtained results using Mnist_Test Data-set , to recognise the handwritten digit.  

## Overview
The task of handwritten digit recognition, using a classifier, has great importance and use such as – online handwriting recognition on computer tablets, recognize zip codes on mail for postal mail sorting, processing bank check amounts, etc. There are different challenges faced while attempting to solve this problem. The handwritten digits are not always of the same size, thickness, or orientation and position relative to the margins. My goal was to implement a pattern classification method to recognize the handwritten digits provided in the MINIST data set of images of hand written digits (0‐9). Finally the uniqueness and variety in the handwriting of different individuals also influences the formation and appearance of the digits.  

<img src="https://github.com/PrakharPipersania/Handwritten-Digit-Recognition/blob/main/Images/Smaple-MNIST-Dataset.png" height="250" width="250">
->Sample digits used for training the classifier  
</br></br><img src="https://github.com/PrakharPipersania/Handwritten-Digit-Recognition/blob/main/Images/Print_Digit_Output.png" height="300" width="375">
->Given a (NxN) greyscale image Print_Digit Function can used to find the Image Label & Pixels

## Problem Statement
Given a set of greyscale isolated numerical images taken from MNIST database. 
The objectives are:- 
</br>->To recognize handwritten digits correctly. 
</br>->To improve the accuracy of detection. 
</br>->To develop a method which is independent of digit size and  writer style/ink independent. 

## KNN Algorithm
K-Nearest Neighbors is a simple classification algorithm that is surprisingly effective. However, to work well, it requires a training dataset: a set of data points where each point is labelled. If we set K to 1, then we can classify a new data point by looking at all the points in the training data set, and choosing the label of the point that is nearest to the new point. If we use higher values of K, then we look at the K nearest points, and choose the most frequent label amongst those points. 

## MNIST Dataset
The MNIST used here is in CSV format. The MNIST handwritten digit classification problem is a standard dataset used in computer vision and deep learning. Although, the dataset is effectively solved, it can be used as the basis for learning and practicing how to develop, evaluate, and use convolutional deep learning neural networks for image classification from scratch. This includes how to develop a robust test harness for estimating the performance of the model, how to explore improvements to the model, and how to save the model and later load it to make predictions on new data.

## Testing
The overall classification design of the MNIST digit database is shown in following algorithm. Algorithm: Classification of Digits Input: Isolated Numeral images from MNIST Database Output: Recognition of the Numerals Method: Structural features and KNN classifier.
</br>Step 1: Preprocessing the Image
</br>Step 2: Keep the label of each Array along with it.
</br>Step 3: Feed the classifier with the train_data set.
</br>Step 4: Repeat the steps from 1 to 3 for all images in the Test Database. 
</br>Step 5: Estimate the minimum distance between feature vector and vector stored in the library by using Euclidian distances.
</br>Step 6: Feed the classifier with test_data set.
</br>Step 7: Classify the input images into appropriate class label using minimum distance K-nearest neighbor classifier.
</br>Step 8: End. 
