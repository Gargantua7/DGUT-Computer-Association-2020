# DGUT-Computer-Association-2020
Computer Association of Dongguan University of Technology Recruiting System

![Language](https://img.shields.io/badge/Language-Kotlin-blue?style=for-the-badge)
![JVM Version](https://img.shields.io/badge/JVM%20Version-1.8.0__231-yellow?style=for-the-badge)
![JVM Version](https://img.shields.io/badge/Gradle%20Version-6.5-green?style=for-the-badge)
![GitHub](https://img.shields.io/github/license/Gargantua7/Notepad?style=for-the-badge)
***

## Dependencies
- org.jetbrains.kotlin:kotlin-stdlib-jdk8
- org.springframework:spring-aop:5.2.8.RELEASE
- org.springframework:spring-jdbc:5.2.8.RELEASE
- org.springframework:spring-context:5.2.8.RELEASE
- org.springframework:spring-tx:5.2.8.RELEASE
- org.springframework:spring-aspects:5.2.8.RELEASE
- org.springframework:spring-web:5.2.8.RELEASE
- org.springframework:spring-webmvc:5.2.8.RELEASE
- org.aspectj:aspectjweaver:1.9.6
- org.aspectj:aspectjtools:1.9.6
- org.aspectj:aspectjrt:1.9.6
- org.apache.commons:commons-dbcp2:2.7.0
- org.apache.commons:commons-pool2:2.8.1
- mysql:mysql-connector-java:8.0.21
- javax.servlet:javax.servlet-api:4.0.1
- javax.servlet.jsp:javax.servlet.jsp-api:2.3.3

***

## Database Structure 
- member

    |Attributes |Type       |Description    |Remark         |
    |-----------|---------- |---------------|---------------|
    |id         |INT        |Key            |AUTO_INCREMENT |
    |studentId  |CHAR(12)   |Student ID     |UNIQUE NOT NULL|
    |sex        |CHAR(5)    |               |NOT NULL       |
    |local      |VARCHAR(30)|Campus         |NOT NULL       |
    |collage    |VARCHAR(40)|               |NOT NULL       |
    |major      |VARCHAR(40)|               |NOT NULL       |
    |phone      |VARCHAR(11)|               |NOT NULL       |
    |purpose    |TEXT       |               |               |
    
- officer
    
    |Attributes         |Type       |Description    |Remark         |
    |-----------        |---------- |---------------|---------------|
    |id                 |INT        |Key            |AUTO_INCREMENT |
    |studentId          |CHAR(12)   |Student ID     |UNIQUE NOT NULL|
    |sex                |CHAR(5)    |               |NOT NULL       |
    |local              |VARCHAR(30)|Campus         |NOT NULL       |
    |collage            |VARCHAR(40)|               |NOT NULL       |
    |major              |VARCHAR(40)|               |NOT NULL       |
    |phone              |VARCHAR(11)|               |NOT NULL       |
    |hobby              |TEXT       |               |NOT NULL       |
    |firstIntent        |VARCHAR(20)|               |NOT NULL       |
    |secondIntent       |VARCHAR(20)|               |               |
    |thirdIntent        |VARCHAR(20)|               |               |
    |selfIntroduction   |TEXT       |               |NOT NULL       |