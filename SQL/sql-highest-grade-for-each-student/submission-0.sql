-- Write your query below
SELECT er.student_id,MIN(er.exam_id) AS exam_id, er.score
FROM exam_results er
JOIN (
    SELECT student_id, MAX(score) AS max_score 
    FROM exam_results
    GROUP BY student_id
) m ON er.student_id = m.student_id AND er.score = m.max_score
GROUP BY er.student_id, er.score
ORDER BY er.student_id;






--SELECT student_id, exam_id, score
--FROM (
--    SELECT
--        student_id,
--        exam_id,
--        score,
--        ROW_NUMBER() OVER (
--            PARTITION BY student_id
--            ORDER BY score DESC, exam_id ASC
--        ) AS rn
--    FROM exam_results
--) t
--WHERE rn = 1
--ORDER BY student_id ASC;