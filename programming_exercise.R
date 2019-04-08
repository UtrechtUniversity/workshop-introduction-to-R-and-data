## Programming exercise for Introduction to R and Data
## Workshop at Utrecht University
## more on https://github.com/UtrechtUniversity/workshop-introduction-to-R-and-data
## Material developed by Barbara Vreede
## Contact: b.m.i.vreede@uu.nl
## Date: 8 April 2019


# Function that returns basic statistics from a vector
apply_calc <- function(x){
  m <- mean(x) # mean
  s <- sd(x) # standard deviation
  mi <- min(x) # minimum
  ma <- max(x) # maximum
  allres <- c(m,s,mi,ma)
  return(allres)
}

# Apply the function to all columns in iris
iriscols <- colnames(iris)
for(i in iriscols){
  # select the appropriate column
  c <- iris[,i]
  # apply the function
  stats <- apply_calc(c)
  # print the stats
  print(stats)
}

### THIS DOES NOT GO WELL! One of the columns in iris is not numeric!
###
### EXERCISE: 
### Add an if statement to the for-loop that ensures the stats calculation is only performed
### if the column is numeric.
### Hint: check the function is.numeric()

# Apply the function to all NUMERIC columns in iris
iriscols <- colnames(iris)
for(i in iriscols){
  # select the appropriate column
  c <- iris[,i]
  # apply the function ONLY TO NUMERIC COLUMNS
  if #### ADD YOUR CODE HERE ####

  
}



###############################################################
###############################################################
###############################################################

## DO NOT SCROLL DOWN IF YOU HAVE NOT FINISHED THE EXERCISE! ##

###############################################################
###############################################################
###############################################################






###### BONUS ########

# You could add the stats together to a data frame like this:
statsdf <- NULL # this is how you initiate a new object without putting any information in
measurements <- NULL # to collect the names of the numeric measurements

for(i in iriscols){
  # select the appropriate column
  c <- iris[,i]
  # check whether the column is numeric
  if(is.numeric(c)){
    # apply the function
    stats <- apply_calc(c)
    # bind the row to the new dataframe
    statsdf <- rbind(statsdf,stats)
    # add the column name to the measurements vector
    measurements <- c(measurements, i)
  }
}

# now for the final touch: make the object into a data frame
statsdf <- as.data.frame(statsdf)

# add column names
colnames(statsdf) <- c("Mean","Sd","Max","Min")

# and row names with the names of the measurements
rownames(statsdf) <- measurements
