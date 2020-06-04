use ticket_bus
go
CREATE TRIGGER ID_passenger on Passenger
instead of delete
as 
begin 
delete from Ticket
where Ticket.ID_passenger in (select deleted.ID_passenger from deleted)
delete from Passenger where Passenger.ID_passenger in (select deleted.ID_passenger from deleted)
end
go

