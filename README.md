##


The run_analysis.R script works as follows:

1) read train data
	a) read in the feature names and set the columns names accordingly
	b) add a culumn with "activity" info
	c) add a column with "subject" info
2) read test data (same as above)
3) Merge train & test tabloes to one table
4) Remove all unecessary colums (keep only std & mean dta)
5) Group table by subjects & activies
6) Compute all columns averages (by subject & activity)
7) create a new colunm with activity lables
8) write resulting table in txt format 

OUTPUT Desctiption:
===================

table of 180 rows and 82 columns

Colums description:

col #1: 	integer - subject index (1-30)
col #2: 	integer  - activity index (1-6)
col #82:	char - activity label ("WALKING" "WALKING_UPSTAIRS" "WALKING_DOWNSTAIRS" "SITTING" ...)

col #3-81: 	num - mean or std measurment


  tBodyAcc-mean()-X               
  tBodyAcc-mean()-Y               
  tBodyAcc-mean()-Z               
  tBodyAcc-std()-X                
  tBodyAcc-std()-Y                
  tBodyAcc-std()-Z                
  tGravityAcc-mean()-X            
  tGravityAcc-mean()-Y            
  tGravityAcc-mean()-Z            
  tGravityAcc-std()-X             
  tGravityAcc-std()-Y             
  tGravityAcc-std()-Z             
  tBodyAccJerk-mean()-X           
  tBodyAccJerk-mean()-Y           
  tBodyAccJerk-mean()-Z           
  tBodyAccJerk-std()-X            
  tBodyAccJerk-std()-Y            
  tBodyAccJerk-std()-Z            
  tBodyGyro-mean()-X              
  tBodyGyro-mean()-Y              
  tBodyGyro-mean()-Z              
  tBodyGyro-std()-X               
  tBodyGyro-std()-Y               
  tBodyGyro-std()-Z               
  tBodyGyroJerk-mean()-X          
  tBodyGyroJerk-mean()-Y          
  tBodyGyroJerk-mean()-Z          
  tBodyGyroJerk-std()-X           
  tBodyGyroJerk-std()-Y           
  tBodyGyroJerk-std()-Z           
  tBodyAccMag-mean()              
  tBodyAccMag-std()               
  tGravityAccMag-mean()           
  tGravityAccMag-std()            
  tBodyAccJerkMag-mean()          
  tBodyAccJerkMag-std()           
  tBodyGyroMag-mean()              
  tBodyGyroMag-std()              
  tBodyGyroJerkMag-mean()         
  tBodyGyroJerkMag-std()          
  fBodyAcc-mean()-X               
  fBodyAcc-mean()-Y               
  fBodyAcc-mean()-Z               
  fBodyAcc-std()-X                
  fBodyAcc-std()-Y                
  fBodyAcc-std()-Z                
  fBodyAcc-meanFreq()-X           
  fBodyAcc-meanFreq()-Y           
  fBodyAcc-meanFreq()-Z           
  fBodyAccJerk-mean()-X          
  fBodyAccJerk-mean()-Y           
  fBodyAccJerk-mean()-Z           
  fBodyAccJerk-std()-X            
  fBodyAccJerk-std()-Y            
  fBodyAccJerk-std()-Z            
  fBodyAccJerk-meanFreq()-X       
  fBodyAccJerk-meanFreq()-Y       
  fBodyAccJerk-meanFreq()-Z       
  fBodyGyro-mean()-X              
  fBodyGyro-mean()-Y              
  fBodyGyro-mean()-Z              
  fBodyGyro-std()-X               
  fBodyGyro-std()-Y               
  fBodyGyro-std()-Z               
  fBodyGyro-meanFreq()-X          
  fBodyGyro-meanFreq()-Y          
  fBodyGyro-meanFreq()-Z          
  fBodyAccMag-mean()              
  fBodyAccMag-std()               
  fBodyAccMag-meanFreq()          
  fBodyBodyAccJerkMag-mean()      
  fBodyBodyAccJerkMag-std()       
  fBodyBodyAccJerkMag-meanFreq()  
  fBodyBodyGyroMag-mean()         
  fBodyBodyGyroMag-std()          
  fBodyBodyGyroMag-meanFreq()     
  fBodyBodyGyroJerkMag-mean()     
  fBodyBodyGyroJerkMag-std()      
  fBodyBodyGyroJerkMag-meanFreq()