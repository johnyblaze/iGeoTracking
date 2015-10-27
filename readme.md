## iGeo Tracking 

## MongoDB Help
1- mongo

2- show dbs; 
This will show the all databases in the system

3- use dbName;
This will help in choosing DB for the system

4- db.getCollectionNames();
This will show all collection

5- db.car.find().pretty() 
To show car collections in human readable formate

6- db.car.find({imei:"2547845"},{imei : 1, _id:0}) 
This will show only imei of document which have imei = to 2547845

7- db.car.insert({imei:457845,model:2010,company:Honda}) 
Insert use to enter records

8- db.car.find({created_at:{$gt:45454}}).limit(10) 
To get all records generated after this day

9- db.car.find({$or[{imei:32222},{model:2015}]}).pretty() 
Mongo OR operator

10- db.car.find({$and[{imei:32222},{model:2015}]}).pretty() 
Mongo AND operator

11- db.car.find({imei:{$not:/25454/}}).pretty() 
Mongo NOT operator 

12- db.car.find({speed:{$exist : true}}) 
To check if specific key exist in the document

13- db.car.find({}, {speed:true,_id:false}),sort({speed:1}) 
Sort Ascending

14- db.car.find({}, {speed:true,_id:false}),sort({speed:-1}) 
Sort Descending
