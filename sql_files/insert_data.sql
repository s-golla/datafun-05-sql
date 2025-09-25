-- Insert records into the authors table first
INSERT INTO authors (author_id, name, birth_year, nationality) VALUES
    ('AUTHOR_001', 'J.K. Rowling', 1965, 'British'),
    ('AUTHOR_002', 'George Orwell', 1903, 'British'),
    ('AUTHOR_003', 'Harper Lee', 1926, 'American'),
    ('AUTHOR_004', 'F. Scott Fitzgerald', 1896, 'American'),
    ('AUTHOR_005', 'Isabel Allende', 1942, 'Chilean'),
    ('AUTHOR_006', 'Kurt Vonnegut', 1922, 'American'),
    ('AUTHOR_007', 'Chinua Achebe', 1930, 'Nigerian'),
    ('AUTHOR_008', 'Margaret Atwood', 1939, 'Canadian'),
    ('AUTHOR_009', 'Octavia E. Butler', 1947, 'American');

-- Insert records into the books table
-- And include foreign key references to the authors table
-- IMPORTANT: No tic marks inside a string, use two single quotes to escape a single quote
INSERT INTO books (book_id, title, genre, publication_year, author_id) VALUES
    ('BOOK_001', 'Harry Potter and the Sorcerer''s Stone', 'Fantasy', 1997, 'AUTHOR_001'),
    ('BOOK_002', 'Harry Potter and the Chamber of Secrets', 'Fantasy', 1998, 'AUTHOR_001'),
    ('BOOK_003', '1984', 'Dystopian', 1949, 'AUTHOR_002'),
    ('BOOK_004', 'Animal Farm', 'Political Satire', 1945, 'AUTHOR_002'),
    ('BOOK_005', 'To Kill a Mockingbird', 'Fiction', 1960, 'AUTHOR_003'),
    ('BOOK_006', 'The Great Gatsby', 'Tragedy', 1925, 'AUTHOR_004'),
    ('BOOK_007', 'The House of the Spirits', 'Magical Realism', 1982, 'AUTHOR_005'),
    ('BOOK_008', 'Slaughterhouse-Five', 'Science Fiction', 1969, 'AUTHOR_006'),
    ('BOOK_009', 'Breakfast of Champions', 'Satire', 1973, 'AUTHOR_006'),
    ('BOOK_010', 'Things Fall Apart', 'Historical Fiction', 1958, 'AUTHOR_007'),
    ('BOOK_011', 'The Handmaid''s Tale', 'Dystopian', 1985, 'AUTHOR_008'),
    ('BOOK_012', 'Kindred', 'Speculative Fiction', 1979, 'AUTHOR_009');