select COUNT(*) FROM UberRequestK02;

--To get overview of the dataset
select * from UberRequestK02;

--To get toatal no. of request 
select count('Request_id') from UberRequestK02;
--The Total no. of req is 6745

--To get request per pickup point
select  `Pickup_point`,count(`Request_id`) 
from UberRequestK02
group by `Pickup_point`;
--So the requests per pickup point are Airport=3238 City=3507

--To get request per status
select Status,count(`Request_id`) 
from UberRequestK02
group by Status;
--So request per status are as cancelled=1264, No cars available = 2650, Trip Completed= 2831

--To get no. of request with no driver assigned 
select count(*) from UberRequestK02
where is_driver_assigned = 'No';
--So the no. of request witrh no driver assigned is 2650

-- To get the cancellation rate by poickup point
SELECT Pickup_point, COUNT(*) AS total_cancellations
FROM UberRequestK02
WHERE Status = 'Cancelled'
GROUP BY pickup_point;
--So the cancellation rate by pickup point is as airport= 198, city= 1066

--To get daily total request 
SELECT Request_Date, count(*) from UberRequestK02
group by Request_Date;
--so daily total request are 
--"07-11-2016"	"1367"
--"07-12-2016"	"1307"
--"13-07-2016"	"1337"
--"14-07-2016"	"1353"
--"15-07-2016"	"1381"

--Higesht request period
SELECT Request_Period,count(*) as max_request
from UberRequestK02
group by Request_Period
ORDER BY max_request DESC
LIMIT 1;
--So morning is the highest request period 

