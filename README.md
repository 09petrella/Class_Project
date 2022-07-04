# Class_Project

## Module Overview - Presentation

### LINKS

#### Google Slides

https://docs.google.com/presentation/d/1DBgfBOLrG_iOOkbeQgfnrjTCTYPMPbHfAJ6IBxYKTk4/edit#slide=id.g11fc4df2689_0_50

#### Tableau

https://public.tableau.com/app/profile/stephanie.e.laforge/viz/IMDBMOVIEPROJECTDASHBOARD/Actorsproducer?publish=yes

Data set from IMBD that contains information about the top movies and includes categories like years, production companies, and directors.
The key factors that we are going to analyze is to merge the data sets to get one clean file that will contain the needed information from The IMDB Movies CSV and the Numbers CSV.  Our merged movie database we will analyze several key factors; actors, budget, & directors to help play a role in determining revenue. 
In order to predict correctly we had to make tables and drop information that was not valuable to the equation. After keeping the columns we ran into some issues and had to make sure that there were no corruptions while importing our csv’s to created merged data frames. After fixing a few errors we were able to upload, merge, and export to SQL.
TOur main focus will be to predict the revenue for future movies based off the actors, budget, and director. 
After realizing there were only several aspects we wanted to focus on we chose to stick with main components of actors vs budget since future investors or movie companies would want to use when receiving data information from a large movie dataset. To predict if a movie is going to profitable and make more revenue than their original budget will be a big deal breaker in future choices. 

Reason:
- To provide beneficial data to future producers when casting an actor. This model will be able to predict how future ratings due to a specific actor will effect ticket sales, movie revenue, and possible sequel movies for future prodcution companies or streaming platforms to invest in.

Main Questions to be asked: 
- Will a specific actor casted based on movie ratings, quantity of movies, and gross revenue play a large role in these outcomes?
- Does a specific actor with high average ratings confirm a high rating for the future?
- What other catgeories play a role in these ratings. (Genre, year made, director, etc?)

Description:
- Based on the answers from these questions we will be able to assume rating predicitions based off reasoning from the actor chosen.
The data will be displayed in tablkes, charts, merged data sets, and multiple charts to give visualiztions on outcomes. 

The data is a combination of three data sources. 
IMDB - IMDB Movies Dataset | Kaggle
Kaggle - EDA on IMDB Movies Dataset | Kaggle 
Numbers - The Numbers - Movie Budgets (the-numbers.com)




## Database:
- Data will be stored in AWS and we will create a database engine that will allow Pandas to communicate with PostgresSQL
- Below is a excerpt from the code used to cleaned the Data from each CSV imported into Jupyter Notebook. After importing the CSV, it was cleaned by dropping columns that were not needed and creating data frames with the new columns free from any Nan’s or abstract characters. As you can see below we ran into an issue from the Numbers budget having a “A” character in front of the dollar amounts. By catching this we were able to have clean imported data.
![data1](https://user-images.githubusercontent.com/98365309/175853946-0c323988-ce9c-4baf-95c3-a266170150cb.png)


Plan for the model outputs - Put in name of actor and see what name would be… how much is this movie going to make based off of this actor… / director… 

![SQLDATA](https://user-images.githubusercontent.com/98365309/175854523-3f980f1b-3057-4fff-a4d1-f549adc11e29.png)

## Machine Learning 
- Supervised learning
The preliminary data preprocessing was to take the three data sets used and to clean the data so it can be ready to be used in data frames, tables, dropped columns, and removed empty spaces.
The feature engineering:
Created Target Variable “movie_success” for classification supervised ML predictions. Movie Success is determined if the gross revenue column was greater than the movie’s budget column (1). If the gross revenue was equal to or less than the budget, a 0 was used to indicate the movie was unsuccessful. Label Encoding was completed for the categorical features to prepare for the ML process. For the ML models practiced with that benefit scaling, the StandardScaler was implemented to scale and normalize the features.
Preliminary feature selection & decision making process:
The feature selection was determined by discussing which aspects of a movie would have an effect on determining if a movie would produce a profitable result. Past movie’s budget and revenue are key features for the model, and additional features that play a part in the movie’s success include genre, star actors/actresses, writers, directors, and runtime.
How data was split into training and testing sets:
The train_test_split module is used to split our features and target variable into training and test datasets.

The Model Choice - 
Decision Tree Classifier, handles outliers the best


![image (2)](https://user-images.githubusercontent.com/98365309/175854011-3724cf1b-45b6-4641-b868-73da7e027fe3.png)

## EDA

Used to import pandas, matploblib.pyplot to create graphs needed.

After cleaning through the data and creating tables needed in order to gather the data needed that will play a role in our predictions.

Performing EDA will will help give insight to the data, an understanding of the data types, and allow us to determine what features are important and the relationships between them. We can also test any underlying assumptions during the exploratory phase.
It was important to find 
Started with Data Analysis, Correlation Analysis, Categorical Analysis, Visualizations, Data Relationships

After viewing the graphs in these visualizations we can start asking important questions:
One of the Gross Revenue Graphs is showing a increase in movies revenue from 1980 to 2020.
What is causing this? More Movie theaters? Increase in Rate? More people going to moves?

![eda1](https://user-images.githubusercontent.com/98365309/175854130-5f0e01b1-0c69-4c8f-aa02-bd418cc64239.png)

![eda2](https://user-images.githubusercontent.com/98365309/175854184-c87db27b-8c7a-4b20-a713-6e53156a394a.png)

## Class Project Information - 

Communication Protocol:
-The group will communicate in our group thread in Slack. When changes are committed we will notify the other group members and take turns reviewing pull requests.

-Outside of class we will meet on Zoom on Tuesday nights from 7-9 (later if need be) and Thursday nights from 7-9 using the following link:
https://mville-edu.zoom.us/j/6911637541
