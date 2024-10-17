DELIMITER $$

CREATE TRIGGER reset_valid_email_before_update
BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
    -- Check if the email is being updated
    IF OLD.email <> NEW.email THEN
        -- Reset the valid_email field to 0 if the email has changed
        SET NEW.valid_email = 0;
    END IF;
END$$

DELIMITER ;

