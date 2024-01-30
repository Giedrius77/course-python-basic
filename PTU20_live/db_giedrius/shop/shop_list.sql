
SELECT weekday, start_time, 
    student.id AS std_id, student.last_name,
    subject.id AS sub_id, subject.name,
    teacher.id AS t_id, teacher.last_name
    FROM schedule
    JOIN subject ON schedule.subject_id = subject.id
    JOIN classroom ON schedule.classroom_id = classroom.id
    JOIN teacher ON schedule.teacher_id = teacher.id
    JOIN student ON student.classroom_id = classroom.id;

SELECT customer.id AS customer_id, first_name, last_name, 
    cashier.id AS cashier_id, cashier_name 
    FROM bill
    JOIN bill ON bill_id = bill.id;