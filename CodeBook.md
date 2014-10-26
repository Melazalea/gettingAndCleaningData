#CodeBook

##About the data

The original data is Human Activity Recognition (HAR) data from the  UCI Machine Learning Repository at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  


Thirty volunteers performed six different activities (walking, walking upstairs, walking downstairs, sitting, standing and laying) while wearing a Samsung Galaxy S II on their waist.  The data from the devices sensors was processed and recorded.  The original features were normalized and bounded within [-1,1].  More information about the original data can be found in this document, below the variables description.

The original data was subsetted to include just the average of each variable for each activity and each subject.  The variable names were also edited to improve clarity. 



##Variables

###Signals in the time domain are prefixed with the word time, wheras signals that have undergone a fast fourier transform (FFT) and are now in the frequency domain are prefixed with the word "frequency".

*Subject - integer code for the subject (person doing the activity)
*Activity - activity performed by the subject.  Values can be WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

####Time domain signal of body acceleration - means and standard deviation in x,y and z directions
* timebodyaccelerometermeanx 
* timebodyaccelerometermeany 
* timebodyaccelerometermeanz 
* timebodyaccelerometerstdx 
* timebodyaccelerometerstdy  
* timebodyaccelerometerstdz 

## Time domain signal of gravity acceleration - means and standard deviation in x,y and z directions
*timegravityaccelerometermeanx
*timegravityaccelerometermeany 
*timegravityaccelerometermeanz
*timegravityaccelerometerstdx
*timegravityaccelerometerstdy
*timegravityaccelerometerstdz


## Time domain signal of body jerk acceleration - means and standard deviation in x,y and z directions
*timebodyaccelerometerjerkmeanx
*timebodyaccelerometerjerkmeany
*timebodyaccelerometerjerkmeanz
*timebodyaccelerometerjerkstdx
*timebodyaccelerometerjerkstdy
*timebodyaccelerometerjerkstdz


## Time domain signal of gyroscope - means and standard deviation in x,y and z directions
*timebodygyroscopemeanx
*timebodygyroscopemeany
*timebodygyroscopemeanz
*timebodygyroscopestdx
*timebodygyroscopestdy
*timebodygyroscopestdz

## Time domain signal of gyroscope jerk - means and standard deviation in x,y and z directions
*timebodygyroscopejerkmeanx
*timebodygyroscopejerkmeany
*timebodygyroscopejerkmeanz
*timebodygyroscopejerkstdx
*timebodygyroscopejerkstdy
*timebodygyroscopejerkstdz

## Time domain signal of body acceleration magnitude - means and standard deviation
*timebodyaccelerometermagnitudemean
*timebodyaccelerometermagnitudestd

## Time domain signal of gravity acceleration magnitude - means and standard deviation
*timegravityaccelerometermagnitudemean
*timegravityaccelerometermagnitudestd

## Time domain signal of body acceleration jerk magnitude - means and standard deviation
*timebodyaccelerometerjerkmagnitudemean
*timebodyaccelerometerjerkmagnitudestd

## Time domain signal of gyroscope magnitude - means and standard deviation
*timebodygyroscopemagnitudemean
*timebodygyroscopemagnitudestd

## Time domain signal of gyroscope jerk magnitude - means and standard deviation
*timebodygyroscopejerkmagnitudemean
*timebodygyroscopejerkmagnitudestd

## Frequency domain signal of body acceleration - means and standard deviation in x,y and z directions
*frequencybodyaccelerometermeanx
*frequencybodyaccelerometermeany
*frequencybodyaccelerometermeanz
*frequencybodyaccelerometerstdx
*frequencybodyaccelerometerstdy
*frequencybodyaccelerometerstdz

## Frequency domain signal of body acceleration jerk - means and standard deviation in x,y and z directions
*frequencybodyaccelerometerjerkmeanx
*frequencybodyaccelerometerjerkmeany
*frequencybodyaccelerometerjerkmeanz
*frequencybodyaccelerometerjerkstdx
*frequencybodyaccelerometerjerkstdy
*frequencybodyaccelerometerjerkstdz

## Frequency domain signal of gyroscope - means and standard deviation in x,y and z directions
*frequencybodygyroscopemeanx
*frequencybodygyroscopemeany
*frequencybodygyroscopemeanz
*frequencybodygyroscopestdx
*frequencybodygyroscopestdy
*frequencybodygyroscopestdz

## Frequency domain signal of body acceleration magnitude - means and standard deviation
*frequencybodyaccelerometermagnitudemean
*frequencybodyaccelerometermagnitudestd

## Frequency domain signal of body acceleration jerk magnitude - means and standard deviation
*frequencybodybodyaccelerometerjerkmagnitudemean
*frequencybodybodyaccelerometerjerkmagnitudestd

## Frequency domain signal of gyroscope magnitude - means and standard deviation
*frequencybodybodygyroscopemagnitudemean
*frequencybodybodygyroscopemagnitudestd

## Frequency domain signal of gyroscope jerk magnitude - means and standard deviation
*frequencybodybodygyroscopejerkmagnitudemean
*frequencybodybodygyroscopejerkmagnitudestd

##Angle between vector means
*angletimebodyaccelerometermeangravity
*angletimebodyaccelerometerjerkmeangravitymean
*angletimebodygyroscopemeangravitymean
*angletimebodygyroscopejerkmeangravitymean
*anglexgravitymean
*angleygravitymean
*anglezgravitymean


##Original Data

Original data can be found at: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Project information can be found at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

###From the original data features_info.txt file...

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'


###From the original data README file...
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws
