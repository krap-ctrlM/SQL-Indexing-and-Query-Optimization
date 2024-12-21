Добавим кластерный индекс
ALTER TABLE prep ADD PRIMARY KEY(id_rec);

Добавим некластерные неуникальные индексы
ALTER TABLE `prep` ADD INDEX(`institute_id`);
ALTER TABLE `insitute` ADD INDEX(`id_inst `);


SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));


EXPLAIN ANALYZE SELECT prep.fio, institute.name_inst FROM prep, institute WHERE prep.institute_id=institute.id_inst;
EXPLAIN ANALYZE SELECT prep.fio FROM prep WHERE institute_id IN (SELECT id_inst FROM institute);
EXPLAIN ANALYZE SELECT prep.fio, institute.name_inst FROM prep INNER JOIN institute ON prep. institute_id = institute.id_inst;
