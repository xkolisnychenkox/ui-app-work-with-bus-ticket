use ticket_bus
go

EXEC sp_addlogin @loginame = 'Dima',
      @passwd = 'PT7bb8EJ'

EXEC sp_adduser 'Dima'

EXEC sp_addrolemember 'db_datawriter', 'Dima'

go


EXEC sp_addlogin @loginame = 'Nikolai',
      @passwd = 'Uywdxbwd'

EXEC sp_adduser 'Nikolai'

EXEC sp_addrolemember 'db_datareader', 'Nikolai'

go