# hexamap
Plotting age-period-cohort patterns using hexamap. 

This repo contains code to create hexamaps for visualizing patterns by age, period and cohorts. 

The details of the hexamap method is published here: 


If you use the hexamap code in your work, please cite our paper:

Jalal, Hawre, and Donald S. Burke. "Hexamaps for age-period-cohort data visualization and implementation in R." Epidemiology (Cambridge, Mass.) 31.6 (2020): e47.

The R folder contains two files:
1. functions.R which contains the hexamap() function and two small helper function.
2. main.R which has an example for plotting overdose deaths in the US.

The hexamap function's main input is a matrix that has ages as rows and years as columns and the cells contain the main outcome you are interested in plotting.

You can modify the parameters of the function parameters to adjust the 
