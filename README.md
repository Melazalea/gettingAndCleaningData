#README

##About the run_analysis.R file

The file creates the tidy data set in several steps.  The run_analysis.R file has detailed comments about each piece of code.

The file does the following:

* 1.If the original data is not yet in the working directory, the file downloads the data and unzips it to the working directory.

* 2.Text files within the original data are read into data frames. Files read in were the subject test and training data, y test and training data (which represented the activity) and x test and training data (which represented the feature data). The files "features" and "activity labels" were also read in for use in later data cleaning.

* 3.Test and training data frames are combined for subject, y and x using the rbind functions. They are then later combined into one large dataframe (called "allCombined") using the cbind function.

* 4.Columns relating to the means and standard deviations were extracted by searching for the text "mean" or "std" in the column names. The meanFrequency data were  excluded by searching for "meanFreq".

* 5.Column (variable) names were neatened by making them lower case and removing punctuation such as commas and brackets. Abbreviations were lengthened, for example,  "acc" became accelerometer, "gyro became "gyroscope".

* 6.The activity values were factored to make them more understandable.  For example Activity 1 became "WALKING", 6 became "LAYING".

* 7.The data was reshaped using the "melt" and "dcast" functions from the reshape2 library.  The result is a dataframe that contains the average for each variable and subject.

* 8.The final data frame was saved to the working directory as a text file.


