# Evaluation and Optimization Lab

### Use Case
In last Lab, we showed 2 models to Mr K:
 - XGBoost
 - Linear Learner

Mr. K wants to have the most optimal Linear Learner model for identifying the legitimacy of a reported UFO sighting.
Before sending out a team of scientists, he wants the most optimized model, improve any performance in training and possibly improve accuracy.

What we need to do:
 - tune our model to find the most optimized model for our problem
 - determine if the model is less/more accurate or about the same
 - what objective metric would we want to monitor to ensure this? How do we plan on measuring succes
 - which hyperparameters need to be tuned? what combination of hyper parameters need to be used?
 - how much faster was training time improved?

 Final results we need to find from this lab and present to Mr K:
 - best training job hyperparameters
 - difference in time between baseline model and optimized model
 - difference in accuracy between models

### Approach
 - Create a SM hyper parameter job with different ranges of values for hyperparamters to find the best configuration to minimize the `validation:objective_loss` metric.
 - use the newly optimized hyperparameters to rerun out training job. Compare the results of time to complete and accuracy to the baseline model.

 

### Resources

- [Automatic model Tuning with SageMaker](https://www.youtube.com/watch?v=ynYnZywayC4)
- [linear learner hyperparameters](https://docs.aws.amazon.com/sagemaker/latest/dg/ll_hyperparameters.html)

- [cloud guru train recordIO protobuf](https://github.com/ACloudGuru-Resources/Course_AWS_Certified_Machine_Learning/blob/master/Chapter8/ufo_sightings_train_recordIO_protobuf.data)
- [cloud guru validation recordIO protobuf](https://github.com/ACloudGuru-Resources/Course_AWS_Certified_Machine_Learning/blob/master/Chapter8/ufo_sightings_validatioin_recordIO_protobuf.data)
- [cloud guru original notebok](https://github.com/ACloudGuru-Resources/Course_AWS_Certified_Machine_Learning/blob/master/Chapter8/ufo-evaluation-optimization-lab.ipynb)
-



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
