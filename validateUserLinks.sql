-- Validate every INSERT into the usersLinks table 
-- This code does a basic check to ensure the link contains a "https" and changes the column "secure" to 1/true.

DELIMITER //

CREATE TRIGGER before_insert_userLinks
BEFORE INSERT ON userLinks 
FOR EACH ROW
BEGIN
    IF NEW.value LIKE 'https%' THEN
        SET NEW.secure = 1;
    ELSE
        SET NEW.secure = 0;
    END IF;
END//

CREATE TRIGGER before_update_userLinks
BEFORE UPDATE ON userLinks
FOR EACH ROW
BEGIN
    IF NEW.value LIKE 'https%' THEN
        SET NEW.secure = 1;
    ELSE
        SET NEW.secure = 0;
    END IF;
END//

DELIMITER ;
