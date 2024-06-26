-- Drop table commands
DROP TABLE IF EXISTS city_languages CASCADE;
DROP TABLE IF EXISTS city CASCADE;
DROP TABLE IF EXISTS country CASCADE;

-- Create table commands
CREATE TABLE city (
                      city_area FLOAT(53) NOT NULL,
                      city_population INTEGER NOT NULL CHECK (city_population >= 0),
                      founded_at INTEGER,
                      country_id BIGINT NOT NULL,
                      id BIGINT GENERATED BY DEFAULT AS IDENTITY,
                      city_name VARCHAR(255),
                      PRIMARY KEY (id)
);

CREATE TABLE city_languages (
                                city_id BIGINT NOT NULL,
                                languages VARCHAR(255)
);

CREATE TABLE country (
                         country_area FLOAT(53) NOT NULL,
                         id BIGINT GENERATED BY DEFAULT AS IDENTITY,
                         country_name VARCHAR(255) UNIQUE,
                         currency VARCHAR(255),
                         PRIMARY KEY (id)
);