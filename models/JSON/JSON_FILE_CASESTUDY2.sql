SELECT
_DATA:"CUSTOMER_ID"::NUMBER as CUSTOMER_ID,
_DATA:"FIRST_NAME"::STRING as FIRST_NAME,
_DATA:"MIDDLE_NAME"::STRING as MIDDLE_NAME,
_DATA:"ACCOUNT_TYPE"::STRING as ACCOUNT_TYPE,
_DATA:"ACCOUNT_DETAILS"[0]:"Address":"Residential"::STRING as Residential,
_DATA:"ACCOUNT_DETAILS"[0]:"Address":"Billing"::STRING as Billing,
_DATA:"ACCOUNT_DETAILS"[0]:"Banking":"branch"::STRING as branch,
_DATA:"ACCOUNT_DETAILS"[0]:"Banking":"accountNumber"::STRING as accountNumber,
_DATA:"ACCOUNT_DETAILS"[0]:"Banking":"balance"::NUMBER as balance
 FROM MYDB.CASESTUDY2.JSON_TBL