// Colección: Areas
db.createCollection("Areas", {
  validator: {
    $jsonSchema: {
      bsonType: "object",
      required: ["cod_area", "cod_hospital", "area_name", "area_floor", "area_rooms"],
      properties: {
        cod_area: { bsonType: "int" },
        cod_hospital: { bsonType: "int" },
        area_name: { bsonType: "string" },
        area_floor: { bsonType: "int" },
        area_rooms: { bsonType: "int" }
      }
    }
  }
});

// Colección: Carers
db.createCollection("Carers", {
  validator: {
    $jsonSchema: {
      bsonType: "object",
      required: ["cod_carer", "carer_vigency", "work_turn", "profession", "grade"],
      properties: {
        cod_carer: { bsonType: "int" },
        carer_vigency: { bsonType: "date" },
        work_turn: { bsonType: "string" },
        profession: { bsonType: "string" },
        grade: { bsonType: "string" }
      }
    }
  }
});

// Colección: Dates
db.createCollection("Dates", {
  validator: {
    $jsonSchema: {
      bsonType: "object",
      required: ["cod_date", "cod_area", "cod_patient", "cod_doctor", "date_day", "time_day"],
      properties: {
        cod_date: { bsonType: "int" },
        cod_area: { bsonType: "int" },
        cod_patient: { bsonType: "int" },
        cod_doctor: { bsonType: "int" },
        date_day: { bsonType: "date" },
        time_day: { bsonType: "int" }
      }
    }
  }
});

// Colección: Diagnosis
db.createCollection("Diagnosis", {
  validator: {
    $jsonSchema: {
      bsonType: "object",
      required: ["cod_diagnosis", "cod_medicine", "cod_date", "disease"],
      properties: {
        cod_diagnosis: { bsonType: "int" },
        cod_medicine: { bsonType: "int" },
        cod_date: { bsonType: "int" },
        disease: { bsonType: "string" }
      }
    }
  }
});

// Colección: Hospitals
db.createCollection("Hospitals", {
  validator: {
    $jsonSchema: {
      bsonType: "object",
      required: ["cod_hospital", "hospital_name", "hospital_adress"],
      properties: {
        cod_hospital: { bsonType: "int" },
        hospital_name: { bsonType: "string" },
        hospital_adress: { bsonType: "string" }
      }
    }
  }
});

// Colección: Locations
db.createCollection("Locations", {
  validator: {
    $jsonSchema: {
      bsonType: "object",
      required: ["adress", "district", "department"],
      properties: {
        adress: { bsonType: "string" },
        district: { bsonType: "string" },
        department: { bsonType: "string" }
      }
    }
  }
});

// Colección: Medical_Log
db.createCollection("Medical_Log", {
  validator: {
    $jsonSchema: {
      bsonType: "object",
      required: ["cod_log", "date_created"],
      properties: {
        cod_log: { bsonType: "int" },
        date_created: { bsonType: "date" }
      }
    }
  }
});

// Colección: Medicines
db.createCollection("Medicines", {
  validator: {
    $jsonSchema: {
      bsonType: "object",
      required: ["cod_medicine", "med_name", "quantity", "med_measure", "med_weight", "med_price", "expiration", "production"],
      properties: {
        cod_medicine: { bsonType: "int" },
        med_name: { bsonType: "string" },
        quantity: { bsonType: "int" },
        med_measure: { bsonType: "string" },
        med_weight: { bsonType: "decimal" },
        med_price: { bsonType: "decimal" },
        expiration: { bsonType: "date" },
        production: { bsonType: "date" }
      }
    }
  }
});

// Colección: Patients
db.createCollection("Patients", {
  validator: {
    $jsonSchema: {
      bsonType: "object",
      required: ["cod_patient", "patient_log", "patient_name", "username", "keypass", "phone_number", "DNI"],
      properties: {
        cod_patient: { bsonType: "int" },
        patient_log: { bsonType: "int" },
        patient_name: { bsonType: "string" },
        username: { bsonType: "string" },
        keypass: { bsonType: "string" },
        phone_number: { bsonType: "int" },
        DNI: { bsonType: "int" }
      }
    }
  }
});

// Colección: Treatments
db.createCollection("Treatments", {
  validator: {
    $jsonSchema: {
      bsonType: "object",
      required: ["cod_treatment", "cod_medical_log", "treat_start", "treat_end", "disease"],
      properties: {
        cod_treatment: { bsonType: "int" },
        cod_medical_log: { bsonType: "int" },
        treat_start: { bsonType: "date" },
        treat_end: { bsonType: "date" },
        disease: { bsonType: "string" }
      }
    }
  }
});

// Relaciones ->

// Clave foránea: Area_Hospital (tabla: Areas)
db.Areas.createIndex({ cod_hospital: 1 });
db.Areas.createIndex({ cod_area: 1 }, { unique: true });

// Clave foránea: Date_Carer (tabla: Dates)
db.Dates.createIndex({ cod_doctor: 1 });
db.Dates.createIndex({ cod_date: 1 }, { unique: true });

// Clave foránea: Date_Patient (tabla: Dates)
db.Dates.createIndex({ cod_patient: 1 });
db.Dates.createIndex({ cod_date: 1 }, { unique: true });

// Clave foránea: Dates_Areas (tabla: Dates)
db.Dates.createIndex({ cod_area: 1 });
db.Dates.createIndex({ cod_date: 1 }, { unique: true });

// Clave foránea: Diagnosis_Dates (tabla: Diagnosis)
db.Diagnosis.createIndex({ cod_date: 1 });
db.Diagnosis.createIndex({ cod_diagnosis: 1 }, { unique: true });

// Clave foránea: Diagnosis_Medicine (tabla: Diagnosis)
db.Diagnosis.createIndex({ cod_medicine: 1 });
db.Diagnosis.createIndex({ cod_diagnosis: 1 }, { unique: true });

// Clave foránea: Hospital_Location (tabla: Hospitals)
db.Hospitals.createIndex({ hospital_adress: 1 });
db.Hospitals.createIndex({ cod_hospital: 1 }, { unique: true });

// Clave foránea: Log_Patient (tabla: Patients)
db.Patients.createIndex({ patient_log: 1 });
db.Patients.createIndex({ cod_patient: 1 }, { unique: true });

// Clave foránea: Treatment_Medical_Log (tabla: Treatments)
db.Treatments.createIndex({ cod_medical_log: 1 });
db.Treatments.createIndex({ cod_treatment: 1 }, { unique: true });
