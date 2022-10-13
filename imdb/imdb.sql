CREATE DATABASE imdb

-- movie table
CREATE TABLE movie (
	id int primary key,
    moviename VARCHAR(255),
    director VARCHAR(255),
    music VARCHAR(255)
);

insert into movie values(1,'pizza','seyoon','ani'),(2,'basha','mayoon','ar'),(3,'asuran','veyon','dsp');
alter table movie add column hero int;
alter table movie add foreign key (hero) references Artist(id);

update movie set hero=1 where Id in(1,2);
update movie set hero=2 where Id in(3,4);
update movie set hero=3 where Id in(5,6);

select * from movie;


-- media table
CREATE TABLE media (
    id INT PRIMARY KEY,
    type VARCHAR(255),
    name VARCHAR(255)
);

insert into media values(1,'image','img1'),(2,'image','img2'),(3,'image','img3'),(4,'video','vid1'),(5,'video','vid2'),(6,'video','vid3');
alter table media add column movieid int;
alter table media add foreign key (movieid) references movie(id);

update media set movieid=1 where Id in(1,2);
update media set movieid=2 where Id in(3,4);
update media set movieid=3 where Id in(5,6);

select * from media;

-- gener table
CREATE TABLE gener (
    id INT PRIMARY KEY,
    name VARCHAR(255)
);
insert into gener values(1,'Love'),(2,'Action'),(3,'comedy'),(4,'Thriller'); 
select * from gener;

-- movie gener
CREATE TABLE moviegener (
    id INT PRIMARY KEY
);

insert into moviegener values(1),(2),(3),(4),(5),(6);
alter table moviegener add column generid int;
alter table moviegener add foreign key (generid) references gener(id);

update moviegener set generid=1 where Id in(1,2);
update moviegener set generid=2 where Id in(3,4);
update moviegener set generid=3 where Id in(5,6);
select * from moviegener;

-- user table
CREATE TABLE user (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    age INT
);
insert into user values(1,'aaa',20),(2,'bbb',21),(3,'ccc',22),(4,'ddd',23),(5,'eee',24),(6,'fff',34),(7,'ggg',45),(8,'hhh',34);
select * from user;

-- review table
CREATE TABLE review (
    id INT PRIMARY KEY,
    ponit INT
);

insert into review values(1,3),(2,5),(3,4),(4,2),(5,4),(6,4);

alter table review add column reviewid int;
alter table review add column userid int;

alter table review add foreign key (reviewid) references review(id);
alter table review add foreign key (userid) references user(id);

update review set reviewid=1 where Id in(1,2);
update review set reviewid=2 where Id in(3,4);
update review set reviewid=3 where Id in(5,6);

update review set userid=1 where Id in(1,2);
update review set userid=2 where Id in(3,4);
update review set userid=3 where Id in(5,6);
select * from review;

-- Artist table
CREATE TABLE Artist (
    Id INT PRIMARY KEY,
    name VARCHAR(255),
    phno INT
);

insert into Artist values(1,'A',986765),(2,'b',4565),(3,'c',675867),(4,'d',67888),(5,'e',768545),(6,'f',45645),(7,'g',45645);
select * from Artist;


-- skill table
CREATE TABLE skill (
    id INT PRIMARY KEY,
    skilltype VARCHAR(25)
);

insert into  skill values(1,'dance'),(2,'music'),(3,'fight'),(4,'music'),(5,'dance'),(6,'fight');
select * from skill;


-- Artist skill
CREATE TABLE Artistskill (
    id INT PRIMARY KEY
);

insert into Artistskill values(1),(2),(3),(4),(5),(6);
alter table Artistskill add column artistid int;
alter table Artistskill add column skillid int;
alter table Artistskill add foreign key (artistid) references Artist(id);
alter table Artistskill add foreign key (skillid) references skill(id);

update Artistskill set artistid=1 where Id in(1,2);
update Artistskill set artistid=2 where Id in(3,4);
update Artistskill set artistid=3 where Id in(5,6);

update Artistskill set skillid=1 where Id in(1,2);
update Artistskill set skillid=2 where Id in(3,4);
update Artistskill set skillid=3 where Id in(5,6);
select * from Artistskill;