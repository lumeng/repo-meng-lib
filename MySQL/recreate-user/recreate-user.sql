-- recreate user if it exists, if not, create it by calling user.sql
-- References:
-- * http://stackoverflow.com/questions/598190/mysql-check-if-the-user-exists-and-drop-it
-- * http://stackoverflow.com/questions/4029240/mysql-how-to-call-sql-script-file-from-other-sql-script-file
-- * http://codereview.stackexchange.com/questions/15716/mysql-drop-user-if-exists

DELIMITER $$

DROP PROCEDURE IF EXISTS `DropUserIfExistsAdvanced`$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `DropUserIfExistsAdvanced`(
    MyUserName VARCHAR(100)
    , MyHostName VARCHAR(100)
)
BEGIN
DECLARE pDone INT DEFAULT 0;
DECLARE mUser VARCHAR(100);
DECLARE mHost VARCHAR(100);
DECLARE recUserCursor CURSOR FOR
    SELECT `User`, `Host` FROM `mysql`.`user` WHERE `User` = MyUserName;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET pDone = 1;

IF (MyHostName IS NOT NULL) THEN
    -- 'username'@'hostname' exists
    IF (EXISTS(SELECT NULL FROM `mysql`.`user` WHERE `User` = MyUserName AND `Host` = MyHostName)) THEN
        SET @SQL = (SELECT mResult FROM (SELECT GROUP_CONCAT("DROP USER ", "'", MyUserName, "'@'", MyHostName, "'") AS mResult) AS Q LIMIT 1);
        PREPARE STMT FROM @SQL;
        EXECUTE STMT;
        DEALLOCATE PREPARE STMT;
    END IF;
ELSE
    -- check whether MyUserName exists (MyUserName@'%' , MyUserName@'localhost' etc)
    OPEN recUserCursor;
    REPEAT
        FETCH recUserCursor INTO mUser, mHost;
        IF NOT pDone THEN
            SET @SQL = (SELECT mResult FROM (SELECT GROUP_CONCAT("DROP USER ", "'", mUser, "'@'", mHost, "'") AS mResult) AS Q LIMIT 1);
            PREPARE STMT FROM @SQL;
            EXECUTE STMT;
            DEALLOCATE PREPARE STMT;
        END IF;
    UNTIL pDone END REPEAT;
END IF;
FLUSH PRIVILEGES;
END$$

DELIMITER ;

CALL DropUserIfExistsAdvanced('test', 'test');
-- CALL DropUserIfExistsAdvanced('test', NULL);

DROP PROCEDURE IF EXISTS DropUserIfExistsAdvanced;


-- Method 2:

-- SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ANSI';
-- USE XXXmydbXXX;
-- DROP PROCEDURE IF EXISTS XXXmydbXXX.drop_user_if_exists;
-- DELIMITER $$
-- CREATE PROCEDURE XXXmydbXXX.drop_user_if_exists()
-- BEGIN
--   DECLARE cnt BIGINT DEFAULT 0;
--   SELECT COUNT(*)
--   INTO cnt
--     FROM mysql.user
--       WHERE User = 'XXXdefault_userXXX' and  Host = 'localhost';
--    IF cnt > 0 THEN
--          DROP USER 'XXXdefault_userXXX'@'localhost';
--   END IF;
-- END ;$$
-- DELIMITER ;
-- CALL XXXmydbXXX.drop_user_if_exists();
-- DROP PROCEDURE IF EXISTS XXXmydbXXX.drop_users_if_exists;
-- SET SQL_MODE=@OLD_SQL_MODE;
-- 
-- source ./create-user.sql;

-- END
