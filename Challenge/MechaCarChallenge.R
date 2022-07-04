# Deliverable 1: Linear Regression to Predict MPG

# Use the library() function to load the dplyr package.
library(dplyr)

# Import and read in the MechaCar_mpg.csv file as a dataframe
MechaCar_df <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# Perform linear regression using the lm() function. In the lm() function, pass in all six variables
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data=MechaCar_df)

# Using the summary() function, determine the p-value and the r-squared value for the linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data=MechaCar_df))

# -------------
# Deliverable 2: Create Visualizations for the Trip Analysis

# import and read in the Suspension_Coil.csv file as a table
Sus_Coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

# create a total_summary dataframe using the summarize() function to get 
# the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
total_summary <- Sus_Coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

# write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions to
# group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
lot_summary <- Sus_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI),Median = median(PSI), Variance = var(PSI), SD = sd(PSI) , .groups = 'keep')

# --------------
# Deliverable 3: T-Tests on Suspension Coils 

# use the t.test() function to determine if the PSI across all manufacturing lots is statistically 
# different from the population mean of 1,500 pounds per square inch
t.test(Sus_Coil$PSI, mu=1500)

# write three more RScripts in your MechaCarChallenge.RScript using the t.test() function and its subset() argument to determine if
# the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch

# Lot 1
t.test(subset(Sus_Coil,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)
# Lot 2
t.test(subset(Sus_Coil,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)
# Lot 3
t.test(subset(Sus_Coil,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)
