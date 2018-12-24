# README

This repository has been created as part of the course project with the Getting and Cleaning Data course at Coursera. In this project, the student is expected to submit an R script that extracts means and standard deviations for each participant of an experiment involving training activity data collection using smartphones (full decription of the experiment availabble here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)  

Besides this readme file providing an overview of the repo and the code, the repository also includes the following files:

  - run_analysis.R: this file contains the R code that downloads the original dataset on the user's PC, unzips it, re-assembles it into two sets from the .txt files, merges them into a single datasets, subsets it to include only means and standard deviations in line with the task at hand, introduces the appropriate labels for the variables and the Activities column as designated in the codebook for the original dataset and creates a seprarte tidy dataset with the average of each variable for each activity and each subject.     
  
 - Tidy_data.txt: this file contains the tidy dataset produced by the code contained in the previous file. 
  
 - Codebook.md: this file updates the codebook of the original dataset to reflect the output of the R script written for this project.  

# Transformations

The following transformations are applied to the source data to obtain the new dataset available in the Tidy_data.txt file when running the run_analysis.R script:
* (step 0: check if data has already been downloaded and download it if necessary)
* step 1: re-assemble the original training dataset, complete with subject and activity identifiers and variable names as introduced in the features.txt file of the original dataset
* step 2: re-assemble the original test dataset, complete with subject and activity identifiers and variable names as introduced in the features.txt file of the original dataset
* step 3: merge the two datasets 
* step 4: apply the approriate labels to the Activity variable of the merged dataset
* Step 5: make the column names more user-friendly by replacing the abbreviations with the appropriate words, removing special symbols and correcting a typo in a variable name of the original dataset, subset the resulting dataset to only include the means and standard deviations for every measurement
* step 6: average the measurement means and standard deviations for each user and activity, writing the result into the Tidy_data.txt file.