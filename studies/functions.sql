USE sakila;
DELIMITER //
CREATE FUNCTION insert_actor(in_first_name VARCHAR(45),
                             in_last_name VARCHAR(45),
                             in_last_update TIMESTAMP)
  RETURNS BIGINT(19)
  DETERMINISTIC
BEGIN
  DECLARE r_cust_id BIGINT(19);
  INSERT INTO actor(first_name,
                    last_name,
                    last_update)
  VALUES (in_first_name,
          in_last_name,
          in_last_update);

  SELECT LAST_INSERT_ID() INTO r_cust_id FROM actor;

  RETURN r_cust_id;
END;
//