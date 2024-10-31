# Project4-Group6
<img width="500" src="https://github.com/user-attachments/assets/6e9f0235-acca-4f45-a798-d9984d1c66c3">

## Project Proposal
Forecasting Turnover in the Australian Retail Sector using Machine Learning

 ### Group members
 - [Monica](https://github.com/kuraimonica)
 - [Khushi](https://github.com/dakhushi)
 - Napat
 - [Greg](https://github.com/enumerbs)

---

## Introduction

In the fast-paced retail environment, understanding sales trends and accurately forecasting
future turnover is critical for business success. This project aims to utilize machine learning
techniques on the Retail Trade, Australia dataset to predict future turnover, providing insights that
can enhance decision-making for inventory management, marketing strategies, and overall
business planning.

## Objectives
- To analyze historical turnover data to identify trends in the Australian retail sector
- To develop a machine learning model and use that to forecast turnover across the Australian Bureau of Statistics (ABS) categories for the dataset.
- To visualize and interpret the results for actionable insights that can inform retail strategies.

## Dataset

-[Australian Bureau of Statistics](https://www.abs.gov.au/statistics/industry/retail-and-wholesale-trade/retail-trade-australia/latest-release)
- In particular, the "Table 1. Retail turnover, by industry group" dataset in that release.
    - Refer to the data downloads page: https://www.abs.gov.au/statistics/industry/retail-and-wholesale-trade/retail-trade-australia/latest-release#data-downloads
- The ABS Retail Turnover categories are:
    - Cafes, restaurants and takeaway food services
    - Clothing, footwear and personal accessory retailing
    - Department stores
    - Food retailing
    - Household goods retailing
    - Other retailing

Original     : Raw data values.
Seasonally   : Adjusted for seasonal effects.
Trend        : Long-term trends in the data.
Total        : Total turnover for each of the above aspects.

## Methodology


1. Data Collection
- Obtain the Retail Trade dataset from the Australian Bureau of Statistics or relevant
data repositories.
2. Data Preparation
- Load the Data: Utilize Python's Pandas library to load and inspect the dataset.
3. Data Cleaning:
- Handle missing values, remove duplicates, and address outliers
4. Machine Learning:
- Split the data into training and testing subsets

- Compare and Choose appropriate ML models e.g. Random Forest Regression, Neural Prophet, LSTM, ARIMA.\
  Choice of Model was driven by use case, as the aim was to create a timeseries forecast and the above models are suitable for such.

5. Presentation:
- Plot results using Matplotlib
- Provide user interaction via queryable API and/or web application.

 ## Evaluation Matrix**
- Use MAE, MSE and R² metrics to evaluate model performance

## Expected Outcomes
- A trained predictive model capable of accurately forecasting retail turnover.
- Visualizations that convey findings to stakeholders for informed decision-making.

**Trial 1: Random Forest Regressor Model - Evaluation Metrics and Prediction for 2025 Turnover**

![image](https://github.com/user-attachments/assets/5da3fa88-5b2d-4808-b15c-3ffd763ecf6f)

**Trial 2,3,4: ARMA, ARIMA and Neural Prophet - Evaluation Metrics**

![image](https://github.com/user-attachments/assets/f2d4d210-1840-4a22-8a59-780dbf2438d0)

**Trial 5: LSTM Model - Evaluation Metrics and Prediction for 2025 Turnover**

**Less Performing LSTM Model**

Initinal Configuration
- -Input features - Cleaned Turnover data
- - Model architecture - Single layer LSTM with dropout

Model Training
- - Layer structure is composed of 100 LSTM units to capture underlying patterns in the data
- - Included dropout layer to prevent overfitting
- - Adam optimizer was chosen
- - Epochs - was initially set to 100 and later changed to 150 to increase performance

![image](https://github.com/user-attachments/assets/6ab37080-c36d-4a33-83fe-0dad767f5606)

**LSTM Model Optimisation**

Advanced Architectures
- Random Split between train-test was used
- Bidirectional LSTM
This allows the Model to learn from past and future

Stacked LSTM
- Multiple LSTM layers stacked on top of each other help the model learn more complex features.

<img width="500" src="https://github.com/user-attachments/assets/7529293e-db85-4e6f-b241-b4420ce84fd4">


**Final Model Selection**

<img width="700" src="https://github.com/user-attachments/assets/c5b0e631-8890-4d29-a030-293900d960ef">

The preferred model is LSTM with highest R2 Values 1 and less MSE.
- It produced better results compared to other Models
- It works well with sequential data, making it ideal for time series forecasting.
- LSTMs have memory cells that can maintain information over long period.

## Folder structure & contents guide (for this GitHub repository)
###
Top-level files:
- this README.md file
- Jupyter Notebooks containing data modelling & results by team members:
    - **RetailTurnover_Analysis_KK_final.ipynb** contains the data preparation, coding, and results for the final LSTM-based Machine Learning model.
    - **RetailTurnover_Analysis_LSTM MODEL - Monica** contains earlier development work for the LSTM approach
    - **RetailTurnover_GP.ipynb** contains development work on ARMA, ARIMA, and NeuralProphet models.

Subfolders:
- db
    - SQLite database `ABS_RetailTurnover.db` containing the ABS Retail Turnover dataset for this project (converted from the original Excel file download)
    - schema
        - Database schema, ERD, table creation script
        - `sqlite_Project_SQL_Queries.txt` file contains steps to reproduce the database and populate it with the dataset.
- Notebooks
    - dev
        - Area for storing team members' work-in-progress (development) versions of Jupyter Notebooks.
- presentation
    - PDF version of the final presentation 'slides' for this project.
- Resources
    - Excel and CSV files containing the ABS Retail Turnover dataset for this project.

## Implementation Notes

The SQL database version of the source dataset was used in the **RetailTurnover_GP.ipynb** Jupyter Notebook to demonstrate how the data could be read from an SQL database, as this was a requirement of the project.\
However, since the source dataset was small, most team members preferred to read from the CSV form of the dataset, particularly when developing code in the Google Colab (https://colab.google/) environment.

## Tools and Technologies
- Programming Language: Python
- Libraries: Pandas, Matplotlib, Scikit-learn
- Data Storage: CSV and SQL database for handling data

## Resources
[Australian Bureau of Statistics - Retail Trade statistics](https://www.abs.gov.au/statistics/industry/retail-and-wholesale-trade/retail-trade-australia/latest-release) (including data up to August 2024 inclusive)

Chat GPT

[A Guide to Time Series Forecasting in Python](https://builtin.com/data-science/time-series-forecasting-python)

[Scikit Lean Documentation](https://scikit-learn.org/dev/modules/generated/sklearn.ensemble.RandomForestRegressor.html)
