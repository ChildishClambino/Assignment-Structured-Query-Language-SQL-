CREATE DATABASE assignment_SQL;
USE assignment_SQL;

CREATE TABLE Members (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT
);
CREATE TABLE WorkoutSessions (
    session_id INT PRIMARY KEY,
    member_id INT,
    session_date DATE,
    session_time VARCHAR(50),
    activity VARCHAR(255),
    FOREIGN KEY (member_id) REFERENCES Members(id)
);

INSERT INTO Members (id, name, age)
VALUES 
(001, 'John Doe', 45)
(123, 'Sam Smith', 35),
(223, 'John Johnson', 23),
(233, 'Jane Doe', 55);

INSERT INTO WorkoutSessions (session_id, member_id, session_date, session_time, activity)
VALUES 
(111, 001, '2020-01-01', 'am', 'cardio'),
(777, 123, '2023-01-15', '1:30pm', 'upper body work-out'),
(888, 223, '2024-01-15', '1:40pm', 'lower body work-out'),
(999, 233, '2021-02-15', '2:30pm', 'full body work-out');

UPDATE WorkoutSessions
SET session_time = 'evening'
WHERE member_id = 233;

DELETE FROM WorkoutSessions
WHERE member_id = 001;

DELETE FROM Members
WHERE id = 001;

SELECT * FROM members
SELECT * FROM workoutsessions
 

