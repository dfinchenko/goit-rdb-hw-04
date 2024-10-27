SELECT
    COUNT(*) AS total_orders
  FROM
    orders
    LEFT JOIN customers ON orders.customer_id = customers.id
    INNER JOIN employees ON orders.employee_id = employees.employee_id
    LEFT JOIN shippers ON orders.shipper_id = shippers.id
    INNER JOIN order_details ON orders.id = order_details.order_id
    LEFT JOIN products ON order_details.product_id = products.id
    INNER JOIN categories ON products.category_id = categories.id
    LEFT JOIN suppliers ON products.supplier_id = suppliers.id;


-- Використання LEFT JOIN дозволяє включити всі рядки з лівої таблиці, навіть якщо в правій таблиці немає відповідного запису. 
-- Це збільшує кількість рядків у результаті, порівняно з INNER JOIN, який повертає лише рядки з відповідністю у всіх таблицях. 
-- Тому при переході з INNER JOIN на LEFT JOIN кількість рядків може зрости.

-- Кількість рядків не змінилася після заміни деяких INNER JOIN на LEFT JOIN, 
-- це означає, що для кожного запису в лівій таблиці існує відповідний запис у правій таблиці. 
-- База даних добре пов'язана, і відсутніх значень у правих таблицях для обраних ключів немає, 
-- тому LEFT JOIN працює як INNER JOIN, не збільшуючи кількість рядків.