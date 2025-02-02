# Randomized-stock-prediction-with-julia
using python, jupyter and the new language of the field in data science called julia to do machine learning with a stock to produce results

by doing data analysis on the data, i can conclude that the stock would have a downtrend. 
![time_series_analysis](https://github.com/user-attachments/assets/8195b022-be00-47b3-ad63-79695eab6fea)

more of the analysis that the opening, closing, low, high have positive correlation with each other therefore migh probably not be needed for analysis
![correlational_heatmap](https://github.com/user-attachments/assets/d7f85721-db39-4c9b-9709-b1073f1c1cb8)



after data cleaning process, most of the outliers have been removed
![Boxplot_closing_price](https://github.com/user-attachments/assets/34a623e0-9e4f-48c5-a843-95447059d6df)


![dataset_after_outlier_detection_and_removal](https://github.com/user-attachments/assets/d1cfac76-542c-47ed-a92b-9f9aefbc194d)

by conducting volatility analysis, i saw that the stock was volatile during its early periods and was less volatile after its IPO
![Volatility analysis](https://github.com/user-attachments/assets/b353d0d7-571f-46ac-96aa-00fda03e1340)



after training and prediction measurement via julia, the accuracy of the model via training set was 96.5% and testing set was 98.72%
![Actuals_vs_Predicted](https://github.com/user-attachments/assets/b2e94149-5159-4246-b60a-70a1644921f3)

in conclusion, the price has been volatile and will have a downtrend in the forseeable future


