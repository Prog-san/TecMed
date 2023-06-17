// Estructura de la colección "Treatments ->
/*
  collMod: "Treatments",
  validator: {
    $jsonSchema: {
      bsonType: "object",
      required: ["cod_treatment", "cod_medical_log", "treat_period", "disease"],
      properties: {
        cod_treatment: { bsonType: "int" },
        cod_medical_log: { bsonType: "int" },
        treat_period: {
            bsonType: "object",
            items: {
                bsonType: "object",
                required: ["treat_start", "treat_end"],
                properties: {
                  treat_start: { bsonType: "date" },
                    treat_end: { bsonType: "date" }
                }
            }
        },
        disease: { bsonType: "string" }
      }
    }
  }
});
*/

//Indicacion del empleo del dataset "test"
use test;
//Aqui se insertan documentos para la coleccion Treatments
//Se muestra que presenta el patron de modelo de datos anidado, en el periodo de tratamiento
//Se muestra durante el trascurso y culminacion de los tratamientos registrados,
//La mejoría o la reduccion de la gravedad de la enfermedad.
db.Treatments.insertMany([
    {
        cod_treatment : 1,
        cod_medical_log : 1,
        treat_period :
        {
          treat_start : new Date(2010,1 ,2),
          treat_end : new Date(2010,1 , 16)
        },
        disease : "Laringitis grave"
    },
    {
        cod_treatment : 2,
        cod_medical_log : 1,
        treat_period :
        {
         treat_start : new Date(2010,1 ,16),
         treat_end : new Date(2010,2 , 6)
        },
        disease : "Laringitis moderada"
    },
    {
        cod_treatment : 3,
        cod_medical_log : 1,
        treat_period :
        {
         treat_start : new Date(2010,2 , 6),
         treat_end : new Date(2010,2 , 13)
        },
        disease : "Laringitis leve"
    }
]);


db.Treatments.insertMany([
  {
    cod_treatment: 4,
    cod_medical_log: 2,
    treat_period:
      {
        treat_start: new Date(2010, 2, 5),
        treat_end: new Date(2010, 2, 20)
      },
    disease: "Fiebre alta"
  },
  {
    cod_treatment: 5,
    cod_medical_log: 2,
    treat_period:
      {
        treat_start: new Date(2010, 2, 20),
        treat_end: new Date(2010, 3, 3)
      },
    disease: "Fiebre moderada"
  }
]);

db.Treatments.insertMany([
  {
    cod_treatment: 6,
    cod_medical_log: 3,
    treat_period:
      {
        treat_start: new Date(2010, 3, 12),
        treat_end: new Date(2010, 3, 25)
      },
    disease: "Dolor de garganta intenso"
  },
  {
    cod_treatment: 7,
    cod_medical_log: 3,
    treat_period:
      {
        treat_start: new Date(2010, 3, 25),
        treat_end: new Date(2010, 4, 8)
      },
    disease: "Dolor de garganta moderado"
  }
]);

db.Treatments.insertMany([
  {
    cod_treatment: 8,
    cod_medical_log: 4,
    treat_period:
      {
        treat_start: new Date(2010, 4, 17),
        treat_end: new Date(2010, 4, 30)
      },
    disease: "Resfriado intenso"
  },
  {
    cod_treatment: 9,
    cod_medical_log: 4,
    treat_period:
      {
        treat_start: new Date(2010, 4, 30),
        treat_end: new Date(2010, 5, 12)
      },
    disease: "Resfriado leve"
  }
]);

db.Treatments.insertMany([
  {
    cod_treatment: 10,
    cod_medical_log: 5,
    treat_period:
      {
        treat_start: new Date(2010, 5, 23),
        treat_end: new Date(2010, 6, 6)
      },
    disease: "Gripe severa"
  },
  {
    cod_treatment: 11,
    cod_medical_log: 5,
    treat_period:
      {
        treat_start: new Date(2010, 6, 6),
        treat_end: new Date(2010, 6, 19)
      },
    disease: "Gripe moderada"
  }
]);

