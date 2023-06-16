INSERT INTO Diagnosis(cod_diagnosis,cod_medicine,cod_date,disease) VALUES
-- 1 Paracetamol: Alivia el dolor y la fiebre.
 --3 Amoxicilina: Trata infecciones bacterianas, como infecciones respiratorias, del oído y del tracto urinario.
 --5 Omeprazol: Trata el reflujo ácido, la acidez estomacal y las úlceras gástricas.
 --7 Dipirona: Alivia el dolor y la fiebre.
 --11  Metformina: Trata la diabetes tipo 2 y ayuda a controlar los niveles de azúcar en la sangre.
  --13  Fluconazol: Trata las infecciones fúngicas, como la candidiasis vaginal, oral y sistémica.
(1, 1, 1, 'Fiebre Alta' ),
(2, 3, 13,'Infeccion urinaria'  ),
(3, 13, 16,'Infeccion Sistemica' ),
(4, 7, 19, 'Dolor abdominal'),
(5, 5, 21,'Acidez estomacal'),
(6, 11, 24, 'Diabetes tipo 2' );


SELECT * FROM Diagnosis;