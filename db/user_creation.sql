DECLARE
  v_user_count NUMBER(2) := 0;
BEGIN

  SELECT
    COUNT(USER_ID)
  INTO v_user_count
  FROM
    ALL_USERS
  WHERE
    USERNAME = 'TRAVEL_PORTAL';
  
  IF v_user_count > 0 THEN
    DBMS_OUTPUT.PUT_LINE('User has been created already.');
  ELSE
    EXECUTE IMMEDIATE 'CREATE USER TRAVEL_PORTAL IDENTIFIED BY TRAVEL_PORTAL';
    EXECUTE IMMEDIATE 'GRANT CONNECT, RESOURCE TO TRAVEL_PORTAL';
	DBMS_OUTPUT.PUT_LINE('Done.');
  END IF;
   
END;
/