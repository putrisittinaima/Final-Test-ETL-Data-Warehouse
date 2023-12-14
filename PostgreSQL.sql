-- Insert data
INSERT INTO raw_users
VALUES
(1, 'john_valerie', 'Canada'),
(2, 'james_hitler', 'USA'),
(3, 'angelina_jolie', 'UK');
INSERT INTO raw_posts
VALUES
(101, 'Happy sunday!', '2023-01-01', 1),
(102, 'Just You', '2023-01-02', 2),
(103, 'Beach yaa', '2023-01-03', 1),
(104, 'Perfect Time to Coffee', '2023-01-04', 3),
(105, 'Whats everyone up to today?', '2023-01-05', 2),
(106, 'U look better now', '2023-01-06', 1),
(107, 'Just do it and run', '2023-01-07', 2),
(108, 'Isn t beautifull weather right?', '2023-01-08', 3),
(109, 'Bughh!', '2023-01-09', 1),
(110, 'Plan, Plane?', '2023-01-10', 2);
INSERT INTO raw_likes
VALUES
(1001, 1, 101, '2023-01-01'),
(1002, 3, 101, '2023-01-02'),
(1003, 2, 102, '2023-01-03'),
(1004, 1, 103, '2023-01-04'),
(1005, 3, 104, '2023-01-05'),
(1006, 2, 104, '2023-01-06'),
(1007, 1, 105, '2023-01-07'),
(1008, 2, 106, '2023-01-08'),
(1009, 3, 107, '2023-01-09'),
(1010, 1, 108, '2023-01-10'),
(1011, 2, 109, '2023-01-11'),
(1012, 3, 110, '2023-01-12');