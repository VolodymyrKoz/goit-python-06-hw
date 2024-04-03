"""Середній бал, який певний викладач ставить певному студентові."""
select
  st.fullname,
  s.teacher_id, 
  ROUND(AVG(gr.grade), 2) AS average_grade
FROM
  grades gr
JOIN
  subjects s  ON gr.subject_id = s.id
JOIN
  students st  ON gr.student_id = st.id
WHERE
 s.teacher_id = 1 and st.id =13-- Викладач від 1 до 3, Студент від 1 до 50
GROUP by
  st.fullname,
  s.teacher_id;