# MechaCar_Statistical_Analysis

## Overview 

The goal of this project was to complete an analysis of AutosRUs' newest prototype, the MechaCar, since it is currently struggling with production troubles. During this analysis I perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes, I collected summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots, I ran t-tests to determine if the manufacturing lots are statistically different from the mean population, & I designed a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers.

## Linear Regression to Predict MPG

### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

Vehicle length and ground clearnance both provided a non-random amount of variance meaning they likely have a significant impact on the MPG a car gets. If we were using a significance level of .05, the p-value is lower for those variables (vehicle_length=2.60e-12, ground_clearance=5.21e-08). In this case the p-value for the y-intercept also falls below the significance level, at 5.08e-08. 

![non-random-variance](https://github.com/ericajini/MechaCar_Statistical_Analysis/blob/main/Challenge/Images/Linear_Regression.jpg)

### Is the slope of the linear model considered to be zero? Why or why not?

In this case the slope of the linear model is not considered zero. If we were using a significance level of .05, the p-value for this model is lower, coming in at 5.35e-11.  

### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

This linear model does predict MPG of MechaCar prototypes effectively, with a success rate of around 70%. With that said, this also means there could be other factors that impact MPG. 

## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. With that said, the variance falls below that at around 62 for all the lots. When taking a deeper look at the individual lots though, lot 3 stands at with a variance of around 170, meaning it will exceed the 100 pounds per square inch provided in the design specifications. Lot 1 and 2 will meet design specifications with Lot 1 coming in just around 1 and lot 2 coming in around 7. 

![total-sus-coil](https://github.com/ericajini/MechaCar_Statistical_Analysis/blob/main/Challenge/Images/total_lot_summary.jpg)

![lot-sus-coil](https://github.com/ericajini/MechaCar_Statistical_Analysis/blob/main/Challenge/Images/Lot_Summary.jpg)


## T-Test on Suspension Coils

When looking at the t-test results for each lot (including when reviewing the total lot summary), the only lot significantly different from the normal distribution is lot 3 with a p-value of around .04, which falls below the stated significance value of .05. 

![lot-PSI](https://github.com/ericajini/MechaCar_Statistical_Analysis/blob/main/Challenge/Images/PSI_Across_Lots.jpg)

![l1](https://github.com/ericajini/MechaCar_Statistical_Analysis/blob/main/Challenge/Images/Lot%201.jpg)

![l2](https://github.com/ericajini/MechaCar_Statistical_Analysis/blob/main/Challenge/Images/Lot%202.jpg)

![l3](https://github.com/ericajini/MechaCar_Statistical_Analysis/blob/main/Challenge/Images/Lot%203.jpg)

## Study Design: MechaCar vs Competition

With the knowledge learned from this analysis, it is now time to move on to the next step in the process which is, creating a statistical study to compare performance of the MechaCar vehicles against the performance of vehicles from other manufactures. There are a number of things we could consider to review in our test when comparing against the competition including cost, city or highway fuel efficiency, horse power, maintenance cost, or saftey rating. For my analysis the metric I will start with is saftey rating, because I feel above all else, a car should keep you safe. For this analysis the null hypothesis will be that there is no statistical difference between the MechaCar saftey rating and the competitions saftey rating, meaning that the alternative hypothesis would represent there being a statistical difference. If there is a significant difference we will likely want to examine what makes a car safer than the MechaCar. In order to complete this analysis we would need to gather data around similar makes and models of vehicles and the metrics that could lead to one car being safer than another car. From there we use a multiple linear regression summary to compare the metrics and see which ones have the greatest impact on saftey. 

