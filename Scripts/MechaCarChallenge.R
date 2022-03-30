##########################################
#
#     MechaCarChallenge
#
##########################################


## Deliverable 1: Linear Regression to Predict MPG

# Load dplyr and ggplot2 libraries
library(dplyr)
library(ggplot2)

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



## Deliverable 3:  T-Tests on Suspension Coils

# Test for normality on PSI column of Suspension_Coil_df
shapiro.test(Suspension_Coil_df$PSI)

# Create log10 transformed PSI column in Suspension_Coil_df
Suspension_Coil_df <- Suspension_Coil_df %>% mutate (PSI_Trans = log10(PSI), IsActive = TRUE)

# Test for normality on PSI_Trans (log10 of psi) of Suspension_Coil_df
shapiro.test(Suspension_Coil_df$PSI_Trans)

# Visualize distribution using density plot
plt <- ggplot(Suspension_Coil_df, aes(x=PSI))
plt + geom_density()

# Determine by t-test if PSI across all manufacturing lots is statistically different from the population mean of 1500
t.test(Suspension_Coil_df$PSI, mu = 1500)

# Determine by t-test if PSI for Lot 1 is statistically different from the population mean of 1500
t.test(Suspension_Coil_df$PSI ~ 1, subset = Suspension_Coil_df$Manufacturing_Lot == "Lot1",  mu = 1500)

# Determine by t-test if PSI for Lot 2 is statistically different from the population mean of 1500
t.test(Suspension_Coil_df$PSI ~ 1, subset = Suspension_Coil_df$Manufacturing_Lot == "Lot2",  mu = 1500)

# Determine by t-test if PSI for Lot 3 is statistically different from the population mean of 1500
t.test(Suspension_Coil_df$PSI ~ 1, subset = Suspension_Coil_df$Manufacturing_Lot == "Lot3",  mu = 1500)
