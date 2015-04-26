---
title: "Code Book"
author: "Claire Salloum"
date: "April 26, 2015"
output: html_document
---

###Data Summary

The run_analysis.R script file generates an output.txt file. The data in this document come from manipulations performed on data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Raw data can be downloaded here:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

A description of the raw data and original experiment can be found in the associated README.md file.

From the original data README file: Features are normalized and bounded within [-1,1].
Each feature vector is a row on the text file. With this in mind, the following summaries were calculated.

Feature variables including "mean" and "std" were selected for. Then, variables including "meanFreq" or "gravityMean" were excluded. This was because I chose to include only those variables which were a mean or standard deviation of the collected data. Finally, means for these variables for each subject and activity were calculated and stored in the output.txt file.

###List of the variable names in output.txt:

Descriptive variables:

1. "subject"                     
2. "activity"                   

Mean Time domain from Accelerometer:

3."tBodyAcc.mean...X"           
4."tBodyAcc.mean...Y"          
5."tBodyAcc.mean...Z"           
6."tGravityAcc.mean...X"       
7."tGravityAcc.mean...Y"        
8."tGravityAcc.mean...Z"       
9."tBodyAccJerk.mean...X"       
10."tBodyAccJerk.mean...Y"      
11."tBodyAccJerk.mean...Z"       

Mean Time domain from Gyroscope:

12."tBodyGyro.mean...X"         
13."tBodyGyro.mean...Y"          
14."tBodyGyro.mean...Z"         
15."tBodyGyroJerk.mean...X"      
16."tBodyGyroJerk.mean...Y"     
17."tBodyGyroJerk.mean...Z"      

Mean Time Domain Magnitudes:

18."tBodyAccMag.mean.."         
19."tGravityAccMag.mean.."       
20."tBodyAccJerkMag.mean.."     
21."tBodyGyroMag.mean.."         
22."tBodyGyroJerkMag.mean.."    

Mean Fast Fourier Transform applied to Accelerometer data:

23."fBodyAcc.mean...X"           
24."fBodyAcc.mean...Y"          
25."fBodyAcc.mean...Z"           
26."fBodyAccJerk.mean...X"      
27."fBodyAccJerk.mean...Y"       
28."fBodyAccJerk.mean...Z"      

Mean Fast Fourier Transform applied to Gyroscope data:

29."fBodyGyro.mean...X"          
30."fBodyGyro.mean...Y"         
31."fBodyGyro.mean...Z"          

Mean for FFT Magnitutes:

32."fBodyAccMag.mean.."         
33."fBodyBodyAccJerkMag.mean.."  
34."fBodyBodyGyroMag.mean.."    
35."fBodyBodyGyroJerkMag.mean.." 
36."angle.tBodyAccMean.gravity."

Standard Deviation Time domain from Accelerometer:

37."tBodyAcc.std...X"            
38."tBodyAcc.std...Y"           
39."tBodyAcc.std...Z"            
40."tGravityAcc.std...X"        
41."tGravityAcc.std...Y"         
42."tGravityAcc.std...Z"        
43."tBodyAccJerk.std...X"        
44."tBodyAccJerk.std...Y"       
45."tBodyAccJerk.std...Z"        

Standard Deviation Time domain from Gyroscope:

46."tBodyGyro.std...X"          
47."tBodyGyro.std...Y"           
48."tBodyGyro.std...Z"          
49."tBodyGyroJerk.std...X"       
50."tBodyGyroJerk.std...Y"      
51."tBodyGyroJerk.std...Z"       

Standard Deviation of Magnitute:

52."tBodyAccMag.std.."          
53."tGravityAccMag.std.."        
54."tBodyAccJerkMag.std.."      
55."tBodyGyroMag.std.."          
56."tBodyGyroJerkMag.std.."     

Standard Deviation Fast Fourier Transform for Accelerometer:

57."fBodyAcc.std...X"            
58."fBodyAcc.std...Y"           
59."fBodyAcc.std...Z"            
60."fBodyAccJerk.std...X"       
61."fBodyAccJerk.std...Y"        
62."fBodyAccJerk.std...Z"       

Standard Deviation Fast Fourier Transform for Gyroscope:

63."fBodyGyro.std...X"           
64."fBodyGyro.std...Y"          
65."fBodyGyro.std...Z"           

Standard Deviation for Fast Fourier Transform for Magnitudes:

67."fBodyAccMag.std.."          
68."fBodyBodyAccJerkMag.std.."   
69."fBodyBodyGyroMag.std.."     
70."fBodyBodyGyroJerkMag.std.." 
