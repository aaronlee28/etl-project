# etl-project

ETL stands for extract, transform, and load. The first part of the project is to extract data from various websites. The first data is from Kaggle, which is on US Weather, and the second data is from Smoosavi.org, which is on traffic accidents in the US gathered by a research scientist at Lyft. 

The second part of the project is the cleanup and analysis, where we use Jupyter Notebook to clean, filter, transform and join the two datasets. 

And The last part is to load the final dataset into a database in PostgreSQL. The reason why we decided to load our dataset into PostgreSQL is because our final product is in a form of a table, which resulted from a join, so PostgreSQL would make sense since we can draw an entire schema of our datasets.  
