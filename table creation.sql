create table Businesses (
	Business_ID varchar(22) primary key,
	Business_name varchar(150), 
	Street_Address varchar(200),
	City varchar(100),
	State_Code varchar(3),
	Postal_Code varchar(9),
	Latitude float,
	Longitude float,
	Average_Reviews float,
	Number_of_Reviews integer,
	Is_Business_Open integer
);

create table Business_Attributes(
	Business_ID varchar(22) references businesses(Business_ID),
	Attribute_Name varchar(150),
	Attribute_Value varchar(50)
);

create table Business_Categories(
	Business_ID varchar(22) references businesses(Business_ID),
	Category_Name varchar(100)
);

create table Business_Hours(
	Business_ID varchar(22) references businesses(Business_ID),
	Day_of_the_week varchar(25),
	Opening_time time,
	Closing_time time
);

create table Users(
	user_id varchar(22) primary key,
	user_name varchar(50),
	Reviews_user_left integer,
	Yelp_Joined_Date_Time timestamp,
	Useful_Votes integer,
	Funny_Votes integer,
	Cool_Votes integer,
	No_of_Fans integer,
	Avg_rating_users_reviews Float,
	Hot_Compliments integer,
	More_Compliments integer,
	Profile_Compliments integer,
	Cute_Compliments integer,
	List_Compliments integer,
	Note_Compliments integer,
	Plain_Compliments integer,
	Cool_Compliments integer,
	Funny_Compliments integer,
	Writer_Compliments integer,
	Photo_Compliments integer
);

create table user_friends(
	user_id varchar(22) references users(user_id),
	friend_id varchar(22)
);

create table user_elite_years(
	user_id varchar(22) references users(user_id),
	year varchar(10)
);

create table tips(
	user_id varchar(22) references users(user_id),
	Business_ID varchar(22) references businesses(Business_ID),
	Tip_text varchar(150),
	date_time_of_tip timestamp,
	Num_Compliments_received integer
);

create table reviews(
	review_id varchar(22) primary key,
	user_id varchar(22) references users(user_id),
	Business_ID varchar(22) references businesses(Business_ID),
	users_rating float,
	review_useful integer,
	review_funny integer,
	review_cool integer,
	review_text text,
	review_date_time timestamp
);

