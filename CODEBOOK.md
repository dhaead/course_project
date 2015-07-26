---
title: "CODEBOOK"
author: "Damion Rosbrugh"
date: "July 26, 2015"
output: html_document
---




- column  |   variable name   |   description
- ------- | ----------------- | -------------

- 1, Subject,                   Subject Id 
- 2, Activity,                  Activity performed by each subject  
- 3, tBodyAcc.mean X,          Time variable for the mean body accelerometer on the x axis 
- 4, tBodyAcc.mean Y,          Time variable for the mean body accelerometer on the y axis
- 5, tBodyAcc.mean Z,          Time variable for the mean body accelerometer on the z axis
- 6, tGravityAcc.mean X,        Time variable for the mean gravity accelerometer on the x axis
- 7, tGravityAcc.mean Y,        Time variable for the mean gravity accelerometer on the y axis
- 8, tGravityAcc.mean Z,        Time variable for the mean gravity accelerometer on the z axis
- 9, tBodyAccJerk.mean X,       Time variable for the mean body accelerometer jerk on the x axis
- 10, tBodyAccJerk.mean Y,      Time variable for the mean body accelerometer jerk on the y axis
- 11, tBodyAccJerk.mean Z,      Time variable for the mean body accelerometer jerk on the z axis
- 12, tBodyGyro.mean X,         Time variable for the mean body gyroscope on the x axis
- 13, tBodyGyro.mean Y,         Time variable for the mean body gyroscope on the y axis
- 14, tBodyGyro.mean Z,         Time variable for the mean body gyroscope on the z axis
- 15, tBodyGyroJerk.mean X,     Time variable for the mean body gyroscope jerk on the x axis
- 16, tBodyGyroJerk.mean Y,     Time variable for the mean body gyroscope jerk on the y axis
- 17, tBodyGyroJerk.mean Z,     Time variable for the mean body gyroscope jerk on the z axis
- 18, tBodyAccMag.mean,         Time variable for the mean body accelerometer magnitude
- 19, tGravityAccMag.mean,      Time variable for the mean gravity accelerometer magnitude 
- 20, tBodyAccJerkMag.mean,     Time variable for the mean body accelerometer jerk magnitude
- 21, tBodyGyroMag.mean,        Time variable for the mean body gyroscope magnitude
- 22, tBodyGyroJerkMag.mean,    Time variable for the mean body gyroscope jerk magnitude
- 23, fBodyAcc.mean X,          Fourier transform of the time variable for the mean body accelerometer x axis
- 24, fBodyAcc.mean Y,          Fourier transform of the time variable for the mean body accelerometer y axis
- 25, fBodyAcc.mean Z,          Fourier transform of the time variable for the mean body accelerometer z axis
- 26, fBodyAcc.meanFreq X,      Fourier transform of the time variable for the body accelerometer mean frequency x axis
- 27, fBodyAcc.meanFreq Y,      Fourier transform of the time variable for the body accelerometer mean frequency y axis
- 28, fBodyAcc.meanFreq Z,      Fourier transform of the time variable for the body accelerometer mean frequency z axis
- 29, fBodyAccJerk.mean X,      Fourier transform of the time variable for the  mean body accelerometer jerk x axis
- 30, fBodyAccJerk.mean Y,      Fourier transform of the time variable for the  mean body accelerometer jerk y axis
- 31, fBodyAccJerk.mean Z,      Fourier transform of the time variable for the  mean body accelerometer jerk z axis
- 32, fBodyAccJerk.meanFreq X,  Fourier transform of the time variable for the  mean body accelerometer frequency x axis
- 33, fBodyAccJerk.meanFreq Y,  Fourier transform of the time variable for the  mean body accelerometer frequency y axis
- 34, fBodyAccJerk.meanFreq Z,  Fourier transform of the time variable for the  mean body accelerometer frequency z axis
- 35, fBodyGyro.mean X,         Fourier transform of the time variable for the  mean body gyroscope x axis
- 36, fBodyGyro.mean Y,         Fourier transform of the time variable for the  mean body gyroscope y axis
- 37, fBodyGyro.mean Z,         Fourier transform of the time variable for the  mean body gyroscope z axis
- 38, fBodyGyro.meanFreq X,     Fourier transform of the time variable for the body gyroscope mean frequency x axis
- 39, fBodyGyro.meanFreq Y,     Fourier transform of the time variable for the body gyroscope mean frequency y axis
- 40, fBodyGyro.meanFreq Z,     Fourier transform of the time variable for the body gyroscope mean frequency z axis
- 41, fBodyAccMag.mean,         Fourier transform of the time variable for the body accelerometer mean magnitude
- 42, fBodyAccMag.meanFreq,     Fourier transform of the time variable for the body accelerometer mean frequency magnitude
- 43, fBodyBodyAccJerkMag.mean, Fourier transform of the time variable for the body accelerometer mean jerk magnitude
- 44, fBodyBodyAccJerkMag.meanFreq, Fourier transform of the time variable for the body accelerometer jerk magnitude mean frequency
- 45, fBodyBodyGyroMag.mean, Fourier transform of the time variable for the body body gyroscope mean
- 46, fBodyBodyGyroMag.meanFreq, Fourier transform of the time variable for the body body gyroscope mean frequency
- 47, fBodyBodyGyroJerkMag.mean, Fourier transform of the time variable for the body body gyroscope jerk mean
- 48, fBodyBodyGyroJerkMag.meanFreq, Fourier transform of the time variable for the body body gyroscope jerk mean frequency
- 49, tBodyAcc.std X, Time variable of the body accelerometer standard deviation x axis
- 50, tBodyAcc.std Y, Time variable of the body accelerometer standard deviation y axis
- 51, tBodyAcc.std Z, Time variable of the body accelerometer standard deviation z axis
- 52, tGravityAcc.std X, Time variable of the gravity accelerometer standard deviation x axis
- 53, tGravityAcc.std Y, Time variable of the gravity accelerometer standard deviation y axis
- 54, tGravityAcc.std Z, Time variable of the gravity accelerometer standard deviation z axis
- 55, tBodyAccJerk.std X, Time variable of the body accelerometer jerk standard deviation x axis
- 56, tBodyAccJerk.std Y, Time variable of the body accelerometer jerk standard deviation y axis
- 57, tBodyAccJerk.std Z, Time variable of the body accelerometer jerk standard deviation z axis
- 58, tBodyGyro.std X, Time variable of the body gyroscope standard deviation x axis
- 59, tBodyGyro.std Y, Time variable of the body gyroscope standard deviation y axis
- 60, tBodyGyro.std Z, Time variable of the body gyroscope standard deviation z axis
- 61, tBodyGyroJerk.std X, Time variable of the body gyroscope jerk standard deviation x axis
- 62, tBodyGyroJerk.std Y, Time variable of the body gyroscope jerk standard deviation y axis
- 63, tBodyGyroJerk.std Z, Time variable of the body gyroscope jerk standard deviation z axis
- 64, tBodyAccMag.std, Time variable of the body accelerometer standard deviation magnitude
- 65, tGravityAccMag.std, Time variable of the body accelerometer magnitude standard deviation 
- 66, tBodyAccJerkMag.std, Time variable of the body accelerometer jerk magnitude standard deviation
- 67, tBodyGyroMag.std, Time variable of the body gyroscope magnitude standard deviation
- 68, tBodyGyroJerkMag.std, Time variable of the body gyroscope jerk magnitude standard deviation
- 69, fBodyAcc.std X, Fourier transform of the Time variable of the body accelerometer standard deviation x axis 
- 70, fBodyAcc.std Y, Fourier transform of the Time variable of the body accelerometer standard deviation y axis
- 71, fBodyAcc.std Z, Fourier transform of the Time variable of the body accelerometer standard deviation z axis
- 72, fBodyAccJerk.std X, Fourier transform of the Time variable of the body accelerometer jerk standard deviation x axis
- 73, fBodyAccJerk.std Y, Fourier transform of the Time variable of the body accelerometer jerk standard deviation y axis
- 74, fBodyAccJerk.std Z, Fourier transform of the Time variable of the body accelerometer jerk standard deviation z axis
- 75, fBodyGyro.std X, Fourier transform of the Time variable of the body gyroscope standard deviation x axis
- 76, fBodyGyro.std Y, Fourier transform of the Time variable of the body gyroscope standard deviation y axis
- 77, fBodyGyro.std Z, Fourier transform of the Time variable of the body gyroscope standard deviation z axis
- 78, fBodyAccMag.std, Fourier transform of the Time variable of the body accelerometer jerk magnitude standard deviation
- 79, fBodyBodyAccJerkMag.std, Fourier transform of the Time variable of the body body accelerometer standard deviation
- 80, fBodyBodyGyroMag.std, Fourier transform of the Time variable of the body body gyroscope magnitude standard deviation 
- 81, fBodyBodyGyroJerkMag.std, Fourier transform of the Time variable of the body body gyroscope jerk magnitude standard deviation




