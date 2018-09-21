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
	    * "Activities" to be "Activity Name"
	    * "Acc" to be "Accelerometer"
	    * "Mag" to be "Magnitude"
	    * "Gyro" to be "Gyroscope"
	    * "t" to be "Time"
	    * "f" or "Freq" to be "Frequency"
	    * "tBody" to "Time Body"
	    
    
    
    adding Tiddy data
    =================
    Extracting Means and Standards data sets
    
Output Tiddy Data Variables
---------------------------
 [1] subjects                                                                   
 [2] Activity Name                                                              
 [3] TimeBodyAccelerometerelerometerelerometerMean()-X                          
 [4] TimeBodyAccelerometerelerometerelerometerMean()-Y                          
 [5] TimeBodyAccelerometerelerometerelerometerMean()-Z                          
 [6] TimeBodyAccelerometerelerometerelerometerSTD()-X                           
 [7] TimeBodyAccelerometerelerometerelerometerSTD()-Y                           
 [8] TimeBodyAccelerometerelerometerelerometerSTD()-Z                           
 [9] TimeGravityAccelerometerelerometerelerometerMean()-X                       
[10] TimeGravityAccelerometerelerometerelerometerMean()-Y                       
[11] TimeGravityAccelerometerelerometerelerometerMean()-Z                       
[12] TimeGravityAccelerometerelerometerelerometerSTD()-X                        
[13] TimeGravityAccelerometerelerometerelerometerSTD()-Y                        
[14] TimeGravityAccelerometerelerometerelerometerSTD()-Z                        
[15] TimeBodyAccelerometerelerometerelerometerJerkMean()-X                      
[16] TimeBodyAccelerometerelerometerelerometerJerkMean()-Y                      
[17] TimeBodyAccelerometerelerometerelerometerJerkMean()-Z                      
[18] TimeBodyAccelerometerelerometerelerometerJerkSTD()-X                       
[19] TimeBodyAccelerometerelerometerelerometerJerkSTD()-Y                       
[20] TimeBodyAccelerometerelerometerelerometerJerkSTD()-Z                       
[21] TimeBodyGyroscopescopeMean()-X                                             
[22] TimeBodyGyroscopescopeMean()-Y                                             
[23] TimeBodyGyroscopescopeMean()-Z                                             
[24] TimeBodyGyroscopescopeSTD()-X                                              
[25] TimeBodyGyroscopescopeSTD()-Y                                              
[26] TimeBodyGyroscopescopeSTD()-Z                                              
[27] TimeBodyGyroscopescopeJerkMean()-X                                         
[28] TimeBodyGyroscopescopeJerkMean()-Y                                         
[29] TimeBodyGyroscopescopeJerkMean()-Z                                         
[30] TimeBodyGyroscopescopeJerkSTD()-X                                          
[31] TimeBodyGyroscopescopeJerkSTD()-Y                                          
[32] TimeBodyGyroscopescopeJerkSTD()-Z                                          
[33] TimeBodyAccelerometerelerometerelerometerMagnitudenitudeMean()             
[34] TimeBodyAccelerometerelerometerelerometerMagnitudenitudeSTD()              
[35] TimeGravityAccelerometerelerometerelerometerMagnitudenitudeMean()          
[36] TimeGravityAccelerometerelerometerelerometerMagnitudenitudeSTD()           
[37] TimeBodyAccelerometerelerometerelerometerJerkMagnitudenitudeMean()         
[38] TimeBodyAccelerometerelerometerelerometerJerkMagnitudenitudeSTD()          
[39] TimeBodyGyroscopescopeMagnitudenitudeMean()                                
[40] TimeBodyGyroscopescopeMagnitudenitudeSTD()                                 
[41] TimeBodyGyroscopescopeJerkMagnitudenitudeMean()                            
[42] TimeBodyGyroscopescopeJerkMagnitudenitudeSTD()                             
[43] FrequencyBodyAccelerometerelerometerelerometerMean()-X                     
[44] FrequencyBodyAccelerometerelerometerelerometerMean()-Y                     
[45] FrequencyBodyAccelerometerelerometerelerometerMean()-Z                     
[46] FrequencyBodyAccelerometerelerometerelerometerSTD()-X                      
[47] FrequencyBodyAccelerometerelerometerelerometerSTD()-Y                      
[48] FrequencyBodyAccelerometerelerometerelerometerSTD()-Z                      
[49] FrequencyBodyAccelerometerelerometerelerometerMeanFreq()-X                 
[50] FrequencyBodyAccelerometerelerometerelerometerMeanFreq()-Y                 
[51] FrequencyBodyAccelerometerelerometerelerometerMeanFreq()-Z                 
[52] FrequencyBodyAccelerometerelerometerelerometerJerkMean()-X                 
[53] FrequencyBodyAccelerometerelerometerelerometerJerkMean()-Y                 
[54] FrequencyBodyAccelerometerelerometerelerometerJerkMean()-Z                 
[55] FrequencyBodyAccelerometerelerometerelerometerJerkSTD()-X                  
[56] FrequencyBodyAccelerometerelerometerelerometerJerkSTD()-Y                  
[57] FrequencyBodyAccelerometerelerometerelerometerJerkSTD()-Z                  
[58] FrequencyBodyAccelerometerelerometerelerometerJerkMeanFreq()-X             
[59] FrequencyBodyAccelerometerelerometerelerometerJerkMeanFreq()-Y             
[60] FrequencyBodyAccelerometerelerometerelerometerJerkMeanFreq()-Z             
[61] FrequencyBodyGyroscopescopeMean()-X                                        
[62] FrequencyBodyGyroscopescopeMean()-Y                                        
[63] FrequencyBodyGyroscopescopeMean()-Z                                        
[64] FrequencyBodyGyroscopescopeSTD()-X                                         
[65] FrequencyBodyGyroscopescopeSTD()-Y                                         
[66] FrequencyBodyGyroscopescopeSTD()-Z                                         
[67] FrequencyBodyGyroscopescopeMeanFreq()-X                                    
[68] FrequencyBodyGyroscopescopeMeanFreq()-Y                                    
[69] FrequencyBodyGyroscopescopeMeanFreq()-Z                                    
[70] FrequencyBodyAccelerometerelerometerelerometerMagnitudenitudeMean()        
[71] FrequencyBodyAccelerometerelerometerelerometerMagnitudenitudeSTD()         
[72] FrequencyBodyAccelerometerelerometerelerometerMagnitudenitudeMeanFreq()    
[73] FrequencyBodyAccelerometerelerometerelerometerJerkMagnitudenitudeMean()    
[74] FrequencyBodyAccelerometerelerometerelerometerJerkMagnitudenitudeSTD()     
[75] FrequencyBodyAccelerometerelerometerelerometerJerkMagnitudenitudeMeanFreq()
[76] FrequencyBodyGyroscopescopeMagnitudenitudeMean()                           
[77] FrequencyBodyGyroscopescopeMagnitudenitudeSTD()                            
[78] FrequencyBodyGyroscopescopeMagnitudenitudeMeanFreq()                       
[79] FrequencyBodyGyroscopescopeJerkMagnitudenitudeMean()                       
[80] FrequencyBodyGyroscopescopeJerkMagnitudenitudeSTD()                        
[81] FrequencyBodyGyroscopescopeJerkMagnitudenitudeMeanFreq()                   
[82] Angle(TimeBodyAccelerometerelerometerelerometerMean,Gravity)               
[83] Angle(TimeBodyAccelerometerelerometerelerometerJerkMean),GravityMean)      
[84] Angle(TimeBodyGyroscopescopeMean,GravityMean)                              
[85] Angle(TimeBodyGyroscopescopeJerkMean,GravityMean)                          
[86] Angle(X,GravityMean)                                                       
[87] Angle(Y,GravityMean)                                                       
[88] Angle(Z,GravityMean) 
