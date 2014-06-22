The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

Features are normalized and bounded within [-1,1].

###For each record it is provided:

- tbodyaccstdx - standard deviation of time domain of body acceleration signal by X axis
- tbodyaccstdy - standard deviation of time domain of body acceleration signal by Y axis
- tbodyaccstdz - standard deviation of time domain of body acceleration signal by Z axis
- tgravityaccstdx - standard deviation of time domain of gravity acceleration signal by X axis
- tgravityaccstdy - standard deviation of time domain of gravity acceleration signal by Y axis
- tgravityaccstdz - standard deviation of time domain of gravity acceleration signal by Z axis
- tbodyaccjerkstdx - standard deviation of time domain of body jerk signal by X axis
- tbodyaccjerkstdy - standard deviation of time domain of body jerk signal by Y axis
- tbodyaccjerkstdz - standard deviation of time domain of body jerk signal by Z axis
- tbodygyrostdx - standard deviation of time domain of body orientation changes by X axis
- tbodygyrostdy - standard deviation of time domain of body orientation changes by X axis
- tbodygyrostdz - standard deviation of time domain of body orientation changes by X axis
- tbodygyrojerkstdx - standard deviation of time domain of body orientation changes jerk by X axis
- tbodygyrojerkstdy - standard deviation of time domain of body orientation changes jerk by Y axis
- tbodygyrojerkstdz - standard deviation of time domain of body orientation changes jerk by Z axis
- tbodyaccmagstd - standard deviation of magnitude of time domain of body acceleration signal
- tgravityaccmagstd - standard deviation of magnitude of time domain of gravity acceleration signal
- tbodyaccjerkmagstd - standard deviation of magnitude of time domain of body acceleration jerk signal
- tbodygyromagstd - standard deviation of magnitude of time domain of body orientation changes
- tbodygyrojerkmagstd - standard deviation of magnitude of time domain of body orientation changes jerk
- fbodyaccstdx - standard deviation of frequency domain of body acceleration signal by X axis
- fbodyaccstdy - standard deviation of frequency domain of body acceleration signal by Y axis
- fbodyaccstdz - standard deviation of frequency domain of body acceleration signal by Z axis
- fbodyaccjerkstdx - standard deviation of frequency domain of body acceleration jerk signal by X axis
- fbodyaccjerkstdy - standard deviation of frequency domain of body acceleration jerk signal by Y axis
- fbodyaccjerkstdz - standard deviation of frequency domain of body acceleration jerk signal by Z axis
- fbodygyrostdx - standard deviation of frequency domain of body orientation changes by X axis
- fbodygyrostdy - standard deviation of frequency domain of body orientation changes by X axis
- fbodygyrostdz - standard deviation of frequency domain of body orientation changes by X axis
- fbodyaccmagstd - standard deviation of magnitude of frequency domain of body acceleration signal
- fbodybodyaccjerkmagstd - standard deviation of magnitude of frequency domain of body acceleration jerk signal
- fbodybodygyromagstd - standard deviation of magnitude of frequency domain of body orientation changes
- fbodybodygyrojerkmagstd - standard deviation of magnitude of frequency domain of body orientation changes jerk
- tbodyaccmeanx - average value of time domain of body acceleration signal by X axis
- tbodyaccmeany - average value of time domain of body acceleration signal by Y axis
- tbodyaccmeanz - average value of time domain of body acceleration signal by Z axis
- tgravityaccmeanx - average value of time domain of gravity acceleration signal by X axis
- tgravityaccmeany - average value of time domain of gravity acceleration signal by Y axis
- tgravityaccmeanz - average value of time domain of gravity acceleration signal by Z axis
- tbodyaccjerkmeanx - average value of time domain of body acceleration jerk signal by X axis
- tbodyaccjerkmeany - average value of time domain of body acceleration jerk signal by Y axis
- tbodyaccjerkmeanz - average value of time domain of body acceleration jerk signal by Z axis
- tbodygyromeanx - average value of time domain of body orientation changes by X axis
- tbodygyromeany - average value of time domain of body orientation changes by Y axis
- tbodygyromeanz - average value of time domain of body orientation changes by Z axis
- tbodygyrojerkmeanx - average value of time domain of body orientation changes jerk by X axis
- tbodygyrojerkmeany - average value of time domain of body orientation changes jerk by Y axis
- tbodygyrojerkmeanz - average value of time domain of body orientation changes jerk by Z axis
- tbodyaccmagmean - average value of magnitude of time domain of body acceleration signal
- tgravityaccmagmean - average value of magnitude of time domain of gravity acceleration signal
- tbodyaccjerkmagmean - average value of magnitude of time domain of body acceleration jerk signal
- tbodygyromagmean - average value of magnitude of time domain of body orientation changes
- tbodygyrojerkmagmean - average value of magnitude of time domain of body orientation changes jerk
- fbodyaccmeanx - average value of frequency domain of body acceleration signal by X axis
- fbodyaccmeany - average value of frequency domain of body acceleration signal by Y axis
- fbodyaccmeanz - average value of frequency domain of body acceleration signal by Z axis
- fbodyaccjerkmeanx - average value of frequency domain of body acceleration jerk signal by X axis
- fbodyaccjerkmeany - average value of frequency domain of body acceleration jerk signal by Y axis
- fbodyaccjerkmeanz - average value of frequency domain of body acceleration jerk signal by Z axis
- fbodygyromeanx - average value of frequency domain of body orientation changes by X axis
- fbodygyromeany - average value of frequency domain of body orientation changes by Y axis
- fbodygyromeanz - average value of frequency domain of body orientation changes by Z axis
- fbodyaccmagmean - average value of magnitude of frequency domain of body acceleration signal
- fbodybodyaccjerkmagmean - average value of magnitude of frequency domain of body acceleration jerk signal
- fbodybodygyromagmean - average value of magnitude of frequency domain of body orientation changes
- fbodybodygyrojerkmagmean - average value of magnitude of frequency domain of body orientation changes jerk
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