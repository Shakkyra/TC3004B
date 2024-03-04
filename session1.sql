-- Counting records on customers tables
SELECT count(*) from sh.customers;
--
--
SELECT cu.CUST_ID, sum(sa.AMOUNT_SOLD) as total from sh.customers cu, sh.sales sa WHERE
 cu.CUST_ID = sa.CUST_ID group by cu.CUST_ID order by total desc;
