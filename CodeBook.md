The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

Features are normalized and bounded within [-1,1].

###For each record it is provided:

- tBodyAcc.std...X - standard deviation of time domain of body acceleration signal by X axis
- tBodyAcc.std...Y - standard deviation of time domain of body acceleration signal by Y axis
- tBodyAcc.std...Z - standard deviation of time domain of body acceleration signal by Z axis
- tGravityAcc.std...X - standard deviation of time domain of gravity acceleration signal by X axis
- tGravityAcc.std...Y - standard deviation of time domain of gravity acceleration signal by Y axis
- tGravityAcc.std...Z - standard deviation of time domain of gravity acceleration signal by Z axis
- tBodyAccJerk.std...X - standard deviation of time domain of body jerk signal by X axis
- tBodyAccJerk.std...Y - standard deviation of time domain of body jerk signal by Y axis
- tBodyAccJerk.std...Z - standard deviation of time domain of body jerk signal by Z axis
- tBodyGyro.std...X - standard deviation of time domain of body orientation changes by X axis
- tBodyGyro.std...Y - standard deviation of time domain of body orientation changes by X axis
- tBodyGyro.std...Z - standard deviation of time domain of body orientation changes by X axis
- tBodyGyroJerk.std...X - standard deviation of time domain of body orientation changes jerk by X axis
- tBodyGyroJerk.std...Y - standard deviation of time domain of body orientation changes jerk by Y axis
- tBodyGyroJerk.std...Z - standard deviation of time domain of body orientation changes jerk by Z axis
- tBodyAccMag.std.. - standard deviation of magnitude of time domain of body acceleration signal
- tGravityAccMag.std.. - standard deviation of magnitude of time domain of gravity acceleration signal
- tBodyAccJerkMag.std.. - standard deviation of magnitude of time domain of body acceleration jerk signal
- tBodyGyroMag.std.. - standard deviation of magnitude of time domain of body orientation changes
- tBodyGyroJerkMag.std.. - standard deviation of magnitude of time domain of body orientation changes jerk
- fBodyAcc.std...X - standard deviation of frequency domain of body acceleration signal by X axis
- fBodyAcc.std...Y - standard deviation of frequency domain of body acceleration signal by Y axis
- fBodyAcc.std...Z - standard deviation of frequency domain of body acceleration signal by Z axis
- fBodyAccJerk.std...X - standard deviation of frequency domain of body acceleration jerk signal by X axis
- fBodyAccJerk.std...Y - standard deviation of frequency domain of body acceleration jerk signal by Y axis
- fBodyAccJerk.std...Z - standard deviation of frequency domain of body acceleration jerk signal by Z axis
- fBodyGyro.std...X - standard deviation of frequency domain of body orientation changes by X axis
- fBodyGyro.std...Y - standard deviation of frequency domain of body orientation changes by X axis
- fBodyGyro.std...Z - standard deviation of frequency domain of body orientation changes by X axis
- fBodyAccMag.std.. - standard deviation of magnitude of frequency domain of body acceleration signal
- fBodyBodyAccJerkMag.std.. - standard deviation of magnitude of frequency domain of body acceleration jerk signal
- fBodyBodyGyroMag.std.. - standard deviation of magnitude of frequency domain of body orientation changes
- fBodyBodyGyroJerkMag.std.. - standard deviation of magnitude of frequency domain of body orientation changes jerk
- tBodyAcc.mean...X - average value of time domain of body acceleration signal by X axis
- tBodyAcc.mean...Y - average value of time domain of body acceleration signal by Y axis
- tBodyAcc.mean...Z - average value of time domain of body acceleration signal by Z axis
- tGravityAcc.mean...X - average value of time domain of gravity acceleration signal by X axis
- tGravityAcc.mean...Y - average value of time domain of gravity acceleration signal by Y axis
- tGravityAcc.mean...Z - average value of time domain of gravity acceleration signal by Z axis
- tBodyAccJerk.mean...X - average value of time domain of body acceleration jerk signal by X axis
- tBodyAccJerk.mean...Y - average value of time domain of body acceleration jerk signal by Y axis
- tBodyAccJerk.mean...Z - average value of time domain of body acceleration jerk signal by Z axis
- tBodyGyro.mean...X - average value of time domain of body orientation changes by X axis
- tBodyGyro.mean...Y - average value of time domain of body orientation changes by Y axis
- tBodyGyro.mean...Z - average value of time domain of body orientation changes by Z axis
- tBodyGyroJerk.mean...X - average value of time domain of body orientation changes jerk by X axis
- tBodyGyroJerk.mean...Y - average value of time domain of body orientation changes jerk by Y axis
- tBodyGyroJerk.mean...Z - average value of time domain of body orientation changes jerk by Z axis
- tBodyAccMag.mean.. - average value of magnitude of time domain of body acceleration signal
- tGravityAccMag.mean.. - average value of magnitude of time domain of gravity acceleration signal
- tBodyAccJerkMag.mean.. - average value of magnitude of time domain of body acceleration jerk signal
- tBodyGyroMag.mean.. - average value of magnitude of time domain of body orientation changes
- tBodyGyroJerkMag.mean.. - average value of magnitude of time domain of body orientation changes jerk
- fBodyAcc.mean...X - average value of frequency domain of body acceleration signal by X axis
- fBodyAcc.mean...Y - average value of frequency domain of body acceleration signal by Y axis
- fBodyAcc.mean...Z - average value of frequency domain of body acceleration signal by Z axis
- fBodyAccJerk.mean...X - average value of frequency domain of body acceleration jerk signal by X axis
- fBodyAccJerk.mean...Y - average value of frequency domain of body acceleration jerk signal by Y axis
- fBodyAccJerk.mean...Z - average value of frequency domain of body acceleration jerk signal by Z axis
- fBodyGyro.mean...X - average value of frequency domain of body orientation changes by X axis
- fBodyGyro.mean...Y - average value of frequency domain of body orientation changes by Y axis
- fBodyGyro.mean...Z - average value of frequency domain of body orientation changes by Z axis
- fBodyAccMag.mean.. - average value of magnitude of frequency domain of body acceleration signal
- fBodyBodyAccJerkMag.mean.. - average value of magnitude of frequency domain of body acceleration jerk signal
- fBodyBodyGyroMag.mean.. - average value of magnitude of frequency domain of body orientation changes
- fBodyBodyGyroJerkMag.mean.. - average value of magnitude of frequency domain of body orientation changes jerk
- activity - activity performed while signals were measured
- subject - subject recorded measurements

###The data initially was given in several separate files: 
- common for all features file with list of all features available
- common for all activity_labels file with labels for activities performed
- 'subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.
- 'subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

##Data cleaning process steps:

1. Read x_train data into data frame. It gives us data set with 561 columns, each of them represents feature from feature file. Each row contains measurement for each feature
2. Then read features into vector and map feature names into dataset from 1st step. Now we have data set with appropriately named columns.
3. Add one column for each activity and subject by reading vectors from according files (y_train and subject_train).
4. Extracts only the columns with measurements on the mean and standard deviation for each measurement, so that only 68 columns left
5. Repeat steps 1-4 for test set and get data frame with the same columns, but different amount of rows and data in it
6. Combine test and train data in one dataset
7. In combined data set replace activities ids with readable names
8. Create data set with the average of each variable for each activity and each subject