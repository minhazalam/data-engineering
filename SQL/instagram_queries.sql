CREATE OR REPLACE FUNCTION ap_ci_val_rel_params(cod_acct_no VARCHAR2)
RETURN VARCHAR2
IS
    primary_cust_type VARCHAR2(30);
    secondary_rel_count NUMBER;
    error_msg VARCHAR2(100) := 'Please maintain proper customer relationship according to SOW customer type';
BEGIN
    -- check if account type is Loan, Agri Loan or OD/CC
    SELECT account_type
    INTO account_type
    FROM account
    WHERE account_number = cod_acct_no;

    IF account_type NOT IN ('Loan', 'Agri Loan', 'OD/CC') THEN
        RETURN NULL;
    END IF;

    -- check if primary customer is in 'SOW' relationship
SELECT 
    relationship
INTO primary_relationship FROM
    customer
WHERE
    account_number = cod_acct_no
        AND primary_customer = 'Y';

    IF primary_relationship != 'SOW' THEN
        RETURN NULL;
    END IF;

    -- check if customer type of primary customer is maintained in new day0 table ci_rel_params
SELECT 
    customer_type
INTO primary_cust_type FROM
    ci_rel_params
WHERE
    account_number = cod_acct_no;

    IF primary_cust_type IS NULL THEN
        RETURN error_msg;
    END IF;

    -- check if secondary relationships are as per the mandatory number of individuals in day0
SELECT 
    COUNT(*)
INTO secondary_rel_count FROM
    customer
WHERE
    account_number = cod_acct_no
        AND primary_customer = 'N';

SELECT 
    mandatory_individuals
INTO mandatory_ind FROM
    ci_rel_params
WHERE
    account_number = cod_acct_no;

    IF secondary_rel_count != mandatory_ind THEN
        RETURN error_msg;
    END IF;

    RETURN NULL;
EXCEPTION
    WHEN OTHERS THEN
        RETURN 'An error occurred. Please contact the system administrator';
END;
