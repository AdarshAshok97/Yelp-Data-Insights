/* Q-1 */
select extract(year from yelp_joined_date_time) as year_joined, count(user_id) as Users_Joined_Yelp
from users
where extract(year from yelp_joined_date_time) >= '2010'
group by extract(year from yelp_joined_date_time)
order by extract(year from yelp_joined_date_time);

/* Q-2 */
select year,count(user_id) as Num_of_users
from user_elite_years
where year >= '2012'
group by year
order by year;

/* Q-3 */

select u.user_id, user_name,count(users_rating) as Most_Num_reviews, yelp_joined_date_time, no_of_fans, funny_votes, useful_votes, cool_votes 
from users as u inner join reviews as r 
on u.user_id = r.user_id
where users_rating = '5.0'
group by u.user_id
order by count(users_rating) desc
limit 1;

/* Q-4 */
select u.user_id, user_name, count(friend_id) as Num_of_Friends
from users as u inner join user_friends as f
on u.user_id = f.user_id
group by u.user_id
order by count(friend_id) desc 
limit 10;

/* Q-5 */
select state_code, count(business_id) as Num_of_businesses
from businesses
group by state_code
order by count(business_id) desc
limit 10;

/* Q-6 */
select category_name, count(business_id) as Num_of_businesses
from business_categories
group by category_name
order by count(business_id) desc
limit 10;

/* Q-7 */
select category_name, avg(average_reviews) as avg_rating
from business_categories as c  inner join businesses as b
on c.business_id = b.business_id
group by category_name
order by count(c.business_id) desc
limit 10;

/* Q-8 */
select review_funny as Funny_votes , review_text
from reviews
group by review_id
order by review_funny desc
limit 5 ;

select review_funny as Funny_votes , review_text
from reviews
group by review_id
order by review_funny 
limit 10;





