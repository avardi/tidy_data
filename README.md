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
7) write resulting table in txt format 