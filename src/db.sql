DROP DATABASE IF EXISTS clean_blog;
CREATE DATABASE clean_blog DEFAULT CHARACTER SET UTF8;
USE clean_blog;

DROP TABLE IF EXISTS blog;

CREATE TABLE blog (
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(128) NOT NULL,
  text TEXT,
  preview VARCHAR(128),
  author VARCHAR(32),
  category VARCHAR(32),
  date TIMESTAMP DEFAULT '2016-05-20 00:00:00'
);

CREATE TABLE message (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	author VARCHAR(32),
	content TEXT,
	date TIMESTAMP DEFAULT '2016-05-20 00:00:00'
)

insert blog (title, text, preview, author, category, date) values('Python学习笔记', 'Java IO、集合、多线程、框架', 'Python笔记', '骆向南', 'Python', '2016-05-20 00:05:20');
insert blog (title, text, preview, author, category, date) values('C++学习笔记', 'C++ IO、STL、多线程、网络', 'C++笔记', '骆向南', 'C++', '2016-05-20 00:05:20');
insert blog (title, text, preview, author, category, date) values('Java学习笔记', 'Java IO、集合、多线程、框架', 'Java笔记', '骆向南', 'Java', '2016-05-20 00:05:20');
insert blog (title, text, preview, author, category, date) values('SSM整合', 'Spring/SpringMVC/MyBaits', 'SSM整合', '骆向南', 'Java', '2016-05-20 00:05:20');
