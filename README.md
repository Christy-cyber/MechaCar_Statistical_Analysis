# MechaCar Statistical Analysis
## Overview and Purpose
Production data for a new car prototype were reviewed in order to aid the manufacturing team with production improvement. The following four deliverables were requested:
- Determine which variables in the dataset predict miles per gallon (mpg) using a multiple linear regression analysis
- Determine summary statistics on pounds per square inch (PSI) of the suspension coils from different manufacturing lots
- Determine if suspension coil manufacturing lots are statistically different from the mean population using t-tests
- Design a statistical study that compares vehicle performance of the MechaCar vehicles against vehicles from other manufacturers

## Resources
- Data: MechaCar_mpg.csv, Suspension_Coil.csv
- Programming Languages: R v. 4.1.3

## Summary
### Deliverable 1: Linear Regression to Predict MPG
A multiple linear regression was performed on raw data using vehicle_length, vehicle_weight, spoiler_angle, ground_clearance, and AWD (All Wheel Drive) as independent variables and mpg (miles per gallon) as the dependent variable from the MechaCar_mpg.csv dataset. Significance was set at 0.05.  Results showed that vehicle_length and ground_clearance were both statistically significant  (P < 0.001), so had a significant impact on mpg and were unlikely to provide a non-random amount of variance to the mpg values in the dataset (Fig. 1). The overall P-value (< 0.001) indicated that slope was not considered to be zero as the predictor variables produced changes in the response variable (in this case, mpg). The intercept was also highly significant (P < 0.001), but interpreting the negative intercept is not meaningful for this model since it is not possible for a car to have negative mpg when all other predictors are set to zero. R-squared was found to be 0.715 (Adjusted R-squared was 0.683.), which indicated that 71.5% of the data fit the linear model and predicted mpg of MechaCar prototypes effectively. R-squared values greater than 0.7 tend to indicate a good fit for a regression model. However, there could be other factors that help explain the response of mpg based on the significance of the intercept that were not accounted for in the model. A plot of the residuals would further aid in interpretation.


![mlr_output](https://user-images.githubusercontent.com/95387273/160720457-baef765f-aa11-4957-9671-59ed8b63507f.png)

Fig. 1 Multiple linear regression output for mpg predictions.


### Deliverable 2:  Summary Statistics on Suspension Coils
Weight capacities of suspension coils, measured in PSI, were tested across three production lots in order to assess consistency in performance. Mean PSI for all lots was 1498.78 PSI with a variance of 62.3 (Table 1).  Even though variance for all coils tested was less than the required 100 PSI specification, it would not be acceptable to use suspension coils from a randomly selected set because not all lots perform the same.  Further investigation into individual lots showed that suspension coils from Lot 3 did not meet design specifications as indicated by the variance of 170.29, which was well above the limit of 100 PSI (Table 2). PSI readings from this lot were driving higher variance in overall (total summary) PSI readings.  Coils sourced from Lots 1 and 2 may be used, but not those from Lot 3.


Table 1.  Total summary of mean, median, variance, and standard deviation for all cars for PSI readings of suspension coils.

![total_summary_df](https://user-images.githubusercontent.com/95387273/160863100-09130db4-3e91-4547-8c68-5b18077bc9fa.png)

Table 2.  Lot summary of mean, median, variance, and standard deviation for three lots of cars for PSI readings of suspension coils.

![lot_summary_df](https://user-images.githubusercontent.com/95387273/160863138-d2f3af2c-3d73-4a2c-a454-9d702dc402ec.png)


### Deliverable 3:  T-Tests on Suspension Coils



### Deliverable 4: Study Design:  MechaCar vs Competition
- Description of statistical study:


- Metrics Tested:

- Null and Alternative Hypotheses:

- Statistical Test Used to Test Hypothesis: And Why?

- Data Needed to Perform Statistical Test:
