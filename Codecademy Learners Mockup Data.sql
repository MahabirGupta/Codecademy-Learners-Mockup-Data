---What are the Top 25 schools (.edu domains)?
Select email_domain,count(user_id) 
 from Users 
 where email_domain like '%.edu'
 group by 
 email_domain
 limit 25;

 --How many .edu learners are located in New York?
Select email_domain,count(user_id) ,city
 from Users 
 where email_domain like '%.edu' and city = 'New York'
 group by 
 email_domain,city

 --The mobile_app column contains either mobile-user or NULL. 
 --How many of these Codecademy learners are using the mobile app?
 Select mobile_app,count(mobile_app) 
 from Users 
 where mobile_app like 'mobile-user' 
 group by 
 mobile_app

 --Now, using this function, query for the sign up counts for each hour.
 SELECT 
   strftime('%H', sign_up_at),COUNT(strftime('%H', sign_up_at))
FROM users
GROUP BY 1
LIMIT 20;

--Do different schools (.edu domains) prefer different courses?
SELECT distinct email_domain, learn_cpp,
learn_sql,
learn_html,
learn_javascript,
learn_java
FROM USERS u
 JOIN PROGRESS p
 ON U.user_id = p.user_id;

 --What courses are the New Yorkers students taking?
 SELECT distinct city, U.user_id, learn_cpp,
learn_sql,
learn_html,
learn_javascript,
learn_java
FROM USERS u
 JOIN PROGRESS p
 ON U.user_id = p.user_id
 where city = 'New York'

 --What courses are the Chicago students taking?
 SELECT distinct city, U.user_id, learn_cpp,
learn_sql,
learn_html,
learn_javascript,
learn_java
FROM USERS u
 JOIN PROGRESS p
 ON U.user_id = p.user_id
 where city = 'Chicago'