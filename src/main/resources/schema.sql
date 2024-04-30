--USE bbdd_spring; --Comentar solo para los Tests de Integration
DROP TABLE IF EXISTS books;
DROP TABLE IF EXISTS authors;

CREATE TABLE authors (
    id bigint NOT NULL,
    name varchar(50),
    age integer,
    CONSTRAINT authors_pkey PRIMARY KEY (id)
);

CREATE TABLE books (
    isbn varchar(30) NOT NULL,
    title varchar(50),
    author_id bigint,
    CONSTRAINT books_pkey PRIMARY KEY (isbn),
    FOREIGN KEY (author_id) REFERENCES authors(id)
);