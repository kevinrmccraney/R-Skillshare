#
# R SKILLSHARE - A CRASH-COURSE IN R
# Nov 2, 2018
#
# This is a "fill-in-the-blanks" exercise. Try to follow along as we talk through
# the commands, and change the XXXXXXX to the proper values.





# check to make sure you are in the right place
getwd()
setwd("/Users/kmccraney/Desktop/R-Skillshare-master")
getwd()



# load the file using READ.CSV
# there are other effective ways to do this depending on file encoding;
# see cheat sheet for more info
df <- read.csv("chocolate.csv")

# show the HEAD of the file (first 6 rows)
head(df)

# ...or an arbitrary number of rows
head(df, 15)

# show the TAIL of the file (last 6 rows)
tail(df)

# ...or an arbitrary number of rows
tail(df, 15)

# NUMBER OF ROWS in the whole dataframe
nrow(df)

# NUMBER OF COLUMNS
ncol(df)

# STRUCTURE of object (datatypes, as well as different options for values)
str(df)

# you can also pretty-print it using View()
View(df)

# SUMMARY of the object (counts of values, summary stats, etc.)
summary(df)

# get the CLASS of the object (what data type is it? int? str? df?)
class(df) 

# get the COLUMN NAMES for later processing
colnames(df)

# using the $ operator to select just one column of the dataframe
# 

df$Amazon.Rating

# INDEX the dataframe into just one column
# can be used to make a new object in R, which will appear in
# your 'Environment' (shows all objects in memory)

beans_only <- df["Bean.Type"]



# selects rows 1:8 of column Bean.Type and assigns them to eight_bean_values
# this selection syntax with the colon is called "slicing"

eight_bean_values <- df[1:8, "Bean.Type"]

# this selects all rows (but only two columns), and assigns them to two_cols

two_cols <- df[ , c("Bean.Type", "Deliciousness.Rating")]

# to RENAME COLUMNS, use colnames(df) to show the original value,
# pick a particular column to rename (using the index),
# and then assign a value to that index.
# doing the same command again will show the newly assigned value
# instead of the old one
colnames(df)
colnames(df)[11]
colnames(df)[11] <- "Number.of.Stars"
colnames(df)[11]


# CLEAN DATA and CONVERT VALUES to/from NA

# select the column, subset the dataframe for values equalling -1
# and then assign the value NA in place (which means overwriting the values)
#
# it doesn't have to be -1, it can be any conditional you like depending on the data
# maybe you'll choose 0; maybe not rating it is equivalent to 1 star

df$Number.of.Stars[df$Number.of.Stars == "-1"] <- NA


# GET COUNT of NAs
# displays boolean (T/F) values for NA. Boolean values are equivalent to 1/0
# so you can SUM them to get the number of NAs

is.na(df$Number.of.Stars)
sum(is.na(df$Number.of.Stars))

# we can also SUBSET the rows with NO NA values by assigning to a new df
# we use a new attribute here--a logical operator '!' which means NOT

df2 <- subset(df, !is.na(df$Number.of.Stars))

# let's call SUMMARY on the STARS column of DF and DF2 to see what the differences are
summary(df$Number.of.Stars)
summary(df2$Number.of.Stars)

# and then we can export/write that DF to CSV in our working directory
write.csv(df2, "Processed_chocolate_dataframe.csv")

# and finally, delete from memory
# (which is okay because we already exported this to csv)

rm(df)
rm(df2)
rm(beans_only)


### Exercises for you to do!
# Find the class of of each of the first 5 columns



# Rename Column #8 to “Rating”




# Find how many “Amazon Ratings” there are, and the average (mean)




# Take the Deliciousness columns and replace all the -1s with NAs




# Bonus: Make a new column, calling it whatever you like, and use a built-in function to fill it with random numbers.




# CODE USED TO GENERATE ADDITIONAL COLUMNS
df$Amazon.Rating <- sample(-1:5, nrow(df), replace=TRUE)
df$Deliciousness.Rating <- sample(-1:1, nrow(df), replace=TRUE) 
