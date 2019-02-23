USE sakila;
DELIMITER //
CREATE PROCEDURE insert_actor(
  in p_first_name varchar(45),
  in p_last_name varchar(45),
  in p_last_update timestamp)
  READS SQL DATA
BEGIN
  IF p_first_name OR p_last_name IS NOT NULL THEN
    INSERT INTO actor(
      first_name,
      last_name,
      last_update)
    VALUES(
            p_first_name,
            p_last_name,
            p_last_update);
  END IF;
END
//