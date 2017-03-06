-- 07: Find the names of all students who are friends with someone named Gabriel.
-- Write the SQL in the file sql/07-query-friends-gabriel.sql

SELECT a.id AS student_id, a.name AS student_name, b.id AS friends_id, b.name AS friends_name FROM student a
      LEFT OUTER JOIN friend
      ON a.id = friend.id1
      JOIN student b
      ON b.id = friend.id2
      WHERE b.name ='Gabriel';
