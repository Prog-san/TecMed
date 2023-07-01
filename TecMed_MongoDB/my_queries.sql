/*
const session = db.getMongo().startSession({
  readConcern: { level: "snapshot", name: "mi_transaccion_123" }
});

session.startTransaction();

try {
  const result = db.Medicines.aggregate([
    {
      $match: {
        "details.expiration": {
          $gte: new Date("2024-01-01"),
          $lt: new Date("2025-01-01")
        }
      }
    },
    {
      $project: {
        _id: 0,
        cod_medicine: 1,
        med_name: 1,
        quantity: 1,
        details: 1
      }
    }
  ]);

  // Imprimir los resultados
  result.forEach((medicine) => {
    printjson(medicine);
  });

  // Confirmar la transacción
  session.commitTransaction();
} catch (error) {
  // Manejo de errores y anulación de la transacción en caso de problemas
  session.abortTransaction();
  throw error;
} finally {
  // Finalizar la sesión de la transacción
  session.endSession();
}

*/

db.Treatments.find({
    disease: {
      $regex: "Grave", // Reemplaza "nombre_fragmento" con el fragmento que deseas buscar
      $options: "i" // La opción "i" hace que la búsqueda sea insensible a mayúsculas y minúsculas
    }
  });



db.Medicines.aggregate([
    {
      $match: {
        "details.expiration": {
          $gte: new Date("2024-01-01"),
          $lt: new Date("2025-01-01")
        }
      }
    },
    {
      $project: {
        _id: 0,
        cod_medicine: 1,
        med_name: 1,
        quantity: 1,
        details: 1
      }
    }
  ]);