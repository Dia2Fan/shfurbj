-- 코드를 입력하세요
SELECT PRODUCT_CODE,sum(PRICE*SALES_AMOUNT) as SALES
from PRODUCT join OFFLINE_SALE on product.PRODUCT_ID = offline_sale.PRODUCT_ID
group by PRODUCT_CODE
order by sum(PRICE*SALES_AMOUNT) desc,PRODUCT_CODE