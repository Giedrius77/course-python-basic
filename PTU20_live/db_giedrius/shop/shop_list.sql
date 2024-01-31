
SELECT * FROM customer;
SELECT first_name || " " || last_name AS full_name FROM customer;

SELECT product_name FROM product;

SELECT * FROM bill_line 
    JOIN bill ON bill_id = bill.id
    JOIN product ON product_id = product.id
    JOIN customer ON customer_id = customer.id
    ;

-- Kestutis
-- DB modelis: parduotuvė:
-- product (id, name, price)
-- customer (id, first_name, last_name)
-- bill (id, purchase_datetime, cashier_id, customer_id)
-- bill_line (id, bill_id, product_id, quantity)

-- Užklausos:
-- daugiausiai parduodami produktai
-- didžiausia produkto apyvarta
-- geriausias klientas
-- didžiausia saskaita

-- SELECT * FROM order_line 
--     JOIN orders ON order_id = orders.id
--     JOIN product ON product_id = product.id
--     JOIN clients ON client_id = clients.id
--     ;

-- SELECT * FROM clients;
-- SELECT * FROM clients WHERE id = 2;
-- SELECT id, first_name, last_name FROM clients;
-- SELECT first_name || " " || last_name AS full_name FROM clients;
-- SELECT * FROM clients WHERE last_name = "Mergaite";
-- SELECT * FROM clients WHERE email LIKE "%.lt";
-- SELECT * FROM clients WHERE phone LIKE "+37069%";
-- SELECT * FROM clients 
--     WHERE email LIKE "%@gmail%" 
--         AND last_name LIKE "Zmo%s";

-- UPDATE clients SET first_name = "Keistas" WHERE id = 3;
-- UPDATE clients SET last_name = "Mergiene" WHERE last_name = "Mergaite";

-- DELETE FROM clients WHERE id > 3;
-- DELETE FROM clients; 


-- SELECT weekday, start_time, 
--     student.id AS std_id, student.last_name,
--     subject.id AS sub_id, subject.name,
--     teacher.id AS t_id, teacher.last_name
--     FROM schedule
--     JOIN subject ON schedule.subject_id = subject.id
--     JOIN classroom ON schedule.classroom_id = classroom.id
--     JOIN teacher ON schedule.teacher_id = teacher.id
--     JOIN student ON student.classroom_id = classroom.id;