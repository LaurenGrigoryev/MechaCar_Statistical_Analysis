# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
[Output of multiple linear regression model pictured here](https://github.com/LaurenSonis/MechaCar_Statistical_Analysis/blob/main/2021-03-21.png)

### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
Ground_clearance and vehicle_length (as well as the intercept) were the variables that provided a non-random amount of variance. 

### Is the slope of the linear model considered to be zero? Why or why not?
The slope of the linear model is not considered to be zero because the p-value is 5.35e-11, significantly smaller than 0.05.

### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
This linear model effectively predicts mpg of MechaCar prototypes because the multiple R-squared value is 71%, meaning about 71% of the time the mpg values will be correct.

## Summary Statistics on Suspension Coils
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

When I look at the total variance of PSI (or Pounds per Square Inch) for the cars manufactured in various lots, I get a variance of about 62, well under 100, so in total, yes, the manufacturing lots meet this design specification, [as pictured here]("https://github.com/LaurenSonis/MechaCar_Statistical_Analysis/blob/main/2021-03-21%20(1).png").

However, when I take a closer look at each lot individually, I can see that Lots 1 and 2 meet the standard with variances at about 1 and 7 respectively, well under 100, but Lot 3 has a variance of 170, well over the 100 cut off, [as pictured here]("https://github.com/LaurenSonis/MechaCar_Statistical_Analysis/blob/main/2021-03-21%20(2).png"), so no, not all of the lots meet the standard individually.

## T-Tests on Suspension Coils
When I conducted a t-test on the summary data, I saw that the true mean was not equal to the population mean of 1,500, but rather closer to just over 700 [as pictured here](https://github.com/LaurenSonis/MechaCar_Statistical_Analysis/blob/main/2021-03-21%20(13).png).

When I conducted a t-test on individual manufacturing lots, I saw that the individual lots' means were much closer to the population mean, with [Lot1](https://github.com/LaurenSonis/MechaCar_Statistical_Analysis/blob/main/2021-03-21%20(10).png) hitting 1,500 when rounded, [Lot2](https://github.com/LaurenSonis/MechaCar_Statistical_Analysis/blob/main/2021-03-21%20(11).png) coming in close at 1,500.2, and [Lot3]() coming in at 1,496.14.
