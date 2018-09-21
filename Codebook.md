Human Activity Recognition Using Smartphones Dataset
----------------------------------------------------
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years.
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
wearing a smartphone (Samsung Galaxy S II) on the waist.
Using its embedded accelerometer and gyroscope,we captured 3-axial linear acceleration and 3-axial angular velocity
at a constant rate of 50Hz.The experimentshave been video-recorded to label the data manually.
The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for 
generating the training data and 30% the test data.
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled
in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window).
The sensor acceleration signal, which has gravitational and body motion components, was separated using 
a Butterworth low-pass filter into body acceleration and gravity.
The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff
frequency was used. 
From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Script Variables:
-----------------
* features : List of all "Test & Train" variables
* activity_Labels : list of all Activities and activity code
* subject_test,Subject train :Colmn of volunteers VS test & train data sets 
* x_test:test data
* y_test: all Test dataset Activities code
* test_data: all test dataset including Activities and Subject data
* x_train: Train dataset.
* y_train: all train dataset Activities code
* train_data: all Train dataset including Activities and Subject data
* all_data: all test and train dataset
* meanstdSet_Col: mean & snandards Colmn numbers in All Dataset
* meanstdSet : Mean and standard Data set
    
    
Steps
-----
* Get the Datset URL.
* Set working directory.
* Check if the file does not exist ,start to download it from the above URL to the working directory.
* Extract the downloaded file.
* then start our tasks:

    Merges the training and the test sets to create one data set.
    -------------------------------------------------------------
    1. First reads all activity, feature_label, train and test data.
    2. Merge "Subject test ,y_test activities and x_test set" to get test_data Dataset
    3. Merge "Subject train ,y_train activities and x_train set" to get train_data dataset
    2. Merge test data to train data to output All Data File.
    
    Extraction only the measurements on the mean and standard deviation for each measurement.
    =========================================================================================
    1. Get the all data set headers "subject and activities and features" add it to the variable "meanstdSet_Col"
    2. Filter Columns that contain Mean and Standard "meanstdSet_Col" from the all_data set.
    3. Retrieve from all_data set only the columns "meanstdSet_Col" and the result will be "meanstdSet" dataset.
  
    Uses descriptive activity names to name the activities in the data set
    ========================================================================
    Replaced values in activity column with string containing activity names
    1. Replace Activity_ID of the ALL_Data to the equivalent activity name from the activity label table.
    2. Replace Activity_ID of the Mean&Standard dataset to the equivalent activity name from the activity label table.
    
    Appropriately labels the data set with descriptive variable names
    =================================================================
    1. Labeling All_data set : Header added in step 1
    2. Labeling Mean & Standard set : Header added in step 2
    3. Renaimng all_data dataset to be ALL data.
    
    
    adding Tiddy data
    =================
    Extracting Means and Standards data sets
