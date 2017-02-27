# Getting-and-Cleaning-Data-Project

The R script, `run_analysis.R`, does the following:

1. Sets the working directory
2. Downloads the dataset and unzips the file
3. Reads the training and test datasets into R along with the subject, activity, and feature datasets
4. Merges the training and the test datasets to create one large measurement table
5. Appropriately label the subject, activity, and measurement tables with descriptive column names
6. Extract mean and standard deviation columns from the measurement table 
7. Merge subject, activity, and measurement tables together
8. Creates a tidy dataset that calculates the mean of each measurement for each subject and activity combination
9. The output is the text file `tidyData.txt`
