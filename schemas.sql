CREATE TABLE students (
    name VARCHAR(255) NOT NULL,
    class VARCHAR(50) NOT NULL,
    gender VARCHAR(50) NOT NULL,
    birthday DATE NOT NULL,
    email1 VARCHAR(255) NOT NULL,
    email2 VARCHAR(255),
    block INT,
    year INT,
    excused INT DEFAULT 0,
    unexcused INT DEFAULT 0,
    late INT DEFAULT 0,
    UNIQUE (name, class, birthday, email1)
);

CREATE TABLE grades (
    email1 VARCHAR(255) NOT NULL,
    subject VARCHAR(50) NOT NULL,
    term VARCHAR(10) NOT NULL,
    grade FLOAT,
    passfail CHAR(1),
    year INT,
    UNIQUE (email1, subject, term, year)
);

CREATE TABLE form_submissions (
    className VARCHAR(50) NOT NULL,
    studentEmail VARCHAR(255) NOT NULL,
    section VARCHAR(50) NOT NULL,
    question VARCHAR(255) NOT NULL,
    response TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
