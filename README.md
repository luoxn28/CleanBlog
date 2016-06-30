# CleanBlog
**Clean Blog** is a personal blog for you and me ^_^.
I've put it on production for my personal blog site on [http://luoxn28.xyz:8080](http://luoxn28.xyz:8080).

**Clean Blog** is powered by some powerful frameworks and third-party projects:
- [Spring](https://spring.io/)  A most popular framework helps development teams everywhere build simple, portable, fast and flexible JVM-based systems and applications.
- [SpringMVC](https://spring.io/)  A popular MVC framework of Spring family.
- [MyBatis](http://ibatis.apache.org/)  A SQL mapper framework makes it easier to use a relational database with object-oriented applications.
- [MySQL](http://www.mysql.com/)  A popular relational database.
- [Bootstrap](http://www.bootcss.com/)  A very popular and responsive front-end framework.
- [UEditor](http://ueditor.baidu.com/website/)  A rich text web editor by baidu.

## To use
Fork CleanBlog project, download it to local computer.
Create A J2EE Web Application Product by IDEA, import the source code into it.
Create a db.properties file like this:

```
user=xxx
password=xxx
driverClass=com.mysql.jdbc.Driver
jdbcUrl=jdbc:mysql://192.168.1.150/clean_blog?useUnicode=true&characterEncoding=utf8
```

```
# If you're using Centos server

# Install MySQL
yum install mysql-server
service mysql start
mysql -u root -p
>> create database clean_blog;
```

## License
Apache License (Version 2.0)