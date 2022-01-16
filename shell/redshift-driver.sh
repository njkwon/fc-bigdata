#bin/bash

wget https://s3.amazonaws.com/redshift-downloads/drivers/jdbc/2.0.0.4/redshift-jdbc42-2.0.0.4.jar
sudo mv redshift-jdbc42-2.0.0.4.jar /usr/lib/spark/jars/


SELECT  a.base_date, 
        b.adid,
        count(b.adid), 
        a.danji_name, 
        a.sido, 
        a.sigungu, 
        a.dong
FROM "dev"."dm"."danji_user_view_summary_gold" a
join "dev"."red_class"."danji_user_view_silver" b 
on a.danji_id = b.danji_id 
where a.danji_id = 1625
group by a.base_date, 
         b.adid,
        a.danji_name, 
        a.sido, 
        a.sigungu, 
        a.dong
;