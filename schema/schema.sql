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