Human Activity Recognition Using Smartphones Dataset
----------------------------------------------------
*The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed 
six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) 
on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity 
at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been 
randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows 
of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Steps
-----
1- Merges the training and the test sets to create one data set.
    First reads all activity, feature_label, train and test data
    Merge test data to train data to output All Data File

2- Extract only measurements on mean and standard deviation

3- Extract just the columns that contain Mean/mean and std, along with subject and activity
  get the Activity adn subject data sets and grep only data contains mea/ std
  label all data with subjects
  filter mean and std

    Use descriptive activities names for activity measurements

Replaced values in activity column with string containing activity names

    Appropriately labels the data set with descriptive variable names

Cleaned up variables names by removing punctuation, abbreviations and introducing underscore separators

    Create tidy data set with average of each variable, by activity, by subject

Created a tidy dataset following tidy principles.
