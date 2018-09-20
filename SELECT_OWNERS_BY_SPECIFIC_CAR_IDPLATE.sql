SELECT 
    cars.brand,
    cars.model,
    cars.id_plate,
    customers_employee.name,
    customers_employee.surname
FROM
    importing_database.cars
    inner join
    r_customers_employee_cars on r_customers_employee_cars.CARS_id_plate = cars.id_plate
    inner join
    customers_employee on customers_employee.id = r_customers_employee_cars.CUSTOMERS_EMPLOYEE_id
WHERE
    cars.id_plate = 'ABC 56432'