INSERT INTO Dates (cod_date, cod_area, cod_patient, cod_doctor, date_day, time_day)
VALUES
    (1, RAND()*(25-1)+1, RAND()*(25-1)+1, RAND()*(25-1)+1, DATEADD(YEAR, -1, GETDATE()) + ABS(CHECKSUM(NEWID())) % 365, DATEADD(MINUTE, ABS(CHECKSUM(NEWID())) % 900, '08:00')),
    (2, RAND()*(25-1)+1, RAND()*(25-1)+1, RAND()*(25-1)+1, DATEADD(YEAR, -1, GETDATE()) + ABS(CHECKSUM(NEWID())) % 365, DATEADD(MINUTE, ABS(CHECKSUM(NEWID())) % 900, '08:00')),
	(3, RAND()*(25-1)+1, RAND()*(25-1)+1, RAND()*(25-1)+1, DATEADD(YEAR, -1, GETDATE()) + ABS(CHECKSUM(NEWID())) % 365, DATEADD(MINUTE, ABS(CHECKSUM(NEWID())) % 900, '08:00')),
    (4, RAND()*(25-1)+1, RAND()*(25-1)+1, RAND()*(25-1)+1, DATEADD(YEAR, -1, GETDATE()) + ABS(CHECKSUM(NEWID())) % 365, DATEADD(MINUTE, ABS(CHECKSUM(NEWID())) % 900, '08:00')),
	(5, RAND()*(25-1)+1, RAND()*(25-1)+1, RAND()*(25-1)+1, DATEADD(YEAR, -1, GETDATE()) + ABS(CHECKSUM(NEWID())) % 365, DATEADD(MINUTE, ABS(CHECKSUM(NEWID())) % 900, '08:00')),
    (6, RAND()*(25-1)+1, RAND()*(25-1)+1, RAND()*(25-1)+1, DATEADD(YEAR, -1, GETDATE()) + ABS(CHECKSUM(NEWID())) % 365, DATEADD(MINUTE, ABS(CHECKSUM(NEWID())) % 900, '08:00')),
	(7, RAND()*(25-1)+1, RAND()*(25-1)+1, RAND()*(25-1)+1, DATEADD(YEAR, -1, GETDATE()) + ABS(CHECKSUM(NEWID())) % 365, DATEADD(MINUTE, ABS(CHECKSUM(NEWID())) % 900, '08:00')),
    (8, RAND()*(25-1)+1, RAND()*(25-1)+1, RAND()*(25-1)+1, DATEADD(YEAR, -1, GETDATE()) + ABS(CHECKSUM(NEWID())) % 365, DATEADD(MINUTE, ABS(CHECKSUM(NEWID())) % 900, '08:00')),
	(9, RAND()*(25-1)+1, RAND()*(25-1)+1, RAND()*(25-1)+1, DATEADD(YEAR, -1, GETDATE()) + ABS(CHECKSUM(NEWID())) % 365, DATEADD(MINUTE, ABS(CHECKSUM(NEWID())) % 900, '08:00')),
	(10, RAND()*(25-1)+1, RAND()*(25-1)+1, RAND()*(25-1)+1, DATEADD(YEAR, -1, GETDATE()) + ABS(CHECKSUM(NEWID())) % 365, DATEADD(MINUTE, ABS(CHECKSUM(NEWID())) % 900, '08:00')),
    (11, RAND()*(25-1)+1, RAND()*(25-1)+1, RAND()*(25-1)+1, DATEADD(YEAR, -1, GETDATE()) + ABS(CHECKSUM(NEWID())) % 365, DATEADD(MINUTE, ABS(CHECKSUM(NEWID())) % 900, '08:00')),
	(12, RAND()*(25-1)+1, RAND()*(25-1)+1, RAND()*(25-1)+1, DATEADD(YEAR, -1, GETDATE()) + ABS(CHECKSUM(NEWID())) % 365, DATEADD(MINUTE, ABS(CHECKSUM(NEWID())) % 900, '08:00')),
    (13, RAND()*(25-1)+1, RAND()*(25-1)+1, RAND()*(25-1)+1, DATEADD(YEAR, -1, GETDATE()) + ABS(CHECKSUM(NEWID())) % 365, DATEADD(MINUTE, ABS(CHECKSUM(NEWID())) % 900, '08:00')),
	(14, RAND()*(25-1)+1, RAND()*(25-1)+1, RAND()*(25-1)+1, DATEADD(YEAR, -1, GETDATE()) + ABS(CHECKSUM(NEWID())) % 365, DATEADD(MINUTE, ABS(CHECKSUM(NEWID())) % 900, '08:00')),
    (15, RAND()*(25-1)+1, RAND()*(25-1)+1, RAND()*(25-1)+1, DATEADD(YEAR, -1, GETDATE()) + ABS(CHECKSUM(NEWID())) % 365, DATEADD(MINUTE, ABS(CHECKSUM(NEWID())) % 900, '08:00')),
	(16, RAND()*(25-1)+1, RAND()*(25-1)+1, RAND()*(25-1)+1, DATEADD(YEAR, -1, GETDATE()) + ABS(CHECKSUM(NEWID())) % 365, DATEADD(MINUTE, ABS(CHECKSUM(NEWID())) % 900, '08:00')),
    (17, RAND()*(25-1)+1, RAND()*(25-1)+1, RAND()*(25-1)+1, DATEADD(YEAR, -1, GETDATE()) + ABS(CHECKSUM(NEWID())) % 365, DATEADD(MINUTE, ABS(CHECKSUM(NEWID())) % 900, '08:00')),
	(18, RAND()*(25-1)+1, RAND()*(25-1)+1, RAND()*(25-1)+1, DATEADD(YEAR, -1, GETDATE()) + ABS(CHECKSUM(NEWID())) % 365, DATEADD(MINUTE, ABS(CHECKSUM(NEWID())) % 900, '08:00')),
    (19, RAND()*(25-1)+1, RAND()*(25-1)+1, RAND()*(25-1)+1, DATEADD(YEAR, -1, GETDATE()) + ABS(CHECKSUM(NEWID())) % 365, DATEADD(MINUTE, ABS(CHECKSUM(NEWID())) % 900, '08:00')),
	(20, RAND()*(25-1)+1, RAND()*(25-1)+1, RAND()*(25-1)+1, DATEADD(YEAR, -1, GETDATE()) + ABS(CHECKSUM(NEWID())) % 365, DATEADD(MINUTE, ABS(CHECKSUM(NEWID())) % 900, '08:00')),
    (21, RAND()*(25-1)+1, RAND()*(25-1)+1, RAND()*(25-1)+1, DATEADD(YEAR, -1, GETDATE()) + ABS(CHECKSUM(NEWID())) % 365, DATEADD(MINUTE, ABS(CHECKSUM(NEWID())) % 900, '08:00')),
	(22, RAND()*(25-1)+1, RAND()*(25-1)+1, RAND()*(25-1)+1, DATEADD(YEAR, -1, GETDATE()) + ABS(CHECKSUM(NEWID())) % 365, DATEADD(MINUTE, ABS(CHECKSUM(NEWID())) % 900, '08:00')),
    (23, RAND()*(25-1)+1, RAND()*(25-1)+1, RAND()*(25-1)+1, DATEADD(YEAR, -1, GETDATE()) + ABS(CHECKSUM(NEWID())) % 365, DATEADD(MINUTE, ABS(CHECKSUM(NEWID())) % 900, '08:00')),
	(24, RAND()*(25-1)+1, RAND()*(25-1)+1, RAND()*(25-1)+1, DATEADD(YEAR, -1, GETDATE()) + ABS(CHECKSUM(NEWID())) % 365, DATEADD(MINUTE, ABS(CHECKSUM(NEWID())) % 900, '08:00')),
	(25, RAND()*(25-1)+1, RAND()*(25-1)+1, RAND()*(25-1)+1, DATEADD(YEAR, -1, GETDATE()) + ABS(CHECKSUM(NEWID())) % 365, DATEADD(MINUTE, ABS(CHECKSUM(NEWID())) % 900, '08:00'));