# set up database and tables then copy csv data into tables
CREATE DATABASE RECORDS;
\CONNECT RECORDS;
CREATE TABLE lps
  (
     artist VARCHAR(150) NOT NULL,
     album  VARCHAR(150) NOT NULL,
     label  VARCHAR(150) NOT NULL,
     notes  VARCHAR(150)
  );

COPY lps(artist, album, label, notes) FROM '12.csv' delimiter ',' csv header;

CREATE TABLE tens
  (
     artist VARCHAR(150) NOT NULL,
     album  VARCHAR(150) NOT NULL,
     label  VARCHAR(150) NOT NULL,
     notes  VARCHAR(150)
  );

COPY tens(artist, album, label, notes) FROM '10.csv' delimiter ',' csv header;

CREATE TABLE sevens
  (
     artist VARCHAR(150) NOT NULL,
     album  VARCHAR(150) NOT NULL,
     label  VARCHAR(150) NOT NULL,
     notes  VARCHAR(150)
  );

COPY sevens(artist, album, label, notes) FROM '7.csv' delimiter ',' csv header;


# sample queries

select * from lps where lps.artist = 'dropdead';
select * from lps full join tens on lps.artist = tens.artist where artist = 'la quiete';
