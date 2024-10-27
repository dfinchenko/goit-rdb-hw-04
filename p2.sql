INSERT INTO authors (author_name) VALUES ('Mark Twain');
INSERT INTO authors (author_name) VALUES ('Agatha Christie');

INSERT INTO genres (genre_name) VALUES ('Adventure');
INSERT INTO genres (genre_name) VALUES ('Mystery');

INSERT INTO books (title, publication_year, author_id, genre_id) 
VALUES ('The Adventures of Tom Sawyer', 1976, 1, 1);
INSERT INTO books (title, publication_year, author_id, genre_id) 
VALUES ('Murder on the Orient Express', 1934, 2, 2);

INSERT INTO users (username, email) VALUES ('alice_wonder', 'alice@example.com');
INSERT INTO users (username, email) VALUES ('bob_builder', 'bob@example.com');

INSERT INTO borrowed_books (book_id, user_id, borrow_date, return_date) 
VALUES (1, 1, '2024-09-20', '2024-10-05');
INSERT INTO borrowed_books (book_id, user_id, borrow_date, return_date) 
VALUES (2, 2, '2024-10-10', '2024-10-20');