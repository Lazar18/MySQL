SELECT 
    failures.CARS_id_plate,
    failures.status,
    failures.enter_date,
    failures.return_date
FROM
    importing_database.failures
ORDER BY failures.CARS_id_plate