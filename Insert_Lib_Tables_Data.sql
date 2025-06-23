-----------------------------------------------
----Insert the Tables data---------------------
-----------------------------------------------

-----Insert Data for 'authors_tb'-------------------
INSERT INTO authors_tb (auth_name, auth_details) VALUES
('J.K. Rowling', 'British author, best known for the Harry Potter series'),
('George R.R. Martin', 'Author of A Song of Ice and Fire'),
('Stephen King', 'American author of horror and supernatural fiction'),
('Agatha Christie', 'Famous for mystery novels and detective fiction'),
('Dan Brown', 'Author of thrillers like The Da Vinci Code'),
('Paulo Coelho', 'Brazilian author of The Alchemist'),
('Jane Austen', 'Classic English novelist'),
('Mark Twain', 'Known for The Adventures of Tom Sawyer'),
('Ernest Hemingway', 'American novelist and short story writer'),
('Charles Dickens', 'Famous for Oliver Twist and A Christmas Carol');

-----Insert Data for categories_tb----------------
INSERT INTO categories_tb (cat_name) VALUES
('Fiction'),
('Mystery'),
('Science Fiction'),
('Fantasy'),
('Biography'),
('Romance'),
('Thriller'),
('History'),
('Horror'),
('Self-Help');

-----Insert Data for 'books_tb' -----------
INSERT INTO books_tb (title, sr_no, published_year, auth_id, cat_id, available_copies, total_copies) VALUES
('Harry Potter and the Sorcerer''s Stone', '9780747532699', 1997, 1, 4, 5, 10),
('A Game of Thrones', '9780553103540', 1996, 2, 3, 3, 5),
('The Shining', '9780385121675', 1977, 3, 9, 2, 4),
('Murder on the Orient Express', '9780062073495', 1934, 4, 2, 4, 6),
('The Da Vinci Code', '9780307474278', 2003, 5, 7, 1, 3),
('The Alchemist', '9780061122415', 1988, 6, 10, 2, 5),
('Pride and Prejudice', '9780141040349', 1813, 7, 6, 2, 4),
('Adventures of Tom Sawyer', '9780486400778', 1876, 8, 1, 3, 3),
('The Old Man and the Sea', '9780684830490', 1952, 9, 1, 4, 5),
('A Tale of Two Cities', '9780141439600', 1859, 10, 8, 2, 4);

-------- Insert Data for 'members_tb'-----------------------
INSERT INTO members_tb (memb_name, email, phone, address) VALUES
('Alice Johnson', 'alice.j@example.com', '9876543210', 'New York, USA'),
('Bob Smith', 'bob.smith@example.com', '9123456789', 'London, UK'),
('Charlie Lee', 'charlie.lee@example.com', '9998877665', 'Toronto, Canada'),
('Diana Prince', 'diana.p@example.com', '9871234567', 'Paris, France'),
('Ethan Hunt', 'ethan.h@example.com', '9988776655', 'Berlin, Germany'),
('Fiona Gallagher', 'fiona.g@example.com', '9012345678', 'Dublin, Ireland'),
('George Brown', 'george.b@example.com', '9876541230', 'Mumbai, India'),
('Hannah Davis', 'hannah.d@example.com', '9090909090', 'Sydney, Australia'),
('Ian Wright', 'ian.w@example.com', '9234567890', 'Cape Town, South Africa'),
('Julia Roberts', 'julia.r@example.com', '9345678901', 'Rome, Italy');

-------Insert Data for 'loans_tb'----------------------------------
INSERT INTO loans_tb (memb_id, bk_id, due_date, return_date, status) VALUES
(1, 1, '2025-07-10', NULL, 'borrowed'),
(2, 2, '2025-07-05', '2025-07-04', 'returned'),
(3, 3, '2025-07-08', NULL, 'overdue'),
(4, 4, '2025-07-11', NULL, 'borrowed'),
(5, 5, '2025-07-03', '2025-07-03', 'returned'),
(6, 6, '2025-07-07', NULL, 'borrowed'),
(7, 7, '2025-07-06', '2025-07-05', 'returned'),
(8, 8, '2025-07-12', NULL, 'borrowed'),
(9, 9, '2025-07-09', '2025-07-08', 'returned'),
(10, 10, '2025-07-13', NULL, 'borrowed');

----------------Retrive all details of Tables-------

SELECT * FROM authors_tb;
SELECT * FROM categories_tb;
SELECT * FROM books_tb;
SELECT * FROM members_tb;
SELECT * FROM loans_tb;