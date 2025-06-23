-----1. Create  Authors table -----
CREATE TABLE authors_tb
(
	auth_id SERIAL PRIMARY KEY,
	auth_Name VARCHAR(100) NOT NULL,
	auth_Details TEXT,
	areated_date DATE DEFAULT CURRENT_DATE
);


-----2. Create Categories table------
CREATE TABLE categories_tb
(
	cat_id SERIAL PRIMARY KEY,
	cat_Name VARCHAR(50) NOT NULL UNIQUE,
	created_date DATE DEFAULT CURRENT_DATE
);

-----3. Create Books Table-------
CREATE TABLE books_tb
(
	bk_id SERIAL PRIMARY KEY,
	title VARCHAR(150) NOT NULL,
	sr_no VARCHAR(13) UNIQUE NOT NULL,
	published_year INT CHECK (Published_year >= 1500),----year must be 1500 or later (likely to avoid invalid historical data).
	
	auth_id INT NOT NULL REFERENCES authors_tb(auth_id), ---FK ref.- Authors Table 
	cat_id INT NOT NULL REFERENCES categories_tb(cat_id), --FK ref.--Categories Table

	available_copies INT DEFAULT 1 CHECK (available_copies>= 0),--Defaults to 1 if not provided.
	total_copies INT DEFAULT 1 CHECK (total_copies>=0), -- also default 1
	create_date DATE DEFAULT CURRENT_DATE
);

-----4. Create Members Table------
CREATE TABLE members_tb
(
	memb_id SERIAL PRIMARY KEY,
	memb_name VARCHAR(100) NOT NULL,
	email VARCHAR(100) UNIQUE NOT NULL,
	phone VARCHAR(15),
	address VARCHAR(200),
	join_date DATE NOT NULL DEFAULT CURRENT_DATE,
	is_Active BOOLEAN DEFAULT TRUE,   --Member is active unless stated otherwise
	create_date DATE DEFAULT CURRENT_DATE
);

--------5.Loan Table----------------
CREATE TABLE loans_tb
(
	loan_id SERIAL PRIMARY KEY,
	
	memb_id INT NOT NULL REFERENCES members_tb(memb_id), ---FK ref. members_tb
	bk_id INT NOT NULL REFERENCES books_tb(bk_id), ----FK ref. books_tb

	loan_date DATE NOT NULL DEFAULT CURRENT_DATE,
	due_date DATE NOT NULL,
	return_date DATE,

	status VARCHAR(10) DEFAULT 'borrowed' CHECK (status IN ('borrowed', 'returned', 'overdue')), ---Ensures the status is only one of:'borrowed', 'returned', or 'overdue'.
	create_date DATE DEFAULT CURRENT_DATE
);




