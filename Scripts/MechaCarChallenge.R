##########################################
#
#     MechaCarChallenge
#
##########################################


## Deliverable 1: Linear Regression to Predict MPG

# Load dplyr library
library(dplyr)

# Import and read MechaCar_mpg.csv file as a dataframe
MechaCar_df <- read.csv(file="../Data/MechaCar_mpg.csv", check.names=F, stringsAsFactors=F)

# Perform multiple linear regression on mpg
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_df)

# Determine p-value and r-squared using summary() function
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_df))
