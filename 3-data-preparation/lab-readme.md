# Data Transformation Lab

### Use Case

From the data we previously collected: name, sex, age,...

We need to find the following:
 - which percentage of users are male vs female
 - what are the ages of most of the users?
 - of the users, how many are in their 20s, 30s, 40s,...
 - convert data from JSON to CSV and store it in S3
 - Transform 'gender' feature to binary value (male=1, female=0)

Final results will have the following headers:
`first,last,age,gender,latitude,longitude`


### Data Sets
I made a local copy of a sample JSON user data set here:
[data/user-data.json](data/user-data.json)


### Approach
Use CloudGuru AWS Sandbox to build the data Transformation


### Reference
 - [AWS Cloud Guru Chapter 4](https://github.com/ACloudGuru-Resources/Course_AWS_Certified_Machine_Learning/tree/master/Chapter4)
