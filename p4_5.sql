SELECT 
    categories.name, COUNT(*) AS total_orders, AVG(order_details.quantity) AS avg_quantity
FROM
    orders
    INNER JOIN customers ON orders.customer_id = customers.id
    INNER JOIN employees ON orders.employee_id = employees.employee_id
    INNER JOIN shippers ON orders.shipper_id = shippers.id
    INNER JOIN order_details ON orders.id = order_details.order_id
    INNER JOIN products ON order_details.product_id = products.id
    INNER JOIN categories ON products.category_id = categories.id
    INNER JOIN suppliers ON products.supplier_id = suppliers.id
WHERE
    employees.employee_id > 3 AND employees.employee_id <= 10
GROUP BY categories.name
HAVING avg_quantity > 21;