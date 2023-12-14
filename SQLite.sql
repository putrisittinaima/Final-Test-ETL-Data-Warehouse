Populate the dimension tables
CREATE TABLE dim_users (
user_id INT PRIMARY KEY,
user_name VARCHAR(100),
country VARCHAR(50)
);

CREATE TABLE dim_dates (
date_id SERIAL PRIMARY KEY,
full_date DATE,
day INT,
month INT,
year INT
);

-- Insert data into dim_users and dim_dates
INSERT INTO dim_users (user_id, user_name, country)
SELECT DISTINCT user_id, user_name, country
FROM raw_users;

INSERT INTO dim_dates (full_date, day, month, year)
SELECT DISTINCT post_date, EXTRACT(DAY FROM post_date), EXTRACT(MONTH FROM post_date), EXTRACT(YEAR FROM post_date)
FROM raw_posts;

INSERT INTO fact_post_performance (date_id, user_id, post_count, like_count)
SELECT d.date_id, u.user_id, COUNT(DISTINCT p.post_id), COUNT(DISTINCT l.like_id)
FROM raw_posts p
JOIN raw_users u ON p.user_id = u.user_id
JOIN raw_likes l ON p.post_id = l.post_id
JOIN dim_dates d ON p.post_date = d.full_date
GROUP BY d.date_id, u.user_id;

INSERT INTO fact_daily_posts (date_id, user_id, daily_post_count)
SELECT d.date_id, u.user_id, COUNT(DISTINCT p.post_id)
FROM raw_posts p
JOIN raw_users u ON p.user_id = u.user_id
JOIN dim_dates d ON p.post_date = d.full_date
GROUP BY d.date_id, u.user_id;