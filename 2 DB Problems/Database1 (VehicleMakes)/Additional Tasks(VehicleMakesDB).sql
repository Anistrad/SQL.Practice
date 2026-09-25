
---SQL Practice

--============================================================
-- TASK GROUP 1: Basic Data Retrieval
--============================================================
 
-- Task 1.1: Select All Columns
-- Retrieve all data from the VehicleDetails table.
-- Retrieve all data from the Makes table.
-- Retrieve all data from the MakeModels table.
-- Retrieve all data from the subModels table.
-- Retrieve all data from the DriveTypes table.
-- Retrieve all data from the FuelTypes table.
-- Retrieve all data from the Bodies table.
 
SELECT * FROM Bodies
 
SELECT * FROM DriveTypes
 
SELECT * FROM FuelTypes
 
SELECT * FROM MakeModels
 
SELECT * FROM Makes
 
SELECT * FROM SubModels
 
SELECT * FROM VehicleDetails
 
 
-- Task 1.2: Select Distinct Values
-- Retrieve all unique ModelId values from the VehicleDetails table.
 
SELECT DISTINCT ModelID FROM VehicleDetails
 
 
--============================================================
-- TASK GROUP 2: Filtering Data
--============================================================
 
-- Task 2.1: WHERE Clause
-- Retrieve all details of vehicles where the MakeID is 2.
 
SELECT * FROM VehicleDetails
WHERE MakeID = 2
 
 
-- Task 2.2: WHERE with AND
-- Retrieve all details of vehicles where the MakeID is 3 AND the ModelId is 29.
 
SELECT * FROM VehicleDetails
WHERE MakeID = 3 AND ModelID = 29
 
 
-- Task 2.3: WHERE with OR
-- Retrieve all details of vehicles where the MakeID is 3 OR the MakeID is 2.
 
SELECT * FROM VehicleDetails
WHERE MakeID = 3 OR MakeID = 2
 
 
-- Task 2.4: WHERE with NOT
-- Retrieve all details of vehicles where the MakeID is NEITHER 3 NOR 2.
 
SELECT * FROM VehicleDetails
WHERE MakeID NOT IN (2,3)
 
 
-- Task 2.5: IN Operator
-- Retrieve all details of vehicles where the BodyID is either 16 or 15.
 
SELECT * FROM VehicleDetails
WHERE BodyID IN (15,16)
 
 
-- Task 2.6: BETWEEN Operator
-- Retrieve all details of vehicles manufactured between the years 1990 and 2000 (inclusive).
 
SELECT * FROM VehicleDetails
WHERE Year BETWEEN 1990 AND 2000
 
 
--============================================================
-- TASK GROUP 3: Sorting and Limiting Results
--============================================================
 
-- Task 3.1: ORDER BY (Ascending)
-- Retrieve all details from VehicleDetails and sort the results by Id in ascending order.
 
SELECT * FROM VehicleDetails
ORDER BY ID ASC
 
 
-- Task 3.2: ORDER BY (Descending)
-- Retrieve all details from VehicleDetails and sort the results by Id in descending order.
 
SELECT * FROM VehicleDetails
ORDER BY ID DESC
 
 
-- Task 3.3: SELECT TOP
-- Retrieve the top 10 rows from the VehicleDetails table.
 
SELECT TOP 10 * FROM VehicleDetails
 
 
--============================================================
-- TASK GROUP 4: Data Manipulation and Aggregation
--============================================================
 
-- Task 4.1: SELECT AS (Aliasing)
-- Retrieve the Id column from VehicleDetails and alias it as 'VehicleDetailsId'.
 
SELECT ID AS VehicleDetailsID
FROM VehicleDetails
 
 
-- Task 4.1: SELECT AS (Aliasing)
-- Retrieve the year column from VehicleDetails and alias it as 'Made At'.
 
SELECT Year AS 'Made At'
FROM VehicleDetails
 
 
-- Task 4.2: COUNT Function
-- Count the total number of records in the VehicleDetails table.
 
SELECT COUNT(*) FROM VehicleDetails
 
 
-- Task 4.3: MIN Function
-- Find the minimum ID value in the VehicleDetails table.
 
SELECT MIN(ID) FROM VehicleDetails
 
 
-- Task 4.4: MAX Function
-- Find the maximum ID value in the VehicleDetails table.
 
SELECT MAX(ID) FROM VehicleDetails
 
 
-- Task 4.5: GROUP BY
-- Count the number of vehicles for each MakeID and order the results by MakeID.
 
SELECT MakeID, NumberOfVehicle = COUNT(MakeID) FROM VehicleDetails
GROUP BY MakeID
ORDER BY MakeID
 
 
-- Task 4.5: GROUP BY
-- Count the number of vehicles for each ModelID and order the results by ModelID.
 
