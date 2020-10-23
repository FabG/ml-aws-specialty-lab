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
Use Athena to query the data collected to answer business sections
Use an AWS Glue job to run Apache Spark code to transform the data to CSV format

#### S3
- bucket name: `fab-bucket-user-data`
- user data file: `user-data.json`


### Data Catalog with AWS Glue for S3 Querying
#### Crawler
- crawler name: `fab-crawler-user-data`
- data store: `S3`
- path: `s3://fab-bucket-user-data`
- create IAM Role: `AWSGlueServiceRole-FabUserDataRole`
Notes: To create an IAM role, you must have CreateRole, CreatePolicy, and AttachRolePolicy permissions.
This is where I had issues with TechOps account and why I use a sandbox account
- Frequency: `Run on demand`
- Database: `fab-user-database` (new)  
We then run the crawler that now reaches to S3 and tries to determine a schema from our data.
It then creates a table that we can review

#### Table
A new table was created by the Crawler
- name: `fab_bucket_user_data`
- record count: 1439
- Schema:
```
Column name
Data  type  Partition key Comment
1 first string
2 last  string
3 age int
4 gender  string
5 latitude  double
6 longitude double
```

#### Athena
- query results bucket: `s3://fab-bucket-user-data/athena-result/`
- Database: `fab-user-database` (created via the aws glue crawler)
- Table: `fab_bucket_user_data`
- Sample query:
```
select *
from fab_bucket_user_data
```
Additional queries:
- [age-grouping.sql](scripts/age-grouping.sql)
- [gender-percentage.sql](scripts/gender-percentage.sql)
- [most-common-ages.sql](scripts/most-common-ages.sql)


Now we want to create an ETL job to transform our data from JSON to CSV
We will use again AWS glue

#### AWS Glue to Transformation
- name: `fab-user-data-transform-job`
- type: `Spark`
- script file name: `fab-user-data-transform-job`
- create table in data target: `S3` => format: `CSV`
=> AWS Glue will create some pySpark code for us

In the script, insert code to map gender for male=1 and female-0

In the end, we get the CSV file as planned in S3, with the gender mapping.


### Reference
 - [AWS Cloud Guru Chapter 4](https://github.com/ACloudGuru-Resources/Course_AWS_Certified_Machine_Learning/tree/master/Chapter4)
