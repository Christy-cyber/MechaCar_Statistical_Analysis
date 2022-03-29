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



## Deliverable 2:  Summary Statistics on Suspension Coils

# Import and read the Suspension_Col.csv as a table
Suspension_Coil_df <- read.csv(file="../Data/Suspension_Coil.csv", check.names=F, stringsAsFactors=F)

# Create total_summary dataframe for mean, median, variance, standard deviation of PSI column
total_summary_df <- Suspension_Coil_df %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

# Create lot_summary dataframe to group each manufacturing lot and calculate mean, median, variance, and SD for PSI for
# each lot
lot_summary_df <- Suspension_Coil_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')
