# database in use: iris
# comes pre-loaded

# what measurements exist in the iris db?
mmt <- colnames(iris)
# remove "Species" from the list of names
mmt <- mmt[mmt!="Species"]

# make a df with a single column: measurements
iris_res <- data.frame(mmt)

# Determine the average size per measurement
# Generate a vector to add averages to
avgs <- NULL
# iterate over each measurement with a for-loop
for(i in mmt){
  # select the appropriate column in the dataframe
  col_i <- iris[,i]
  # calculate the average of this column
  avg_i <- mean(col_i)
  # add the average to the averages vector
  avgs <- c(avgs,avg_i)
}
# add the collected averages as a column to the data frame
iris_res$average <- avgs

#### EXERCISE ####
#turn this into a function
average_df <- function(df){
  # determine measurement names and remove species
  mmt <- names(df)
  mmt <- mmt[mmt!="Species"]
  # initiate an empty vector
  avgs <- NULL
  ### ENTER YOUR OWN CODE ###
  return(avgs)
}

# apply the function: add the averages as a column to the data frame
iris_res$average <- average_df(iris)