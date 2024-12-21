Реализация и анализ плана запроса по операции пересечения таблиц:
SELECT * FROM institute INNER JOIN prep ON prep.institute_id = institute.id_inst;

Реализация и анализ плана запроса по операции разности данных таблиц:
SELECT * FROM prep LEFT JOIN institute ON institute.id_inst = prep.institute_id WHERE institute.id_inst IS null;


t2-t1 t2 MINUS t1
SELECT * FROM prep LEFT JOIN institute ON institute.id_inst = prep.institute_id WHERE prep.institute_id IS null;	
