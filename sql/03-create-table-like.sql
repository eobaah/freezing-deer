DROP IF EXISTS student_like

CREATE TABLE student_like (
  liker_id int4 REFERENCES student(id),
  likee_id int4 REFERENCES student(id),
);
