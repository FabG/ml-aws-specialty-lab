# Modeling

### Use Case
Identifying Sensor Locations
Mr. K wants to deploy a network of 10 sensors across the globe.

He would like to locate these sensors in the center of the 10 most likely locations for UFO.

Questions:
1. What type of generalization are we trying to make?
2. Do we have enough data? What does our data look like?
3. What algorithm can help us solve this problem?
4. Where should we launch the sensors?

Answers:
1. we are trying to cluster the dataset into 10 groups where there are the most sightings close one to the others.

2. Data is available here: [ufo_fullset.csv](data/ufo_fullset.csv)
It has 18,000 records.
It is synthetic data.
Key features:
- **reportedTimestamp**: date when the UFO sighting was reported
- **eventDate** and **eventTime**: date when the UFO sighting happened
-  
- **latitude** and **longitude**: location where the UFO sighting happened
- **shape**: shape of the UFO
- **duration**: how many seconds the sighting happened
- **weather**
...

Sample:
```
"reportedTimestamp","eventDate","eventTime","shape","duration","witnesses","weather","firstName","lastName","latitude","longitude","sighting","physicalEvidence","contact","researchOutcome"
"1977-04-04T04:02:23.340Z","1977-03-31","23:46","circle",4,1,"rain","Ila","Bashirian","47.3294444",-122.5788889,"Y","N","N","explained"
"1982-11-22T02:06:32.019Z","1982-11-15","22:04","disk",4,1,"partly cloudy","Eriberto","Runolfsson","52.664913",-1.034894,"Y","Y","N","explained"
"1992-12-07T19:06:52.482Z","1992-12-07","19:01","circle",49,1,"clear","Miller","Watsica","38.9516667",-92.3338889,"Y","N","N","explained"
```
That seems like a good enough data Sample

3. We can use Amazon Sagemaker and K-means clustering algorithm to locate the 10 best locations (unsupervised learning algorithms that find discrete groupings)
We would use K=10 since we want 10 clusters.
We can then visualize the locations in Quicksight.

We will load the data into S3.
The we load the data into our  notebook instance in SageMaker.
We train the model on it with built-in K-means algorithm on it.
We can then view the results.
Once we have a model, we can use it to find the 10 centroids locations.

#### Notebook
- [lab notebook](ufo-modeling-lab.ipynb)


### Resources
- [Amazon K means](https://docs.aws.amazon.com/sagemaker/latest/dg/k-means.html)
- [Amazon model deserialization](https://docs.aws.amazon.com/sagemaker/latest/dg/cdf-training.html)
