--DROP FUNCTION check_enrollment_trigger() CASCADE;
CREATE OR REPLACE FUNCTION check_enrollment_trigger()
RETURNS TRIGGER AS $$
DECLARE
  total_students INT;
  capacity INT;
BEGIN
  SELECT COUNT(*) INTO total_students FROM Students WHERE id_Group IN (SELECT id_Group FROM Groups WHERE id_Faculty = (SELECT id_faculty FROM Groups WHERE id_group = NEW.id_Group));
  SELECT SUM(count_students) INTO capacity FROM Faculty WHERE id_faculty = (SELECT id_faculty FROM Groups WHERE id_group = NEW.id_Group);
  
  IF total_students >= capacity THEN
    RAISE EXCEPTION 'Maximum capacity for this course has been reached.';
  END IF;

  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER check_enrollment
BEFORE INSERT or UPDATE ON students
FOR EACH ROW
EXECUTE PROCEDURE check_enrollment_trigger();
