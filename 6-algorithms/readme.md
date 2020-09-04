# Algorithms

### Use Case
Mr. K wants to build a model that can predict the legitimacy of a UFO sighting based on information supplied by the submitter.


We can use the ground truth dataset used in the previous lab. This data has been collected by Mr. K's team who painstakingly determined weather a sighting could be explained (as a hoax or other natural explaination), unexplained or probable.




##### Approach
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


##### Notebook
- [lab notebook](ufo-algorithms-lab.ipynb)