db.Treatments.insertMany([
  {
    cod_treatment: 12,
    cod_medical_log: 6,
    treat_period:
      {
        treat_start: new Date(2010, 6, 28),
        treat_end: new Date(2010, 7, 10)
      },
    disease: "Infección respiratoria grave"
  },
  {
    cod_treatment: 13,
    cod_medical_log: 6,
    treat_period:
      {
        treat_start: new Date(2010, 7, 10),
        treat_end: new Date(2010, 7, 24)
      },
    disease: "Infección respiratoria moderada"
  }
]);

db.Treatments.insertMany([
  {
    cod_treatment: 14,
    cod_medical_log: 7,
    treat_period:
      {
        treat_start: new Date(2010, 7, 5),
        treat_end: new Date(2010, 7, 18)
      },
    disease: "Dolor de cabeza intenso"
  },
  {
    cod_treatment: 15,
    cod_medical_log: 7,
    treat_period:
      {
        treat_start: new Date(2010, 7, 18),
        treat_end: new Date(2010, 8, 1)
      },
    disease: "Dolor de cabeza leve"
  }
]);

db.Treatments.insertMany([
  {
    cod_treatment: 16,
    cod_medical_log: 8,
    treat_period:
      {
        treat_start: new Date(2010, 8, 10),
        treat_end: new Date(2010, 8, 23)
      },
    disease: "Alergia severa"
  },
  {
    cod_treatment: 17,
    cod_medical_log: 8,
    treat_period:
      {
        treat_start: new Date(2010, 8, 23),
        treat_end: new Date(2010, 9, 6)
      },
    disease: "Alergia moderada"
  }
]);

db.Treatments.insertMany([
  {
    cod_treatment: 18,
    cod_medical_log: 9,
    treat_period:
      {
        treat_start: new Date(2010, 9, 15),
        treat_end: new Date(2010, 9, 28)
      },
    disease: "Bronquitis aguda"
  },
  {
    cod_treatment: 19,
    cod_medical_log: 9,
    treat_period:
      {
        treat_start: new Date(2010, 9, 28),
        treat_end: new Date(2010, 10, 11)
      },
    disease: "Bronquitis leve"
  }
]);

db.Treatments.insertMany([
  {
    cod_treatment: 26,
    cod_medical_log: 10,
    treat_period:
      {
        treat_start: new Date(2010, 10, 20),
        treat_end: new Date(2010, 11, 3)
      },
    disease: "Gripe severa"
  },
  {
    cod_treatment: 27,
    cod_medical_log: 10,
    treat_period:
      {
        treat_start: new Date(2010, 11, 3),
        treat_end: new Date(2010, 11, 17)
      },
    disease: "Gripe moderada"
  }
]);

db.Treatments.insertMany([
  {
    cod_treatment: 28,
    cod_medical_log: 11,
    treat_period:
      {
        treat_start: new Date(2010, 11, 25),
        treat_end: new Date(2010, 12, 7)
      },
    disease: "Resfriado fuerte"
  },
  {
    cod_treatment: 29,
    cod_medical_log: 11,
    treat_period:
      {
        treat_start: new Date(2010, 12, 7),
        treat_end: new Date(2011, 1, 21)
      },
    disease: "Resfriado leve"
  }
]);

db.Treatments.insertMany([
  {
    cod_treatment: 30,
    cod_medical_log: 12,
    treat_period:
      {
        treat_start: new Date(2010, 12, 31),
        treat_end: new Date(2011, 1, 13)
      },
    disease: "Afección estomacal grave"
  },
  {
    cod_treatment: 31,
    cod_medical_log: 12,
    treat_period:
      {
        treat_start: new Date(2011, 1, 13),
        treat_end: new Date(2011, 1, 27)
      },
    disease: "Afección estomacal moderada"
  }
]);

db.Treatments.insertMany([
  {
    cod_treatment: 32,
    cod_medical_log: 13,
    treat_period:
      {
        treat_start: new Date(2011, 1, 6),
        treat_end: new Date(2011, 1, 24)
      },
    disease: "Migraña intensa"
  },
  {
    cod_treatment: 33,
    cod_medical_log: 13,
    treat_period:
      {
        treat_start: new Date(2011, 1, 24),
        treat_end: new Date(2011, 2, 7)
      },
    disease: "Migraña leve"
  }
]);
