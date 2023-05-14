DROP TABLE IF EXISTS region, country, city, measurement, coastline;

CREATE TABLE region
(
identifier integer,
description char
);

ALTER TABLE region ADD PRIMARY KEY(identifier);

CREATE TABLE country
(
identifier integer,
region integer,
description char
);

ALTER TABLE country ADD PRIMARY KEY (identifier);
ALTER TABLE country ADD FOREIGN KEY (region) REFERENCES region (identifier);

CREATE TABLE city
(
identifier integer,
country integer,
description text,
latitude integer,
longitude integer,
dataset text
);

ALTER TABLE city ADD PRIMARY KEY(identifier);
ALTER TABLE city ADD FOREIGN KEY (country) REFERENCES country (identifier);

CREATE TABLE measurement
(
city integer,
mark date,
temperature text
);

ALTER TABLE measurement ADD FOREIGN KEY (city) REFERENCES city (identifier);

CREATE TABLE coastline
(
shape integer,
segment integer,
latitude integer,
longitude integer
);
