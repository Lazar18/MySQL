SELECT cars.brand, cars.model
FROM cars
inner join r_customers_employee_cars on r_customers_employee_cars.CARS_id_plate = cars.id_plate
inner join customers_employee on r_customers_employee_cars.CUSTOMERS_EMPLOYEE_id = customers_employee.id
where customers_employee.name = "Elroy" and customers_employee.surname = "Jetson"