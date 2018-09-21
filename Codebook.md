Human Activity Recognition Using Smartphones Dataset
----------------------------------------------------
* The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years.
* Each person performed six activities & wearing a smartphone (Samsung Galaxy S II) on the waist.
* Using its embedded accelerometer and gyroscope,we captured 3-axial linear acceleration and 3-axial angular velocity
at a constant rate of 50Hz.
* The experimentshave been video-recorded to label the data manually.
* The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.
* The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window).
* The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity.
* The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff
frequency was used. 
* From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Activities:
-----------
	[1] "WALKING"
	[2] "WALKING_UPSTAIRS"
	[3] "WALKING_DOWNSTAIRS"
	[4] "SITTING"
	[5] "STANDING"
	[6] "LAYING"

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
    1. Renaimng all_data dataset to be ALL data.
    2. from all mean & Standard dataset variables Replace:
	    "Activities"-> "Activity Name"
	    "Acc"->"Accelerometer"
	    "Mag"->"Magnitude"
	    "Gyro"->"Gyroscope"
	    "f"->"Frequency"
	    "t"->"Time"
    
    
    adding Tiddy data
    =================
    Extracting Means and Standards data sets
    
Output Tiddy Data Variables
---------------------------
    [1] ->  subjects
    [2] ->  activities
    [3] ->  tBodyAcc-mean()-X
    [4] ->  tBodyAcc-mean()-Y
    [5] ->  tBodyAcc-mean()-Z
    [6] ->  tBodyAcc-std()-X
    [7] ->  tBodyAcc-std()-Y
    [8] ->  tBodyAcc-std()-Z
    [9] ->  tGravityAcc-mean()-X
    [10] ->  tGravityAcc-mean()-Y
    [11] ->  tGravityAcc-mean()-Z
    [12] ->  tGravityAcc-std()-X
    [13] ->  tGravityAcc-std()-Y
    [14] ->  tGravityAcc-std()-Z
    [15] ->  tBodyAccJerk-mean()-X
    [16] ->  tBodyAccJerk-mean()-Y
    [17] ->  tBodyAccJerk-mean()-Z
    [18] ->  tBodyAccJerk-std()-X
    [19] ->  tBodyAccJerk-std()-Y
    [20] ->  tBodyAccJerk-std()-Z
    [21] ->  tBodyGyro-mean()-X
    [22] ->  tBodyGyro-mean()-Y
    [23] ->  tBodyGyro-mean()-Z
    [24] ->  tBodyGyro-std()-X
    [25] ->  tBodyGyro-std()-Y
    [26] ->  tBodyGyro-std()-Z
    [27] ->  tBodyGyroJerk-mean()-X
    [28] ->  tBodyGyroJerk-mean()-Y
    [29] ->  tBodyGyroJerk-mean()-Z
    [30] ->  tBodyGyroJerk-std()-X
    [31] ->  tBodyGyroJerk-std()-Y
    [32] ->  tBodyGyroJerk-std()-Z
    [33] ->  tBodyAccMag-mean()
    [34] ->  tBodyAccMag-std()
    [35] ->  tGravityAccMag-mean()
    [36] ->  tGravityAccMag-std()
    [37] ->  tBodyAccJerkMag-mean()
    [38] ->  tBodyAccJerkMag-std()
    [39] ->  tBodyGyroMag-mean()
    [40] ->  tBodyGyroMag-std()
    [41] ->  tBodyGyroJerkMag-mean()
    [42] ->  tBodyGyroJerkMag-std()
    [43] ->  fBodyAcc-mean()-X
    [44] ->  fBodyAcc-mean()-Y
    [45] ->  fBodyAcc-mean()-Z
    [46] ->  fBodyAcc-std()-X
    [47] ->  fBodyAcc-std()-Y
    [48] ->  fBodyAcc-std()-Z
    [49] ->  fBodyAcc-meanFreq()-X
    [50] ->  fBodyAcc-meanFreq()-Y
    [51] ->  fBodyAcc-meanFreq()-Z
    [52] ->  fBodyAccJerk-mean()-X
    [53] ->  fBodyAccJerk-mean()-Y
    [54] ->  fBodyAccJerk-mean()-Z
    [55] ->  fBodyAccJerk-std()-X
    [56] ->  fBodyAccJerk-std()-Y
    [57] ->  fBodyAccJerk-std()-Z
    [58] ->  fBodyAccJerk-meanFreq()-X
    [59] ->  fBodyAccJerk-meanFreq()-Y
    [60] ->  fBodyAccJerk-meanFreq()-Z
    [61] ->  fBodyGyro-mean()-X
    [62] ->  fBodyGyro-mean()-Y
    [63] ->  fBodyGyro-mean()-Z
    [64] ->  fBodyGyro-std()-X
    [65] ->  fBodyGyro-std()-Y
    [66] ->  fBodyGyro-std()-Z
    [67] ->  fBodyGyro-meanFreq()-X
    [68] ->  fBodyGyro-meanFreq()-Y
    [69] ->  fBodyGyro-meanFreq()-Z
    [70] ->  fBodyAccMag-mean()
    [71] ->  fBodyAccMag-std()
    [72] ->  fBodyAccMag-meanFreq()
    [73] ->  fBodyBodyAccJerkMag-mean()
    [74] ->  fBodyBodyAccJerkMag-std()
    [75] ->  fBodyBodyAccJerkMag-meanFreq()
    [76] ->  fBodyBodyGyroMag-mean()
    [77] ->  fBodyBodyGyroMag-std()
    [78] ->  fBodyBodyGyroMag-meanFreq()
    [79] ->  fBodyBodyGyroJerkMag-mean()
    [80] ->  fBodyBodyGyroJerkMag-std()
    [81] ->  fBodyBodyGyroJerkMag-meanFreq()
    [82] ->  angle(tBodyAccMean,gravity)
    [83] ->  angle(tBodyAccJerkMean),gravityMean)
    [84] ->  angle(tBodyGyroMean,gravityMean)
    [85] ->  angle(tBodyGyroJerkMean,gravityMean)
    [86] ->  angle(X,gravityMean)
    [87] ->  angle(Y,gravityMean)
    [88] ->  angle(Z,gravityMean)
