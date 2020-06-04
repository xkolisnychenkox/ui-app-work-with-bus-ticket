use ticket_bus
go


BEGIN TRAN pass_data
INSERT INTO Passenger (ID_passenger, name_passenger)
values ('01',  'Lorem'),
('02', 'Merol');
commit tran pass_data;

BEGIN TRAN bus_data
INSERT INTO Bus (ID_bus, num_bus, bus_name, num_sits)
values ('001', '11', 'Kiev_Odessa', '40'),
		('002', '12', 'Kiev_Kharkov', '20'),
		('003', '13', 'Kiev_Lvov', '30');
commit tran bus_data;


BEGIN TRAN num_bus_data
INSERT INTO Num_bus_st (ID_st, name_st_lat, name_st_ukr)
values ('1', 'Kiev', 'Київ'),
		('2', 'Odess', 'Одеса');
commit tran num_bus_data;