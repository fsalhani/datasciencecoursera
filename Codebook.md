# Codebook

### Project

The work presented here is part of the course Getting and Cleaning Data from the John Hopkins University's Data Science Specialization for Coursera.

In this file, you will find a brief explanation of the data presented in this repository.

### Source

The tidy_data_set.txt file contains a summary of the data found in this link https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

This dataset was generated by the run_analysis.R script. It summarizes the raw data found in the files from the link that were copied to the getting_and_cleaning_data folder by subject and activity


### The data

The data is aggregated by subject (ranges from 1 to 30) and activity (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).

The other columns stand for the mean (mean()) and standard deviation (std()) values measured by accelerometers and gyroscopes in the X, Y and Z axis.

The final dataset contains the following columns:

- activity
- subject
- tBodyAcc
- tGravityAcc
- tBodyAccJerk
- tBodyGyro
- tBodyGyroJerk
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc
- fBodyAccJerk
- fBodyGyro
- fBodyAccMag
- fBodyBodyAccJerkMag
- fBodyBodyGyroMag
- fBodyBodyGyroJerkMag

### How the original data was obtained

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).
