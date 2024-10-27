SELECT
    orders.id AS order_id,
    orders.date AS order_date,
    customers.name AS customer_name,
    customers.contact AS customer_contact,
    customers.address AS customer_address,
    customers.city AS customer_city,
    customers.postal_code AS customer_postal_code,
    customers.country AS customer_country,
    employees.first_name AS employee_first_name,
    employees.last_name AS employee_last_name,
    employees.birthdate AS employee_birthdate,
    employees.photo AS employee_photo,
    employees.notes AS employee_notes,
    shippers.name AS shipper_name,
    shippers.phone AS shipper_phone,
    products.name AS product_name,
    products.price AS order_price,
    order_details.quantity,
    categories.name AS category_name,
    categories.description AS category_description,
    suppliers.name AS supplier_name,
    suppliers.contact AS supplier_contact,
    suppliers.address AS supplier_address,
    suppliers.city AS supplier_city,
    suppliers.postal_code AS supplier_postal_code,
    suppliers.country AS supplier_country
FROM
    orders
    INNER JOIN customers ON orders.customer_id = customers.id
    INNER JOIN employees ON orders.employee_id = employees.employee_id
    INNER JOIN shippers ON orders.shipper_id = shippers.id
    INNER JOIN order_details ON orders.id = order_details.order_id
    INNER JOIN products ON order_details.product_id = products.id
    INNER JOIN categories ON products.category_id = categories.id
    INNER JOIN suppliers ON products.supplier_id = suppliers.id;