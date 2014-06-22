GettingAndCleaningData
======================
Current repo contains run_analysis.R script, which cleans data and save tidy dataset to file.
In order to use script we need to have data files with measurements in our working directory. 
To set working directory to the one, where the files are, we can use R command:
setwd("<your dir here>")

copy the script into working directory
use command source("run_analysis.R") to load source
use command main() to perform analysis

#run_analysis.R script consists of two functions:

-main - function without input arguments, reads data, perform all work with them and saves tidy dataset into file in current working directory.
	Firstly main reads common data (features list and activities list) in memory and call function getFullDataSet for train and test dataset respectively in order to get two parts of result data set.
	Combines train and test data sets in one, replaces activity labels with readable names and finally saves to text file in working directory on disk called result.txt.

-getFullDataSet - function gets 3 input parameters: 
	setname - parameter defines name of directory to read measurements from
	features - dataframe with all possible features. It is needed for correct columns naming after reading measurements
	featuresneeded - list of column indexes, which are only needed to be in final tidy dataset
	function reads data with measurements from given directory, returns dataset