Select distinct city from station where id%2=0;

-- Find the difference between the 
-- total number of CITY entries in the table and the number of distinct CITY entries in the table.
select count(city)-count(distinct city) from station;

-- Query the two cities in STATION with the shortest and longest CITY names, as
-- well as their respective lengths (i.e.: number of characters in the name). 
-- If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
SELECT TOP 1 CITY,LEN(CITY) from STATION where LEN(CITY)=(Select MIN(LEN(CITY)) from station) order by city asc;
SELECT TOP 1 CITY,LEN(CITY) from STATION where LEN(CITY)=(Select MAX(LEN(CITY)) from station) order by city asc;


--Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. 
--Your result cannot contain duplicates.
select distinct city from station where city like '[aeiou]%'

--Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.
select distinct city from station where right(city,1) in ('a','e','i','o','u');
SELECT DISTINCT CITY FROM STATION WHERE CITY LIKE '%[aeiou]';

--Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last 
--characters. Your result cannot contain duplicates.
SELECT DISTINCT CITY FROM STATION WHERE CITY LIKE '[aeiou]%[aeiou]';


--Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.
select distinct city from station where city not like '[aeiou]%';


--Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.
select distinct city from station where city not like '%[aeiou]';

--Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.
select distinct city from station where city not like '%[aeiou]' or city not like '[aeiou]%';

--Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.
select distinct city from station where city not like '%[aeiou]' and city not like '[aeiou]%';

--Query the Name of any student in STUDENTS who scored
-- higher than  Marks. Order your output by the last three characters of each name. If two or more 
--students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), 
--secondary sort them by ascending ID.
select name from students where marks > 75 order by right(name,3) asc,id asc;

--Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.
select name from employee order by name asc;

--Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a 
--salary greater than  per month who have been employees for less than  months. Sort your result by ascending employee_id.
select name from employee where salary>2000 and months<10 order by employee_id;

--Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.
--Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
select ci.name from city ci inner join country co on ci.Countrycode = co.code
where co.continent = 'Africa';


