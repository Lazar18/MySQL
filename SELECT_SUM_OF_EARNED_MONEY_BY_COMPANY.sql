select distinct customers_company.name, sum(failures.payment- failures.part_cost) 
from failures
inner join cars on cars.id_plate = failures.CARS_id_plate
inner join r_customers_employee_cars on r_customers_employee_cars.CARS_id_plate = cars.id_plate
inner join customers_employee on customers_employee.id = r_customers_employee_cars.CUSTOMERS_EMPLOYEE_id
inner join customers_company on customers_company.id = customers_employee.CUSTOMERS_COMPANY_id
group by customers_company.name
