INSERT INTO Hospitals (cod_hospital, hospital_name, hospital_adress) 
VALUES
    (1, 'Hospital Nacional Edgardo Rebagliati Martins', (SELECT adress FROM Locations WHERE district = 'Miraflores' AND department = 'Lima')),
    (2, 'Hospital Nacional Guillermo Almenara Irigoyen', (SELECT adress FROM Locations WHERE district = 'San Isidro' AND department = 'Lima')),
    (3, 'Hospital Nacional Arzobispo Loayza', (SELECT adress FROM Locations WHERE district = 'Barranco' AND department = 'Lima')),
    (4, 'Hospital Nacional Dos de Mayo', (SELECT adress FROM Locations WHERE district = 'La Victoria' AND department = 'Lima')),
    (5, 'Hospital Nacional Cayetano Heredia', (SELECT adress FROM Locations WHERE district = 'San Miguel' AND department = 'Lima'));