SELECT ModelID, NumberOfVehicles = COUNT(ModelID) FROM VehicleDetails
GROUP BY ModelID
ORDER BY ModelID
 
 
-- Task 4.6: HAVING Clause
-- Count the number of vehicles for each MakeID, but only include MakeIDs where the
-- count of vehicles is between 6 and 8 (inclusive). Order the results by the count
-- in ascending order.
 
SELECT MakeID, NumberOfVehicles = COUNT(MakeID) FROM VehicleDetails
GROUP BY MakeID
HAVING COUNT(MakeID) BETWEEN 6 AND 8
ORDER BY NumberOfVehicles ASC
 
 
--============================================================
-- TASK GROUP 5: Pattern Matching and Wildcards
--============================================================
 
-- Task 5.1: LIKE Operator (Starts With)
-- Retrieve all details of vehicles where the Vehicle_Display_Name starts with 'AC'.
-- Order the results by ID.
 
SELECT * FROM VehicleDetails
WHERE Vehicle_Display_Name LIKE 'AC%'
ORDER BY ID
 
 
-- Task 5.2: LIKE Operator (Wildcard Character)
-- Retrieve all details of vehicles where the Vehicle_Display_Name is like 'Acur_ %'.
-- Order the results by ID.
 
SELECT * FROM VehicleDetails
WHERE Vehicle_Display_Name LIKE 'Acur_ %'
ORDER BY ID
 
 
-- Task 5.3: Wildcards (Specific Characters)
-- Retrieve the ID and Vehicle_display_name for vehicles with a Vehicle_display_name
-- matching 'Acura RSX 200[36] Base'.
 
SELECT ID, Vehicle_display_name FROM VehicleDetails
WHERE Vehicle_Display_Name LIKE 'Acura RSX 200[36] Base'
 
 
--============================================================
-- TASK GROUP 6: Joining Tables
--============================================================
 
-- Task 6.1: JOIN
-- Retrieve MakeID, Make (from Makes table), and Engine (from VehicleDetails table)
-- for vehicles where MakeID is 2. Join VehicleDetails and Makes tables on MakeID
-- and order the results by MakeID.
 
SELECT Make, Makes.MakeID, VehicleDetails.Engine FROM Makes
JOIN VehicleDetails
ON Makes.MakeID = VehicleDetails.MakeID
WHERE Makes.MakeID = 2
ORDER BY MakeID
 
 
-- Task 6.2: JOIN
-- Retrieve BodyID, BodyName (from Bodies table), and NumDoors (from VehicleDetails
-- table) for vehicles where BodyID is 2 and NumDoors is not null. Join VehicleDetails
-- and Bodies tables on BodyID and order the results by BodyID.
 
SELECT Bodies.BodyID, Bodies.BodyName, VehicleDetails.NumDoors FROM Bodies
JOIN VehicleDetails
ON Bodies.BodyID = VehicleDetails.BodyID
WHERE Bodies.BodyID = 2 AND VehicleDetails.NumDoors IS NOT NULL
ORDER BY Bodies.BodyID
 
 
--============================================================
-- TASK GROUP 7: Advanced Concepts
--============================================================
 
-- Task 7.1: Views
-- Create a view named VehicleSummaryView that shows the Id and Vehicle_Display_Name
-- from the VehicleDetails table for vehicles manufactured after the year 2000.
 
CREATE VIEW VehicleSummaryView AS
SELECT ID, Vehicle_Display_Name
FROM VehicleDetails
WHERE Year > 2000
 
 
-- Task 7.2: EXISTS Operator
-- Retrieve the ID and Engine from VehicleDetails for vehicles that have a FuelTypeID
-- of 1 in the FuelTypes table. Order the results by Id.
 
SELECT ID, Engine FROM VehicleDetails
WHERE EXISTS ( SELECT 1 FROM FuelTypes WHERE FuelTypeID = 1 AND FuelTypes.FuelTypeID = VehicleDetails.FuelTypeID )
ORDER BY ID
 
 
-- Task 7.3: UNION Operator
-- Combine the Engine values from VehicleDetails where Id is 1 with the Engine values
-- from VehicleDetails where Id is 2 into a single result set.
 
SELECT Engine FROM VehicleDetails WHERE ID = 1
UNION
SELECT Engine FROM VehicleDetails WHERE ID = 2
 
 
-- Task 7.4: CASE Statement
-- Retrieve Id, MakeId, and a column aliased as 'Number Of Doors' from VehicleDetails.
-- If NumDoors is NULL, display 0 for 'Number Of Doors'; otherwise, display the actual
-- NumDoors value. Filter the results to include only vehicles with MakeId 1 or 4,
-- and order the results by MakeId in descending order.
 
SELECT ID, MakeID,
CASE
    WHEN NumDoors IS NULL THEN 0
    ELSE NumDoors
END AS 'Number Of Doors'
FROM VehicleDetails
WHERE MakeID = 1 OR MakeID = 4
ORDER BY MakeID DESC
 
