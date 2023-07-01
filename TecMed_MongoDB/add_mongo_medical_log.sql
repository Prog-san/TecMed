// Aqui agregas que database vas a a utilizar para desencadenar o
//enviar la agregacion de documentos
use test;

/*
En las siguientes secuencias de codigo, se
realizan los insertados de los valores del
Database de Microsoft SQL a este Database
en la nube proporcionado por MongoDB ATLAS
En 5 en 5 con la funcion .insertMany()
*/
db.Medical_Log.insertMany([
  {
    cod_log: 1,
    date_created: new Date(2010,1 ,1)
  },
  {
    cod_log: 2,
    date_created: new Date(2010,2 ,5)
  },
  {
    cod_log: 3,
    date_created: new Date(2010,3 ,12)
  },
  {
    cod_log: 4,
    date_created: new Date(2010,4 ,17)
  },
  {
    cod_log: 5,
    date_created: new Date(2010,5 ,23)
  }
]);

db.Medical_Log.insertMany([
  {
    cod_log: 6,
    date_created: new Date(2010,6 ,28)
  },
  {
    cod_log: 7,
    date_created: new Date(2010,7 ,5)
  },
  {
    cod_log: 8,
    date_created: new Date(2010,8 ,10)
  },
  {
    cod_log: 9,
    date_created: new Date(2010,9 ,15)
  },
  {
    cod_log: 10,
    date_created: new Date(2010,10 ,20)
  }
]);

db.Medical_Log.insertMany([
  {
    cod_log: 11,
    date_created: new Date(2010,11 ,25)
  },
  {
    cod_log: 12,
    date_created: new Date(2010,12 ,31)
  },
  {
    cod_log: 13,
    date_created: new Date(2011,1 ,6)
  },
  {
    cod_log: 14,
    date_created: new Date(2011,2 ,11)
  },
  {
    cod_log: 15,
    date_created: new Date(2011,3 ,18)
  }
]);

db.Medical_Log.insertMany([
  {
    cod_log: 16,
    date_created: new Date(2011,4 ,23)
  },
  {
    cod_log: 17,
    date_created: new Date(2011,5 ,29)
  },
  {
    cod_log: 18,
    date_created: new Date(2011,6 ,3)
  },
  {
    cod_log: 19,
    date_created: new Date(2011,7 ,9)
  },
  {
    cod_log: 20,
    date_created: new Date(2011,8 ,14)
  }
]);

db.Medical_Log.insertMany([
  {
    cod_log: 21,
    date_created: new Date(2011,9 ,20)
  },
  {
    cod_log: 22,
    date_created: new Date(2011,10 ,25)
  },
  {
    cod_log: 23,
    date_created: new Date(2011,11 ,30)
  },
  {
    cod_log: 24,
    date_created: new Date(2011,12 ,05)
  },
  {
    cod_log: 25,
    date_created: new Date(2011,12 ,31)
  }
]);