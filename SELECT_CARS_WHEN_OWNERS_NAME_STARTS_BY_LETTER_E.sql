SELECT 
    cars.id_plate,
    cars.brand,
    cars.model,
    customers_employee.name,
    customers_employee.surname
FROM
    importing_database.cars
        INNER JOIN
    r_customers_employee_cars ON cars.id_plate = r_customers_employee_cars.CARS_id_plate
        INNER JOIN
    customers_employee ON r_customers_employee_cars.CUSTOMERS_EMPLOYEE_id = customers_employee.id
WHERE
    customers_employee.name LIKE 'E%'