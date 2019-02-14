# database in use: iris
# comes pre-loaded

# what measurements exist in the iris db?
measure <- colnames(iris)
# remove "Species" from the list of names
measure <- measure[measure!="Species"]

# make a df with a single column: measurements
iris_res<- data.frame(measure)

# Determine the average size per measurement
# Generate a vector to add averages to
avgs <- NULL
# iterate over each measurement with a for-loop
for(m in measure){
  # select the appropriate column in the dataframe
  column <- iris[,m]
  # calculate the average of this column
  avg <- mean(column)
  # add the average to the averages vector
  avgs <- c(avgs,avg)
}
# add the collected averages as a column to the data frame
iris_res$average <- avgs

#### EXERCISE ####
#turn this into a function
average_df <- function(df){
  # determine measurement names and remove species
  measure <- colnames(df)
  measure <- measure[measure!="Species"]
  # initiate an empty vector
  avgs <- NULL
  ### ENTER YOUR OWN CODE ###
  return(avgs)
}

# apply the function: add the averages as a column to the data frame
iris_res$average <- average_df(iris)