Create database OLA;
use OLA;
select * from bookings;
-- 1. Retrieve all successful bookings:
		create view successful_bookings as 
		select * from bookings where booking_status = "success";
        table successful_bookings;

-- 2. Find the average ride distance for each vehicle type:
		create view average_ride_distance as 
        select avg(ride_distance) , vehicle_type from bookings
        group by vehicle_type;
        table average_ride_distance;
      
-- 3. Get the total number of cancelled rides by customers:
		create view cancelled_rides_by_customers as 
		select count(*)from bookings where booking_status = 'Canceled by Customer';
        table cancelled_rides_by_customers;
        
-- 4. List the top 5 customers who booked the highest number of rides:
		create view Top5_Customer_Booked_Ride as 
		select customer_id , count(booking_id) as total_ride 
        from bookings group by customer_id order by total_ride desc limit 5;
        table Top5_Customer_Booked_Ride;
        
-- 5. Get the number of rides cancelled by drivers due to personal and car-related issues:
		 select booking_status , count(*) as Total from bookings
         group by booking_status;
         
-- 6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
		Create view driver_ratings_for_Prime_Sedan as 
        select max(Driver_Ratings) as Maximum_Rating , min(Driver_Ratings) as Minimum_Rating 
        from bookings where vehicle_Type = 'Prime Sedan';
        table driver_ratings_for_Prime_Sedan;
        
-- 7. Retrieve all rides where payment was made using UPI:
		Create view Payment_using_upi as 
		select * from bookings where Payment_Method = 'UPI';
        table Payment_using_upi;
        
-- 8. Find the average customer rating per vehicle type:
		create view customer_rating_vehicle as 
		select Vehicle_Type , round(avg(Customer_Rating),2) as Average_Rating
        from bookings group by Vehicle_Type;
        table customer_rating_vehicle;
        
-- 9. Calculate the total booking value of rides completed successfully:
		Create view Rides_Booking_Values as 
		select count(Booking_status) as Total_Bookings , sum(Booking_Value)/1000000 as Total_Values_M
        from bookings where booking_status = 'success';
        table Rides_Booking_Values;
        
-- 10. List all incomplete rides along with the reason:
		Create view Incomplete_rides_with_reason as 
        select Incomplete_Rides_Reason , count(Incomplete_Rides_Reason) as Total
        from bookings group by Incomplete_Rides_Reason;
        table Incomplete_rides_with_reason;