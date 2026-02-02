create database BDA_191;

use BDA_191;

drop table weather;

create table weather(
id int auto_increment primary key,
curr_timestamp  timestamp DEFAULT CURRENT_TIMESTAMP,
temperature float,
humidity float,
location varchar(50),
pressure float,
windspeed float,
precipitation float,
aqi int
);

insert into weather(temperature,humidity,location,pressure,windspeed,precipitation,aqi)
values 
(32.5,80,"Bengaluru",1008,5.2,67,120),
(22.3,78,"Delhi",1009,4.9,78,110),
(12.4,67,"Butwal",1100,6.1,89,120),
(28,78,"Mumbai",1010,5.2,99,200),
(24.0, 55,"Bengaluru" ,1012, 4.5,87, 60),
(22.5, 60,'Mumbai', 1013, 4.0,77, 55);

select * from weather;

-- 1)Descriptive analysis: We want to see the avg temp and max aqi for each city

select location,avg(temperature) as avg_temp,max(aqi) as max_aqi from weather
group by location;

-- 2)Diagnostic analysis: We wnat to see relation between humidity and temperatur-- 

select location,temperature,humidity from weather
where temperature<15 and humidity>10
order by humidity desc;


