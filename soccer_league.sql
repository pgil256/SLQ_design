Design a schema for a simple sports league. Your schema should keep track of

All of the teams in the league
All of the goals scored by every player for each game
All of the players in the league and their corresponding teams
All of the referees who have been part of each game
All of the matches played between teams
All of the start and end dates for season that a league has
The standings/rankings of each team in the league (This doesn’t have to be its own table if the data can be captured somehow).

DROP DATABASE IF EXISTS soccer_league;

CREATE DATABASE soccer_league;

\c soccer_league

CREATE TABLE teams
(
  id SERIAL PRIMARY KEY,
  team TEXT NOT NULL,
);

CREATE TABLE players
(
  id SERIAL PRIMARY KEY,
  player TEXT NOT NULL,
  goals INTEGER NOT NULL,
  team_id INTEGER REFERENCES teams ON DELETE CASCADE
);


CREATE TABLE referees
(
  id SERIAL PRIMARY KEY,
  referee TEXT NOT NULL
);

CREATE TABLE matches
(
  id SERIAL PRIMARY KEY,
  score TEXT NOT NULL
  team1 = team_id INTEGER REFERENCES teams ON DELETE CASCADE
  team2 = team_id INTEGER REFERENCES teams ON DELETE CASCADE
  referee_id INTEGER REFERENCES referees ON DELETE CASCADE
);

CREATE TABLE dates
(
  id SERIAL PRIMARY KEY,
  start_date TEXT NOT NULL
  end_date TEXT NOT NULL
);

CREATE TABLE ranking
(
  id SERIAL PRIMARY KEY,
  team_id INTEGER REFERENCES teams ON DELETE CASCADE
  ranking INTEGER NOT NULL
);

INSERT INTO teams (team)
VALUES
  ('Strikers')
  ('Wildcats')

INSERT INTO player (player, goals, team_id)
VALUES
  ('Joe Blow', 8, 2)
  ('Cristiano Ronaldo', 105, 1)

INSERT INTO referees (referee)
VALUES
  ('Tom Cruise')
  ('Albert Einstein')

INSERT INTO matches (score, team1, team2, referee_id)
VALUES
  ('3-2', 1, 2, 1)
  ('1-4', 2, 1, 2)

INSERT INTO ranking (team_id, ranking)
  (1, 2)
  (2,1)
