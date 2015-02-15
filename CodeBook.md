# CodeBook for UCI_HAR_tidy.txt
## Description
This dataset contains tidy data from  and experiment where recordings of 30 subjects performing activities of daily living (ADL) were taken while carrying a waist-mounted smartphone with embedded inertial sensors.	
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. [[Source]](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

## Columns
The UCI_HAR_tidy.txt file contains data with the average value of each variable of interest, for each of the 30 subjects and its activity. In total there are 180 rows. The first two columns identify the subject and the activity. The remaining 86 columns represent arithmetically averaged values for each subject and its activity. For details on how the initial values were created, please refer to the file features_info.txt which can be obtained from [this archive](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

1. Subject
  * Identifies the person from which the measurements were taken. A number between 1 and 30.
2. Activity
  * The activity that the subject was doing. This can contain one of 6 values as listed below, and that is why there are 180 rows in the dataset.
    * LAYING
	* SITTING
	* STANDING
	* WALKING
	* WALKING_DOWNSTAIRS
	* WALKING_UPSTAIRS
3. Avg.tBodyAccMeanX
4. Avg.tBodyAccMeanY
5. Avg.tBodyAccMeanZ
6. Avg.tBodyAccStdX
7. Avg.tBodyAccStdY
8. Avg.tBodyAccStdZ
9. Avg.tGravityAccMeanX
10. Avg.tGravityAccMeanY
11. Avg.tGravityAccMeanZ
12. Avg.tGravityAccStdX
13. Avg.tGravityAccStdY
14. Avg.tGravityAccStdZ
15. Avg.tBodyAccJerkMeanX
16. Avg.tBodyAccJerkMeanY
17. Avg.tBodyAccJerkMeanZ
18. Avg.tBodyAccJerkStdX
19. Avg.tBodyAccJerkStdY
20. Avg.tBodyAccJerkStdZ
21. Avg.tBodyGyroMeanX
22. Avg.tBodyGyroMeanY
23. Avg.tBodyGyroMeanZ
24. Avg.tBodyGyroStdX
25. Avg.tBodyGyroStdY
26. Avg.tBodyGyroStdZ
27. Avg.tBodyGyroJerkMeanX
28. Avg.tBodyGyroJerkMeanY
29. Avg.tBodyGyroJerkMeanZ
30. Avg.tBodyGyroJerkStdX
31. Avg.tBodyGyroJerkStdY
32. Avg.tBodyGyroJerkStdZ
33. Avg.tBodyAccMagMean
34. Avg.tBodyAccMagStd
35. Avg.tGravityAccMagMean
36. Avg.tGravityAccMagStd
37. Avg.tBodyAccJerkMagMean
38. Avg.tBodyAccJerkMagStd
39. Avg.tBodyGyroMagMean
40. Avg.tBodyGyroMagStd
41. Avg.tBodyGyroJerkMagMean
42. Avg.tBodyGyroJerkMagStd
43. Avg.fBodyAccMeanX
44. Avg.fBodyAccMeanY
45. Avg.fBodyAccMeanZ
46. Avg.fBodyAccStdX
47. Avg.fBodyAccStdY
48. Avg.fBodyAccStdZ
49. Avg.fBodyAccMeanFreqX
50. Avg.fBodyAccMeanFreqY
51. Avg.fBodyAccMeanFreqZ
52. Avg.fBodyAccJerkMeanX
53. Avg.fBodyAccJerkMeanY
54. Avg.fBodyAccJerkMeanZ
55. Avg.fBodyAccJerkStdX
56. Avg.fBodyAccJerkStdY
57. Avg.fBodyAccJerkStdZ
58. Avg.fBodyAccJerkMeanFreqX
59. Avg.fBodyAccJerkMeanFreqY
60. Avg.fBodyAccJerkMeanFreqZ
61. Avg.fBodyGyroMeanX
62. Avg.fBodyGyroMeanY
63. Avg.fBodyGyroMeanZ
64. Avg.fBodyGyroStdX
65. Avg.fBodyGyroStdY
66. Avg.fBodyGyroStdZ
67. Avg.fBodyGyroMeanFreqX
68. Avg.fBodyGyroMeanFreqY
69. Avg.fBodyGyroMeanFreqZ
70. Avg.fBodyAccMagMean
71. Avg.fBodyAccMagStd
72. Avg.fBodyAccMagMeanFreq
73. Avg.fBodyBodyAccJerkMagMean
74. Avg.fBodyBodyAccJerkMagStd
75. Avg.fBodyBodyAccJerkMagMeanFreq
76. Avg.fBodyBodyGyroMagMean
77. Avg.fBodyBodyGyroMagStd
78. Avg.fBodyBodyGyroMagMeanFreq
79. Avg.fBodyBodyGyroJerkMagMean
80. Avg.fBodyBodyGyroJerkMagStd
81. Avg.fBodyBodyGyroJerkMagMeanFreq
82. Avg.angletBodyAccMean,gravity
83. Avg.angletBodyAccJerkMean,gravityMean
84. Avg.angletBodyGyroMean,gravityMean
85. Avg.angletBodyGyroJerkMean,gravityMean
86. Avg.angleX,gravityMean
87. Avg.angleY,gravityMean
88. Avg.angleZ,gravityMean
	
## Citations
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
