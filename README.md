# SQL: Modelling, Engineering, and Analysis 

### Project description:
Design the SQL tables and dependencies to hold the data from the CSV files, import the CSV files into a SQL database, and answer questions about the data.
### Project outline
- Part 1:
    - Generating random geographic coordinates & using these coordinates and the openweathermap api to retrieve the cities. 
    - Creating a series of scatter plots to showcase the following relationships: Latitude vs. Temperature, Latitude vs. Humidity, Latitude vs. Cloudiness, and Latitude vs. Wind Speed. 
    - Performing analysis comparison between the northern and the sourthern hemispheres (see insights below)
    - Generating a csv file from the dataframe created. 
- Part 2:
    - Using the weather data (the generated csv file) to plan future vacations based on information received from geoViews Python library, and the Geoapify API. To conclude which destination are most suitable for vacation, I have taken **Temperature, Wind Speed, Cloudiness, and Humidity level into account. 

#### Libraries & APIs used
1. Libraries: 
    1. Matplotlib
    2. Pandas
    3. NumPy
    4. time
    5. requests
    6. scipy
    7. hvplot
    8. geoViews
2. APIs:
    1. Geoapify
    2. openweathermap


#### TLDR - Conclusions
##### Analysis comparison northern and southern hemispheres: 
*  1st Comparison: 
    * **The Northern Hemisphere:** The linear relationship and the correlation coefficient between Latitude and Max Temperature in the Northern Hemisphere suggest a **strong negative relationship**. This makes sense; **the temperature decreases** as we move towards the North Hemisphere and the north pole. 
    * **The Southern Hemisphere:** The linear relationship and the correlation coefficient between Latitude and Max Temperature in the Southern Hemisphere suggest a **strong positive relationship**. This makes sense; **the temperature increases** as we move away from the south pole toward the prime meredian of the earth.  
* 2nd Comparison: 
    * **The Northern &  Southern Hemispheres:** The low r-squared value of 0.001987981519169641 and 0.001987981519169641 for the North and South Hemispheres suggests that Latitude explains only a small portion of the variation in Humidity. This indicates that Latitude alone is not a strong predictor of Humidity. Similarly, the correlation coefficient of -0.04458678637410016 and 0.0266789376537484 of the north and south hemispheres, which is close to 0, indicates a weak and almost negligible linear relationship between Latitude and Humidity.**From these results, it can be concluded that Latitude alone has minimal influence on Humidity.**
* 3rd Comparison:
    * **The Northern &  Southern Hemispheres:** The r-squared value of 0.0026492315380715658 and 0.012520193707532417 of the north and south hemispheres indicates that Latitude explains only a small fraction of the variation in Cloudiness. This suggests that Latitude alone is not a strong predictor of Cloudiness. Similarly, the correlation coefficient of -0.051470686201677586 and -0.11189367143646865 of the north and south hemispheres, which is close to 0, indicates a weak and almost negligible linear relationship between Latitude and Cloudiness. **Based on these findings, it can be inferred that Latitude has minimal influence on Cloudiness.**
* 4th Comparison: 
    * **The Northern Hemisphere:** The linear relationship *(r_square  = 0.0008293753684501447)* as well as the correlation *(pearsonsr = statistic=0.02879887790262228, pvalue=0.5736954728511657)* between Latitude and Wind Speed in the Northern Hemisphere barely exists.**From this analysis, it can be inferred that Wind Speed does not show a significant dependence on Latitude in the northern hemisphere, meaning, Wind Speed can vary equally across different cities with different latitude coordinates.** 
    * **The Southern Hemisphere:** The linear relationship *(r_square =  0.03453014357821518)* as well as the correlation *(statistic=-0.1858228822783006, pvalue=0.010261658359267328)* between Latitude and Wind Speed in the South Hemisphere barely exists. The r-squared value of 0.03453014357821518 indicates that the linear regression model explains only a small proportion of the variability in Wind Speed based on Latitude in the southern hemisphere. This suggests that Latitude has limited predictive power in explaining the variation in Wind Speed. The correlation coefficient indicates on negative correlation between Latitude and Wind Speed in the southern hemisphere (statistic=-0.1858228822783006). **In summary, the analysis suggests Latitude has a weak and limited relationship with Wind Speed in the southern hemisphere.**

#### Folder structure
``` yml
.
├── Analysis_World
│   ├── output_data                      
│   │   ├── cities.csv                           
│   │   ├── Fig1.png
│   │   ├── Fig2.png  
│   |   ├── Fig3.png
│   |   ├── Fig4.png 
│   ├── starter_data
│   |   ├── _pycache_
│   |   |   ├── api_keys.cpython-310.pyc 
│   |   ├── images
│   |   |   ├── Fig1.png 
│   |   |   ├── Fig2.png 
│   |   |   ├── Fig3.png 
│   |   |   ├── Fig4.png 
│   |   ├── cities.csv 
│   |   ├── VacationPy.ipynb     # Analysis notebook - Part 2
│   |   ├── WeatherPy.ipynb      # Analysis notebook - Part 1                    
|___README.md
``` 
