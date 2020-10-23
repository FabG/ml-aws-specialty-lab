# Algorithms

### Use Case
Mr. K wants to build a model that can predict the legitimacy of a UFO sighting based on information supplied by the submitter.


We can use the ground truth dataset used in the previous lab. This data has been collected by Mr. K's team who painstakingly determined weather a sighting could be explained (as a hoax or other natural explaination), unexplained or probable.




##### Things to think of
What we want to find out and questions to answer:
- build a model to dertermine weather newly reported UFO sightin are legitimate or not.
- Mr K requires us to be at least 90% accurate
- which algorith to choose?
- what does our data look like? Do we need to transform it? Are we missing any values?
- How accurate is our model.


Final results:
- model artifact stored in S3
- present model valiation metrics (accuracy, recall, f1 score,...)
- present model error rate (decrease as we are training our model)



##### Approach
We can try a couple of algorithms:
###### 1. XGBoost Algorithm
We can use XGBoost algorithm as a multi-classification problem with `researchOutcome` being our target attribute.
Goal is to minimize the training and validation error.

Reasons for XGBoost:
- pretty simple to implement.
- It only needs 2 hyper parameters with 35 optional.
It's easy to implement and get started quickly.

Note: We can use it for ranking pbs regression pbs too. But here we will use it for classification.


###### 2. Linear Learner
Build a model using the Linear Learner algorithm as a multi-classification problem with `researchOutcome` as the attribute.
Goal is to maximize the training accuracy (and other metrics).

This algo is very flexible.
We can train different models and determine which attribute in our data are the most determining factors.
Another cool feature: it has built-in hyper parameters tuning.



##### Notebook
- [lab notebook](ufo-algorithms-lab.ipynb)

##### Data
- [ufo dataset](data/ufo_fullset.csv)

sample:
```
"reportedTimestamp","eventDate","eventTime","shape","duration","witnesses","weather","firstName","lastName","latitude","longitude","sighting","physicalEvidence","contact","researchOutcome"
"1977-04-04T04:02:23.340Z","1977-03-31","23:46","circle",4,1,"rain","Ila","Bashirian","47.3294444",-122.5788889,"Y","N","N","explained"
"1982-11-22T02:06:32.019Z","1982-11-15","22:04","disk",4,1,"partly cloudy","Eriberto","Runolfsson","52.664913",-1.034894,"Y","Y","N","explained"
"1992-12-07T19:06:52.482Z","1992-12-07","19:01","circle",49,1,"clear","Miller","Watsica","38.9516667",-92.3338889,"Y","N","N","explained"
"2011-02-24T21:06:34.898Z","2011-02-21","20:56","disk",13,1,"partly cloudy","Clifton","Bechtelar","41.4969444",-71.3677778,"Y","N","N","explained")
```
