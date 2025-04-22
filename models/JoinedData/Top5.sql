select * from (select
    T."Transaction_ID" ,
    T."Customer_ID",
    T."Transaction_Date" ,
    T."Transaction_Type" ,
    T."Transaction_Amount",
    T."Transaction_Mode" ,
    B.ACCOUNTNUMBER ,
    B.BRANCH,
   dense_rank() over (order by T."Transaction_Amount"  desc ) as  rnk  
from
MYDB.MAIN.XML_FILE_CASESTUDY2  as T
INNER JOIN
MYDB.MAIN.JSON_FILE_CASESTUDY2 as B
ON T."Customer_ID" =B.CUSTOMER_ID)  where  rnk <=5