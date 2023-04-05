# Getting and Cleaning Data CodeBook

## Original Dataset

Here are the data for the project:
 https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  

A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

## Transformations

The R script called run_analysis.R that does the following. 

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Tidy Dataset

Contains:

- <int> "subject": the id (1..30) of the volunteer

- <fct> "activity": categorical, one of the six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) performed by the volunteer 

- <dbl> the mean of the sampled value for each one of the following:

- "tBodyAcc-mean()-X" 
- "tBodyAcc-mean()-Y" 
- "tBodyAcc-mean()-Z" 
- "tGravityAcc-mean()-X" 
- "tGravityAcc-mean()-Y" 
- "tGravityAcc-mean()-Z" 
- "tBodyAccJerk-mean()-X" 
- "tBodyAccJerk-mean()-Y" 
- "tBodyAccJerk-mean()-Z" 
- "tBodyGyro-mean()-X" 
- "tBodyGyro-mean()-Y" 
- "tBodyGyro-mean()-Z" 
- "tBodyGyroJerk-mean()-X" 
- "tBodyGyroJerk-mean()-Y" 
- "tBodyGyroJerk-mean()-Z" 
- "tBodyAccMag-mean()" 
- "tGravityAccMag-mean()" 
- "tBodyAccJerkMag-mean()" 
- "tBodyGyroMag-mean()" 
- "tBodyGyroJerkMag-mean()" 
- "fBodyAcc-mean()-X" 
- "fBodyAcc-mean()-Y" 
- "fBodyAcc-mean()-Z" 
- "fBodyAccJerk-mean()-X" 
- "fBodyAccJerk-mean()-Y" 
- "fBodyAccJerk-mean()-Z" 
- "fBodyGyro-mean()-X" 
- "fBodyGyro-mean()-Y" 
- "fBodyGyro-mean()-Z" 
- "fBodyAccMag-mean()" 
- "fBodyBodyAccJerkMag-mean()" 
- "fBodyBodyGyroMag-mean()" 
- "fBodyBodyGyroJerkMag-mean()" 
- "tBodyAcc-std()-X" 
- "tBodyAcc-std()-Y" 
- "tBodyAcc-std()-Z" 
- "tGravityAcc-std()-X" 
- "tGravityAcc-std()-Y" 
- "tGravityAcc-std()-Z" 
- "tBodyAccJerk-std()-X" 
- "tBodyAccJerk-std()-Y" 
- "tBodyAccJerk-std()-Z" 
- "tBodyGyro-std()-X" 
- "tBodyGyro-std()-Y" 
- "tBodyGyro-std()-Z" 
- "tBodyGyroJerk-std()-X" 
- "tBodyGyroJerk-std()-Y" 
- "tBodyGyroJerk-std()-Z" 
- "tBodyAccMag-std()" 
- "tGravityAccMag-std()" 
- "tBodyAccJerkMag-std()" 
- "tBodyGyroMag-std()" 
- "tBodyGyroJerkMag-std()" 
- "fBodyAcc-std()-X" 
- "fBodyAcc-std()-Y" 
- "fBodyAcc-std()-Z" 
- "fBodyAccJerk-std()-X" 
- "fBodyAccJerk-std()-Y" 
- "fBodyAccJerk-std()-Z" 
- "fBodyGyro-std()-X" 
- "fBodyGyro-std()-Y" 
- "fBodyGyro-std()-Z" 
- "fBodyAccMag-std()" 
- "fBodyBodyAccJerkMag-std()" 
- "fBodyBodyGyroMag-std()" 
- "fBodyBodyGyroJerkMag-std()"
