ALTER TABLE prep ADD PRIMARY KEY(id_rec);

Добавим некластерные неуникальные индексы
ALTER TABLE `prep` ADD INDEX(`institute_id`);
ALTER TABLE `insitute` ADD INDEX(`id_inst `);

EXPLAIN ANALYZE SELECT institute.name_inst, MAX(institute.code_inst) FROM institute INNER JOIN prep ON institute.id_inst = prep.institute_id GROUP BY institute.code_inst;

EXPLAIN ANALYZE SELECT institute.code_inst, prep.fio FROM institute INNER JOIN prep ON prep.institute_id = institute.id_inst GROUP BY institute.code_inst, prep.fio HAVING (institute.code_inst < 7500 AND institute.code_inst > 4500);
