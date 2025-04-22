select a.customer_id,a.FIRST_NAME,a.MIDDLE_NAME,a.ACCOUNT_TYPE,a.RESIDENTIAL,a.billing,a.branch,a.accountNumber,a.balance,
b."Transaction_ID",b."Customer_ID",b."Transaction_Date",b."Transaction_Type",b."Transaction_Amount",b."Transaction_Mode"
from MYDB.MAIN.JSON_FILE_CASESTUDY2 as a inner join MYDB.MAIN.XML_FILE_CASESTUDY2 as b 
where a.CUSTOMER_ID=b."Customer_ID"