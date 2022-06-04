CREATE DATABASE IF NOT EXISTS UAT;

USE UAT;
ALTER DATABASE UAT CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

CREATE TABLE user (
    id int unsigned auto_increment primary key,
    email varchar(255) unique key not null,
    password varchar(30) not null,
    firstname varchar(255),
    lastname varchar(255),
    phone varchar(15),
    disabled BOOLEAN DEFAULT 0,
    logged_in BOOLEAN DEFAULT 0
);
-- ALTER TABLE user CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
INSERT INTO `user`(`email`, `password`, `firstname`, `lastname`, `phone`) VALUES ("admin@gmail.com","admin@123","admin","juppiter ai labs","1234567890");

INSERT INTO `user` VALUES (2,'sales@jupiterailabs.com','Sales@123','Sales','juppiter ai labs','9911027368',0,0),(3,'vikas.sawant@jupiterailabs.com','Vikas@123','Vikas','Shawant','9911027368',0,0),(4,'Shirashti.jain@jupiterailabs.com','Shirashti@123','Shirashti','Jain','9479602803',0,0),(5,'mohit@juppiterailabs.com','Mohit@123','Mohit','Jain','9479602803',0,0),(6,'sonal@jupiterailabs.com','Sonal@123','Sonal','Jain','9479602803',0,0),(7,'kusumkar@juppiterailabs.com','Kusumkar@123','kusumkar','juppiter ai labs','1234567890',0,0);

CREATE TABLE job (
    id int unsigned auto_increment primary key,
    keyword varchar(255) not null,
    title  varchar(255),
    link  varchar(255) not null,
    posted_on  datetime,
    hourly_budget_min  int,
    hourly_budget_max  int,
    fixed_budget  int,
    currency_code varchar(30),
    is_job_fixed  BOOLEAN,
    is_payment_verified  BOOLEAN,
    job_level  int,
    project_length  int,
    country  varchar(100) ,
    total_jobs_posted  int,
    open_jobs  int,
    total_reviews  int,
    rating  double,
    total_hires  int,
    client_since  datetime,
    client_spent  double,
    skills text
);
-- ALTER TABLE job CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE user_log (
    id int unsigned auto_increment primary key,
    user int unsigned,
    date_submitted datetime,
    is_scraped BOOLEAN,
    keyword varchar(255) not null,
    last_posted  datetime,
    hourly_budget_min  int,
    hourly_budget_max  int,
    currency_code varchar(30),
    unspecified_jobs  BOOLEAN,
    payment_verified  BOOLEAN,
    payment_unverified  BOOLEAN,
    job_expert  BOOLEAN,
    job_intermediate  BOOLEAN,
    job_entry  BOOLEAN,
    project_length_zero  BOOLEAN,
    project_length_short  BOOLEAN,
    project_length_medium  BOOLEAN,
    project_length_long  BOOLEAN,
    client_spent  double,
    countries text
);