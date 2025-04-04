use newload;

CREATE TABLE bank (
    id INT PRIMARY KEY AUTO_INCREMENT,
    account_number VARCHAR(20) UNIQUE NOT NULL,
    customer_name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    balance DECIMAL(15,2) NOT NULL DEFAULT 0.00,
    account_type ENUM('Savings', 'Checking', 'Business') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO bank (account_number, customer_name, age, balance, account_type) VALUES
    ('100000001', 'Alice Johnson', 34, 5000.50, 'Savings'),
    ('100000002', 'Bob Smith', 45, 3000.00, 'Checking'),
    ('100000003', 'Charlie Brown', 29, 12000.75, 'Business'),
    ('100000004', 'David Williams', 40, 8500.20, 'Savings'),
    ('100000005', 'Emma White', 50, 2500.60, 'Checking'),
    ('100000006', 'Frank Harris', 28, 6700.80, 'Business'),
    ('100000007', 'Grace Martin', 37, 9800.15, 'Savings'),
    ('100000008', 'Henry Thomas', 46, 4300.45, 'Checking'),
    ('100000009', 'Isabella Moore', 31, 11000.90, 'Business'),
    ('100000010', 'Jack Taylor', 52, 3600.75, 'Savings'),
    ('100000011', 'Kelly Anderson', 29, 7300.30, 'Checking'),
    ('100000012', 'Liam Brown', 41, 2900.40, 'Business'),
    ('100000013', 'Mia Wilson', 35, 12500.55, 'Savings'),
    ('100000014', 'Noah Harris', 39, 500.20, 'Checking'),
    ('100000015', 'Olivia Clark', 43, 7750.65, 'Business'),
    ('100000016', 'Paul Lewis', 27, 4100.90, 'Savings'),
    ('100000017', 'Quinn Young', 30, 3200.30, 'Checking'),
    ('100000018', 'Ryan Walker', 48, 8800.75, 'Business'),
    ('100000019', 'Sophia King', 34, 9700.50, 'Savings'),
    ('100000020', 'Tom Adams', 50, 2600.10, 'Checking'),
	('100000021', 'User 21', 22, 6400.10, 'Savings'),
    ('100000022', 'User 22', 35, 5200.25, 'Checking'),
    ('100000023', 'User 23', 45, 8900.60, 'Business'),
    ('100000024', 'User 24', 33, 7300.85, 'Savings'),
    ('100000025', 'User 25', 29, 2750.40, 'Checking'),
    ('100000026', 'User 26', 56, 10100.15, 'Business'),
    ('100000027', 'User 27', 38, 6000.00, 'Savings'),
    ('100000028', 'User 28', 41, 7200.30, 'Checking'),
    ('100000029', 'User 29', 53, 9600.75, 'Business'),
    ('100000030', 'User 30', 27, 8700.50, 'Savings');
    
    select * from bank;
    
    select * from bank where age <50;

DELIMITER $$
CREATE PROCEDURE MYFIRSTPRO( IN AGE_VAR INT)
BEGIN
SELECT * FROM BANK WHERE AGE > AGE_VAR;
END $$

CALL MYFIRSTPRO(50);


DELIMITER $$
CREATE PROCEDURE MYFIRSTPRO( IN AGE_VAR INT)
BEGIN
SELECT * FROM BANK WHERE AGE < AGE_VAR;
END $$

CALL MYFIRSTPRO(28);


DELIMITER $$


