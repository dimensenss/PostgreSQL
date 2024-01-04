--SET SESSION CHARACTERISTICS AS TRANSACTION ISOLATION LEVEL READ COMMITTED;
--SET SESSION CHARACTERISTICS AS TRANSACTION ISOLATION LEVEL SERIALIZABLE;
--SET SESSION CHARACTERISTICS AS TRANSACTION ISOLATION LEVEL repeatable read;

--Потерянные изменения
--begin;
	--UPDATE students SET lastname = '7000' WHERE id_student = 1;
--commit;


--Грязное чтение
--begin;
	--select * from students where id_student = 1;
	--select * from students where id_student = 1;
	--select * from students where id_student = 1;
--commit;


--Неповторяющееся чтение
--begin;
	--select * from students where id_student = 1;
	--[commit]
	--select * from students where id_student = 1;
--commit;




--Фантом
--begin;
	--select * from groups where stipendiya > 1000;
	--[commit]
	--select * from groups where stipendiya > 1000;
--commit;


--Тупик
--begin; 
--update students set lastname = '11000' where id_student = 1;
--update students set lastname = '12000' where id_student = 2;





