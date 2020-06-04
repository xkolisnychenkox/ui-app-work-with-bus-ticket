use tickebus
go

/*
CREATE PROC delete_data_passenger 
AS
BEGIN
	SELECT ID_passenger AS name_passenger
	FROM Passenger
END;
*/

CREATE PROCEDURE uspTicket
AS
BEGIN
    SELECT 
        ID_ticket, 
        price
    FROM 
        Ticket
    ORDER BY 
        ID_passenger;
END;
EXEC uspTicket;
go

CREATE PROCEDURE uspNum_bus_st
AS
BEGIN
    SELECT 
        ID_st, 
        name_st_ukr
    FROM 
        Num_bus_st
    ORDER BY 
        name_st_ukr DESC;
END;
EXEC uspNum_bus_st;
go