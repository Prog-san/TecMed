


-- Table: Areas
CREATE TABLE Areas (
    cod_area int  NOT NULL,
    cod_hospital int  NOT NULL,
    area_name varchar(40)  NOT NULL,
    area_floor int  NOT NULL,
    area_rooms int  NOT NULL,
    CONSTRAINT Areas_pk PRIMARY KEY  (cod_area)
);

-- Table: Cuidadores
CREATE TABLE Carers (
    cod_carer int  NOT NULL,
    carer_vigency date  NOT NULL,
    carer_name varchar(100) NOT NULL,
    work_turn varchar(1)  NOT NULL,
    profession varchar(100)  NOT NULL,
    grade varchar(50)  NOT NULL,
    CONSTRAINT Carers_pk PRIMARY KEY  (cod_carer)
);

-- Table: Citas
CREATE TABLE Dates (
    cod_date int  NOT NULL,
    cod_area int  NOT NULL,
    cod_patient int  NOT NULL,
    cod_doctor int  NOT NULL,
    date_day date  NOT NULL,
    time_day int  NOT NULL,
    CONSTRAINT Dates_pk PRIMARY KEY  (cod_date)
);

-- Table: Diagnosis
CREATE TABLE Diagnosis (
    cod_diagnosis int  NOT NULL,
    cod_medicine int  NOT NULL,
    cod_date int  NOT NULL,
    disease varchar(60)  NOT NULL,
    CONSTRAINT Diagnosis_pk PRIMARY KEY  (cod_diagnosis)
);

-- Table: Hospitales
CREATE TABLE Hospitals (
    cod_hospital int  NOT NULL,
    hospital_name varchar(100)  NOT NULL,
    hospital_adress varchar(100)  NOT NULL,
    CONSTRAINT Hospitals_pk PRIMARY KEY  (cod_hospital)
);

-- Table: Ubicaciones
CREATE TABLE Locations (
    adress varchar(100)  NOT NULL,
    district varchar(100)  NOT NULL,
    department varchar(100)  NOT NULL,
    CONSTRAINT Locations_pk PRIMARY KEY  (adress)
);

-- Table: Registros Clinicos
CREATE TABLE Medical_Log (
    cod_log int  NOT NULL,
    date_created date  NOT NULL,
    CONSTRAINT Medical_Log_pk PRIMARY KEY  (cod_log)
);

-- Table: Medicinas
CREATE TABLE Medicines (
    cod_medicine int  NOT NULL,
    med_name varchar(60)  NOT NULL,
    quantity int  NOT NULL,
	med_measure varchar(3) NOT NULL,
    med_weight decimal(4,4)  NOT NULL,
    med_price decimal(4,4)  NOT NULL,
    expiration date  NOT NULL,
    production date  NOT NULL,
    CONSTRAINT Medicines_pk PRIMARY KEY  (cod_medicine)
);

-- Table: Pacientes
CREATE TABLE Patients (
    cod_patient int  NOT NULL,
    patient_log int  NOT NULL,
    patient_name varchar(100) NOT NULL,
    username varchar(60)  NOT NULL,
    keypass varchar(60)  NOT NULL,
    phone_number int  NOT NULL,
    DNI int  NOT NULL,
    CONSTRAINT Patients_pk PRIMARY KEY  (cod_patient)
);

-- Table: Tratamientos
CREATE TABLE Treatments (
    cod_treatment int  NOT NULL,
    cod_medical_log int  NOT NULL,
    treat_start date  NOT NULL,
    treat_end date  NOT NULL,
    disease varchar(60)  NOT NULL,
    CONSTRAINT Treatments_pk PRIMARY KEY  (cod_treatment)
);

-- RELACIONES ->
-- foreign keys
-- Reference: Area_Hospital (table: Areas)
ALTER TABLE Areas ADD CONSTRAINT Area_Hospital
    FOREIGN KEY (cod_hospital)
    REFERENCES Hospitals (cod_hospital);

-- Reference: Date_Carer (table: Dates)
ALTER TABLE Dates ADD CONSTRAINT Date_Carer
    FOREIGN KEY (cod_doctor)
    REFERENCES Carers (cod_carer);

-- Reference: Date_Patient (table: Dates)
ALTER TABLE Dates ADD CONSTRAINT Date_Patient
    FOREIGN KEY (cod_patient)
    REFERENCES Patients (cod_patient);

-- Reference: Dates_Areas (table: Dates)
ALTER TABLE Dates ADD CONSTRAINT Dates_Areas
    FOREIGN KEY (cod_area)
    REFERENCES Areas (cod_area);

-- Reference: Diagnosis_Dates (table: Diagnosis)
ALTER TABLE Diagnosis ADD CONSTRAINT Diagnosis_Dates
    FOREIGN KEY (cod_date)
    REFERENCES Dates (cod_date);

-- Reference: Diagnosis_Medicine (table: Diagnosis)
ALTER TABLE Diagnosis ADD CONSTRAINT Diagnosis_Medicine
    FOREIGN KEY (cod_medicine)
    REFERENCES Medicines (cod_medicine);

-- Reference: Hospital_Location (table: Hospitals)
ALTER TABLE Hospitals ADD CONSTRAINT Hospital_Location
    FOREIGN KEY (hospital_adress)
    REFERENCES Locations (adress);

-- Reference: Log_Patient (table: Patients)
ALTER TABLE Patients ADD CONSTRAINT Log_Patient
    FOREIGN KEY (patient_log)
    REFERENCES Medical_Log (cod_log);

-- Reference: Treatment_Medical_Log (table: Treatments)
ALTER TABLE Treatments ADD CONSTRAINT Treatment_Medical_Log
    FOREIGN KEY (cod_medical_log)
    REFERENCES Medical_Log (cod_log);

-- End of file.



