DROP DATABASE IF EXISTS craigslist;

CREATE DATABASE craigslist;

\c craigslist

CREATE TABLE region
(
  id SERIAL PRIMARY KEY,
  region TEXT NOT NULL,
);

CREATE TABLE user
(
  id SERIAL PRIMARY KEY,
  user TEXT NOT NULL,
  region_id INTEGER REFERENCES region ON DELETE CASCADE
);


CREATE TABLE categories
(
  id SERIAL PRIMARY KEY,
  category TEXT NOT NULL
);

CREATE TABLE posts
(
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  post_text TEXT NOT NULL,
  user_id INTEGER REFERENCES user ON DELETE CASCADE
  region_id INTEGER REFERENCES region ON DELETE CASCADE
  category_id INTEGER REFERENCES category ON DELETE CASCADE
);

INSERT INTO region (region)
VALUES
  ('Los Angeles')
  ('Memphis')

INSERT INTO user (user)
VALUES
  ('coolguy123')
  ('mr.craiglist')

INSERT INTO categories (categories)
VALUES
  ('Sports')
  ('Tools')

