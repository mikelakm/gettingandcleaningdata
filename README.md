gettingandcleaningdata
======================

The current document was prepared as part of a project for the course 
"Getting and Cleaning Data", offered by Coursera and Johns Hopkins 
University under the "Data Science" Specialization.


Data extraction and processing
------------------------------

The original data were collected from the UCI Machine Learning Repository and 
represent data collected from the accelerometers from the Samsung Galaxy S 
smartphone. The data folder along with a full data set description can be found at: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

The original dataset includes:

- Triaxial acceleration from the accelerometer (total acceleration) and the 
  estimated body acceleration.

- Triaxial Angular velocity from the gyroscope.

- A 561-feature vector with time and frequency domain variables.

- Its activity label.

- An identifier of the subject who carried out the experiment.

The dataset was further processed in order to conclude to a final tidy dataset 
which contains specific measurements for each subject and specific activity.
The exact steps are described below:

1. The data was originally separated in a training and a test set. The two sets 
   were merged together in order to obtain one dataset containing all the 
   observations collected.

2. Specific variables were selected which refer to the mean and standard 
   deviation for each measurement. These variables were identified as ending 
   to either -mean() or -std(). Variables with the suffix meanFreq() were not 
   included, as the codebook of the original dataset defines them as Weighted
   average of the frequency components to obtain a mean frequency and so they 
   were not considered to be mean values of the original measurements. At this
   point 66 measurement variables were kept in the dataset.

3. The activity codes were replaced by the description of the activities.

4. The names of the variables were replaced with more descriptive ones. More 
   specifically, names were selected in a way that there would be a clear distinction
   as to where the measurements come from (accelerometer vs gyroscope), what kind
   of processing has taken place (e.g. Jerk signals obtained through derivation of 
   original values), what type of aggregation has been applied (mean or standard 
   deviation) and whether each variable refers to time or frequency domain signals.
   Additionally, certain corrections were made regarding variable names that were
   incorrectly labeled, such as fBodyBodyAccJerkMag-mean() and fBodyBodyAccJerkMag-std().

5. The values of the measurements were averaged over each subject and activity, 
   resulting to a tidy dataset consisting of 180 rows and 68 columns. Each 
   column refers to a specific variable and each row corresponds to a unique 
   combination of subject and activity.


Contents
--------

The project includes the following files:

- 'README.md'

- 'run_analysis.R': the R script that was used to extract the final dataset - the 
   script was ran under 64-bit Windows 8 using R version 3.0.2 and RStudio version 
   0.98.507. In order to run the script the UCI HAR Dataset should be manually 
   downloaded and the working directory should be set appropriately.

- 'tidy_data.txt': the final dataset. The data set can be loaded into R with the 
   command read.table("tidy_data.txt", sep="\t").

- 'CodeBook.md': a code book that describes all the variables contained in the 
   final dataset

