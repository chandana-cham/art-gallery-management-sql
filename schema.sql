CREATE TABLE artists (
    artist_id INT PRIMARY KEY,
    artist_name VARCHAR(100),
    country VARCHAR(50),
    specialization VARCHAR(50)
);

CREATE TABLE artworks (
    artwork_id INT PRIMARY KEY,
    title VARCHAR(100),
    artist_id INT,
    price DECIMAL(10,2),
    status VARCHAR(20),
    FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
);

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50),
    contact VARCHAR(50)
);

CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    artwork_id INT,
    customer_id INT,
    sale_date DATE,
    sale_price DECIMAL(10,2),
    FOREIGN KEY (artwork_id) REFERENCES artworks(artwork_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
