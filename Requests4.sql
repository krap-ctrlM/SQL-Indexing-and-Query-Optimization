Реализация и анализ плана запроса по операции объединения таблиц:

SELECT id_inst, code_inst, name_inst FROM institute LEFT JOIN prep ON institute.id_inst = prep.institute_id
UNION SELECT id_rec, fio, num_rec FROM prep RIGHT JOIN institute ON institute.id_inst = prep.institute_id
