# course_project
course project for getting and cleaning data coursera



---
title: "README"
author: "Damion Rosbrugh"
date: "July 26, 2015"
output: html_document
---


Raw data info:
==============

The raw data in this analysis can be found in the subfolder UCI HAR Dataset of getdata_projectfiles_UCI HAR Dataset. This data was collect from experiments which have been carried out with a group of 30 volunteers. Each person performed six activities wearing a smartphone on the waist. Data was collected from an embedded accelerometer and gyroscope, from which, 3-axial linear acceleration and 3-axial angular velocity was captured rate of 50Hz. The raw dataset was partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 


See 'README.txt' for more details. 

The raw dataset includes the following files:
=========================================


- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.



run_analysis.R description:
===============

  The tidy data set which results from running the script run_analysis.R is in wide format, and has 81 columns and 180 rows. Included are all variables from the raw data features data set whose names contained the string "mean" and the string "std" as as they are labeled in the string data in the features.txt data set. The tidy data set has The raw data was transformed as follows:

  Features.txt, activity_labels.txt, subject_test.txt, x_test.txt, y_test.txt, subject_train.txt, x_train.txt, y_train.txt were read into R as data frames. features.txt was converted to a character file and used to label the columns of x_test and x_train, while reading in the files.

  x_test and x_train data were combined using rbind, as were Subject_test and Subject_train, and y_test and y_train (x_bound, subject_bound, y_bound). The x_bound was column combined with subject bound and y_bound using the cbind function. 

  The subject column of this dataset is an ID variable for the 30 subjects that did the experiment that resulted in the data. The activity column contains values between 1 and 6 which correspond to the different activities done by each of the subjects. 
  
  The activities are labeled as follows as per activity_labels.txt:
===================================================================
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING

  After the data is read into R and the variables x_bound, y_bound, and subject_bound are combined, this script uses the regexpr() function to subset out the data that contains the strings "mean" and "std". This data is then grouped by the subject variable and then grouped by activity using the group_by() function. After grouping a dataframe called dataset is written to a text file, this corresponds to a cleaned data set. Once cleaned a function called filterdat is ran on each row of the dataset corresponding to a particular subject for a particular activity using a for loop. The end result is a tidy data set which is output to a variable called tidydat which has dimensions 180x81. Each column corresponds to a measurement variable which was subset from the features data set, and each row contains a measurement which is the average of multiple trials for each subject, for each activity in the data set. The variable tidydat is finally written to the file tidydata.txt using the write.table() function.
