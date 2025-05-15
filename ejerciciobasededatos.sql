SELECT * FROM offices;
SELECT * FROM employees;
SELECT * FROM customers;

SELECT * FROM payments;

SELECT * FROM orders;
SELECT * FROM orderdetails;

SELECT * FROM products;
SELECT * FROM productlines;

CREATE VIEW ordenes_cliente AS
SELECT customers.customerNumber, customers.customerName, customers.phone, customers.addressLine1, customers.city, customers.state, 
customers.postalCode, orders.orderNumber, orders.orderDate, orderdetails.productCode, products.productName
FROM customers
INNER JOIN orders
ON customers.customerNumber = orders.customerNumber
INNER JOIN orderdetails
ON orders.orderNumber = orderdetails.orderNumber
INNER JOIN products
ON orderdetails.productCode = products.productCode;

SELECT * FROM ordenes_cliente;