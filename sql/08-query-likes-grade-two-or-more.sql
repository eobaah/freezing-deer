-- 08: For every student who likes someone 2 or more grades younger than themselves, return that student's name and grade, and the name and grade of the student they like.
-- Write the SQL in the file sql/08-query-likes-grade-two-or-more.sql

SELECT student_who_likes.name AS i_like, student_who_likes.grade, student_who_is_liked.name AS i_am_liked, student_who_is_liked.grade FROM student_like
    JOIN student student_who_likes
    ON student_who_likes.id = student_like.liker_id
    JOIN student student_who_is_liked
    ON student_who_is_liked.id = student_like.likee_id
    WHERE student_who_likes.grade - student_who_is_liked.grade >= 2;
