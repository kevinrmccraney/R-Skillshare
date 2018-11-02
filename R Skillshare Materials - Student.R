#
# R SKILLSHARE - A CRASH-COURSE IN R
# Nov 2, 2018
#
# This is a "fill-in-the-blanks" exercise. Try to follow along as we talk through
# the commands, and change the XXXXXXX to the proper values.





# check to make sure you are in the right place
getwd()
setwd("XXXXXXX")
getwd()



# load the file using READ.CSV
# there are other effective ways to do this depending on file encoding;
# see cheat sheet for more info
df <- read.csv("XXXXXXX")

# show the HEAD of the file (first 6 rows)
XXXXXXX(df)

# ...or an arbitrary number of rows
# Display first 15 rows
head(df, XXXXXXX) 

# show the TAIL of the file (last 6 rows)
XXXXXXX(df)

# ...or an arbitrary number of rows
tail(df, XXXXXXX)

# NUMBER OF ROWS in the whole dataframe
nrow(df)

# NUMBER OF COLUMNS
XXXXXXX(df)

# STRUCTURE of object (datatypes, as well as different options for values)
str(df)

# you can also pretty-print it using View()
View(XXXXXXX)

# SUMMARY of the object (counts of values, summary stats, etc.)
XXXXXXX(df)

# get the CLASS of the object (what data type is it? int? str? df?)
XXXXXXX(df) 

# get the COLUMN NAMES for later processing
XXXXXXX(df)

# using the $ operator to select just one column of the dataframe
# 

df$XXXXXXX

# INDEX the dataframe into just one column
# can be used to make a new object in R, which will appear in
# your 'Environment' (shows all objects in memory)

beans_only <- df["XXXXXXX"]



# selects rows 1:8 of column Bean.Type and assigns them to eight_bean_values

eight_bean_values <- df[XXXXXXX, "Bean.Type"]

# this selects all rows (but only two columns), and assigns them to two_cols

two_cols <- df[ , c(XXXXXXX, XXXXXXX)]

# to RENAME COLUMNS, use colnames(df) to show the original value,
# pick a particular column to rename (using the index),
# and then assign a value to that index.
# doing the same command again will show the newly assigned value
# instead of the old one
colnames(XXXXXXX)
colnames(XXXXXXX)[XXXXXXX]
colnames(XXXXXXX)[XXXXXXX] <- "Number.of.Stars"
colnames(XXXXXXX)[XXXXXXX]


# CLEAN DATA and CONVERT VALUES to/from NA

# select the column, subset the dataframe for values equalling -1
# and then assign the value NA in place (which means overwriting the values)
#
# it doesn't have to be -1, it can be any conditional you like depending on the data
# maybe you'll choose 0; maybe not rating it is equivalent to 1 star

df$XXXXXXX[df$XXXXXXX == "-1"] <- NA


# GET COUNT of NAs
# displays boolean (T/F) values for NA. Boolean values are equivalent to 1/0
# so you can SUM them to get the number of NAs

is.na(df$Number.of.Stars)
XXXXXXX(is.na(df$XXXXXXX))

# we can also SUBSET the rows with NO NA values by assigning to a new df
# we use a new attribute here--a logical operator '!' which means NOT
# in order to change the second argument of the function

df2 <- XXXXXXX(df, !is.na(df$Number.of.Stars))

# let's call SUMMARY on the STARS column of DF and DF2 to see what the differences are
XXXXXXX(XXXXXXX)
XXXXXXX(XXXXXXX)

# and then we can export/write that DF to CSV in our working directory
write.csv(df2, "XXXXXXXX")

# and finally, delete all the different things we made
# from your environment/remove from memory
# (this is okay because we already exported this to csv,
# but normally you should be careful about this)

rm(XXXXXXXX)







############ Exercises for you to do!
# Find the class of of each of the first 5 columns



# Rename Column #8 to “Rating”




# Find how many “Amazon Ratings” there are, and the average (mean)




# Take the Deliciousness columns and replace all the -1s with NAs




# Bonus: Make a new column, calling it whatever you like, and use a built-in function to fill it with random numbers.


