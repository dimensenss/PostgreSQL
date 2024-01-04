--SET SESSION CHARACTERISTICS AS TRANSACTION ISOLATION LEVEL READ COMMITTED;
--SET SESSION CHARACTERISTICS AS TRANSACTION ISOLATION LEVEL SERIALIZABLE;
--SET SESSION CHARACTERISTICS AS TRANSACTION ISOLATION LEVEL repeatable read;

--Потерянные изменения
--begin;
	--UPDATE students SET lastname = '8000' WHERE id_student = 1;
--commit;


--Грязное чтение
--begin;
	--UPDATE students SET lastname = '9000' WHERE id_student = 1;
	--commit;
--ROLLBACK;



--Неповторяющееся чтение
--begin;
	--UPDATE students SET lastname = '10000' WHERE id_student = 1;
--commit;



--Фантом
--begin;
	--insert into groups values (99, 'NewGroup', 1111, 1)
--commit;




--Тупик
--begin; 
--update students set lastname = '11111' where id_student = 2;
--update students set lastname = '12222' where id_student = 1;