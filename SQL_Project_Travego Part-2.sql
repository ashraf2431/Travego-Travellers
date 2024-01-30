USE TRAVEGO;

# a.How many female passengers traveled a minimum distance of 600KMs?
SELECT COUNT(*) AS cnt
FROM passenger 
WHERE Gender = 'F' AND Distance >=600;

# b.Write a query to display the passenger details whose travel distance is greater than 500 and who are traveling in a sleeper bus.
SELECT * 
FROM passenger 
WHERE Distance>500 AND Bus_Type='Sleeper';

# c. Select passenger names whose names start with the character 'S'.
SELECT * 
FROM passenger 
WHERE Passenger_name 
LIKE 'S%';

# d. Calculate the price charged for each passenger, displaying the Passenger name, Boarding City, Destination City, Bus type, and Price in the output.
SELECT passenger.Passenger_name,passenger.Boarding_City,passenger.Destination_City,passenger.Bus_Type,price.Price 
FROM passenger,price 
WHERE passenger.Distance = price.Distance;

# e. What are the passenger name(s) and the ticket price for those who traveled 1000 KMs Sitting in a bus?
SELECT passenger.Passenger_name , price.Price 
FROM passenger , price
WHERE passenger.Distance >= 1000 AND passenger.Bus_Type='Sitting' 
AND passenger.Distance = price.Distance;

# f. What will be the Sitting and Sleeper bus charge for Pallavi to travel from Bangalore to Panaji?
SELECT price.Bus_Type ,price.Price 
from passenger,price 
WHERE passenger.Passenger_name='Pallavi' 
AND passenger.Distance=price.Distance;

# g. Alter the column category with the value "Non-AC" where the Bus_Type is sleeper.
SELECT * FROM passenger;
UPDATE passenger SET Category = 'Non-AC' WHERE Bus_Type='Sleeper' ;
SELECT * FROM passenger;

# h. Delete an entry from the table where the passenger name is Piyush and commit this change in the database.
DELETE FROM passenger WHERE Passenger_name='Piyush';
COMMIT;

# i. Truncate the table passenger and comment on the number of rows in the table (explain if required).
TRUNCATE TABLE passenger; -- Trunacte deletes all the row data only table defination remains same.
SELECT * FROM passenger;

# j. Delete the table passenger from the database.
DROP TABLE passenger;