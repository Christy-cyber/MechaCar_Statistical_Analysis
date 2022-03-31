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

Fig. 1 Multiple linear regression output for mpg predictions. Statistical differences were determined at P < 0.05.


### Deliverable 2:  Summary Statistics on Suspension Coils
Weight capacities of suspension coils, measured in pounds per square inch (PSI), were tested across three production lots in order to assess consistency in performance. Mean PSI for all lots was 1498.78 with a variance of 62.3 (Table 1).  Even though variance for all coils tested was less than the required 100 PSI specification, it would not be acceptable to use suspension coils from a randomly selected set because not all lots perform the same.  Further investigation into individual lots showed that suspension coils from Lot 3 did not meet design specifications as indicated by the variance of 170.29, which was well above the limit of 100 PSI (Table 2). PSI readings from this lot were driving higher variance in overall (total summary) PSI readings.  Coils sourced from Lots 1 and 2 may be used, but not those from Lot 3.


Table 1.  Total summary of mean, median, variance, and standard deviation for all cars for PSI readings of suspension coils.

![total_summary_df](https://user-images.githubusercontent.com/95387273/160863100-09130db4-3e91-4547-8c68-5b18077bc9fa.png)

Table 2.  Lot summary of mean, median, variance, and standard deviation for three manufacturing lots of cars for PSI readings of suspension coils.

![lot_summary_df](https://user-images.githubusercontent.com/95387273/160863138-d2f3af2c-3d73-4a2c-a454-9d702dc402ec.png)


### Deliverable 3:  T-Tests on Suspension Coils
Raw data (n = 150) for suspension coil pounds per square inch (PSI) were subjected to a Shapiro-Wilk test for normality.  Results showed that data were not normally distributed (P < 0.001) and a density plot revealed a leptokurtic distribution (Fig. 2). Multiple attempts to transform the data were made by using log10, log, square root, and 1/x transformations, but none corrected for non-normality. Because t-tests are robust to non-normality when sample sizes are greater than 50, raw data were subjected to a series of one-sample t-tests to determine: 
- if PSI of suspension coils across all manufacturing lots was statistically different from the population mean of 1500 PSI.
- if PSI of suspension coils from Lot 1 was statistically different from the population mean of 1500 PSI.
- if PSI of suspension coils from Lot 2 was statistically different from the population mean of 1500 PSI.
- if PSI of suspension coils from Lot 3 was statistically different from the population mean of 1500 PSI.

Results from all t-tests mirrored information presented in Tables 1 and 2.  T-test results for PSI of all manufacturing lots showed no statistical difference with the population mean (t = -1.89, df = 149, P > 0.05) (Fig. 3), but further investigation indicated that the overall mean of 1498.78 PSI was driven primarily by PSI values of Lot 3.

T-test results for PSI for Lot 1 (n = 50) showed no statistical difference with the population mean (t = 0, df = 49, P > 0.05).  The mean for Lot 1 was 1500 PSI (Fig. 4).

T-test results for PSI for Lot 2 (n = 50) showed no statistical difference with the population mean (t = 0.517, df = 49, P > 0.05).  The mean for Lot 2 was 1500.2 PSI (Fig. 5). 

T-test results for PSI for Lot 3 (n = 50) were statistically significant from the population mean (t = -2.09, df = 49, P < 0.05). The mean for Lot 3 was 1496.14 PSI, which was lower than the population mean of 1500 PSI. (Fig. 6).

Not all manufacturing lots of suspension coils demonstrate the same performance of 1500 PSI as the population mean.  Lot 3 is underperforming, which may have significant negative outcomes once a vehicle is operational.


![Rplot-Normality](https://user-images.githubusercontent.com/95387273/161083243-6b55e7d1-c82c-4e05-9580-a6291a73e734.png)

Fig. 2. Density plot of raw data for suspension coil pounds per square inch (PSI) where n = 150.


![t-test-all lots](https://user-images.githubusercontent.com/95387273/161081944-579db09d-b1fe-4e8e-a12c-fd17c5c6a20c.png)

Fig. 3.  One-Sample t-test for all lots of suspension coil pounds per square inch (PSI) where n = 150.


![t-test-lot1](https://user-images.githubusercontent.com/95387273/161081974-3bd0a2d5-527e-44c1-912e-8c5da8ec9bc6.png)

Fig. 4.  One-Sample t-test for Lot 1 of suspension coil pounds per square inch (PSI) where n = 50.


![t-test-lot2](https://user-images.githubusercontent.com/95387273/161082000-86d668e1-475a-44f5-8b4f-92a6c3c3362d.png)

Fig. 5.  One-Sample t-test for Lot 2 of suspension coil pounds per square inch (PSI) where n = 50.


![t-test-lot3](https://user-images.githubusercontent.com/95387273/161082041-5af0d10e-84db-4181-9bd0-0af45dcf6332.png)

Fig. 6.  One-Sample t-test for Lot 3 of suspension coil pounds per square inch (PSI) where n = 50.



### Deliverable 4: Study Design:  MechaCar vs Competition
**- Description of statistical study, data collected, and metrics tested:**
A completely randomized design would be used to to investigate differences in CO<sub>2</sub> output across different vehicle manufacturers within the same design class as MechaCar. CO<sub>2</sub> output would be measured and calculated (g of CO<sub>2</sub> per mile, continuous numerical data) at the tailpipe for MechaCars and cars from four of its top competitors for its design class, resulting in five different make/model car types. Fifty cars for each of the five car types would be randomly sampled (n = 50).   

**- Null and Alternative Hypotheses:**
Null hypothesis: The means of all of the groups for CO<sub>2</sub> output are equal.
Alternative hypothesis: The mean from at least one group for CO<sub>2</sub> output differs from all of the other groups.

**- Statistical Test Used to Test Hypothesis: And Why?**
Data for each of the five car types would be tested for normality using a Shapiro-Wilk normality test (alpha = 0.05, two-tailed), and density plotted for for visual confirmation. Equal variance assumptions will be assessed using box plots and a Bartlett's test (alpha = 0.05, two-tailed).  Once normality and variance assumptions are confirmed, a one-way fixed-effects analysis of variance (ANOVA) would be used to determine whether statistical differences exist between the means for CO<sub>2</sub> output (g of CO<sub>2</sub> per mile) of each of the five groups tested (alpha-level = 0.05, two-tailed).  Car type would be considered a fixed-effect.  A Bonferroni post-hoc test would be used to assess which groups differed from one another once an overall difference in means was found with ANOVA.

