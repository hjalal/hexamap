 # hexamap
Plotting age-period-cohort patterns using hexamap. 

Hexamap is a plotting method specific for visualizing data by age, period and cohort data.  It overcomes the distortion challenges of standard Lexis diagrams.  

If you use the hexamap code in your work, please cite our papers:

1. Jalal, Hawre, and Donald S. Burke. Hexamaps for age-period-cohort data visualization and implementation in R. *Epidemiology* (Cambridge, Mass.) 31.6 (2020): e47.
2. Jalal, H., Buchanich, J. M., Sinclair, D. R., Roberts, M. S., & Burke, D. S. (2020). Age and generational patterns of overdose death risk from opioids and other drugs. *Nature medicine*, 26(5), 699-704.

This Github repo contains R code to create hexamaps for visualizing patterns by age, period and cohorts. 

The R folder contains two files:
1. functions.R which contains the hexamap() function and two small helper function.
2. main.R which has an example for plotting overdose deaths in the US.

The hexamap function's main input is a matrix that has ages as rows and years as columns and the cells contain the main outcome you are interested in plotting.

You can modify the parameters of the function parameters to adjust the appearance of the hexamap as described in the function. 


