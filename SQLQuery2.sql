use tickebus
GO

IF exists (select * FROM SYS.objects WHERE name = 'Price_')
drop table Price_
GO
IF exists (select * FROM SYS.objects WHERE name = 'Ticket')
drop table Ticket
GO
IF exists (select * FROM SYS.objects WHERE name = 'Start_')
drop table Start_
GO
IF exists (select * FROM SYS.objects WHERE name = 'Finish_')
drop table Finish_
GO
IF exists (select * FROM SYS.objects WHERE name = 'Num_bus_st')
drop table Num_bus_st
GO
IF exists (select * FROM SYS.objects WHERE name = 'Bus')
drop table Bus
GO
IF exists (select * FROM SYS.objects WHERE name = 'Passenger')
drop table Passenger
GO


create table Passenger
(ID_passenger char(100) NOT NULL PRIMARY KEY,
name_passenger varchar(100) NOT NULL )
GO



create table Bus
(ID_bus char(10) NOT NULL PRIMARY KEY,
num_bus char(10) NOT NULL,
bus_name varchar(100) NOT NULL,
num_sits int NOT NULL)

GO



create table Num_bus_st
(ID_st char(2) NOT NULL PRIMARY KEY,
name_st_lat varchar(100) NOT NULL,
name_st_ukr varchar(100) NOT NULL)

GO


create table Start_
(ID_start char(10) NOT NULL PRIMARY KEY,
start_time time NOT NULL, 
ID_st char(2) NOT NULL,
ID_bus char(10) NOT NULL,
FOREIGN KEY (ID_st) REFERENCES Num_bus_st (ID_st),
FOREIGN KEY (ID_bus) REFERENCES Bus (ID_bus))

GO



create table Finish_
(ID_finish char(10) NOT NULL PRIMARY KEY,
finish_time time NOT NULL,
ID_st char(2) NOT NULL,
ID_bus char(10) NOT NULL,
FOREIGN KEY (ID_st) REFERENCES Num_bus_st (ID_st),
FOREIGN KEY (ID_bus) REFERENCES Bus (ID_bus))

GO

create table  Ticket
(ID_ticket char(10) NOT NULL PRIMARY KEY,
ID_passenger char(100) NOT NULL,
ID_start char(10) NOT NULL,
ID_finish char(10) NOT NULL,
price money NOT NULL, 
FOREIGN KEY (ID_passenger) REFERENCES Passenger (ID_passenger),
FOREIGN KEY (ID_start) REFERENCES Start_ (ID_start), 
FOREIGN KEY (ID_finish) REFERENCES Finish_  (ID_finish))
GO


create table  Price_
(Price_ money NOT NULL,
ID_bus char(10) NOT NULL,
FOREIGN KEY (ID_bus) REFERENCES Bus (ID_bus))
GO

