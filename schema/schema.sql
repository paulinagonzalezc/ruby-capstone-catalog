-- Music Album class table
CREATE TABLE music_album (
  id SERIAL PRIMARY KEY,
  item_id int FOREIGN KEY REFERENCES item(id),
  on_spotify BOOLEAN,
  publish_date DATE,
  archived BOOLEAN,
);

-- Genre class table
CREATE TABLE genre (
  id SERIAL PRIMARY KEY,
  item_id int FOREIGN KEY REFERENCES item(id),
  name VARCHAR(100)
);

-- CREATE TABLE books
CREATE TABLE books (
  id SERIAL PRIMARY KEY,
  item_id int FOREIGN KEY REFERENCES item(id),
  author VARCHAR(100),
  genre VARCHAR(100),
  publish_date DATE,
  archived BOOLEAN,
  cover_state VARCHAR(100),
);

-- CREATE TABLE lables
CREATE TABLE labels (
  id INTERGER NOT NULL,
  title VARCHAR(100) NOT NULL,
  color VARCHAR (100) NOT NULL,
  PRIMARY KEY (id)
  ITEMS_ID INT FOREIGN KEY REFERENCES item(id),
  
-- Movie class table
CREATE TABLE movie (
  id SERIAL PRIMARY KEY,
  item_id int FOREIGN KEY REFERENCES item(id),
  silet BOOLEAN,
  publish_date DATE,
  archived BOOLEAN,
);

-- Source class table
CREATE TABLE source (
  id SERIAL PRIMARY KEY,
  item_id int FOREIGN KEY REFERENCES item(id),
  name VARCHAR(100)
);