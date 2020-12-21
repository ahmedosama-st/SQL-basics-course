# This is the database schema for lesson 10

## Use the following code to get the same database as mine or download index.sql file

---

```sql
create database edms;

use edms;

create table users(
    id int unsigned not null primary key auto_increment,
    name varchar(50) not null,
    email varchar(64) not null,
    password varchar(128) not null,
    profession varchar(30) not null,
    age int(3) not null,
    salary int(4) not null
);

insert into
    users(name, email, password, profession, age, salary)
values
       ('ahmed', 'ahmedosama@sectheater.org', '123456789', 'web developer', 19, 15000),
       ('mohamed', 'mohamedosama@sectheater.org', '987654321', 'team lead', 23, 25000),
       ('sal3awy', 'sal3awy@sectheater.org', '65546554', 'project manager', 28, 17000),
       ('mahmoud', 'mahmoud@sectheater.org', '2112121324', 'web designer', 25, 9000),
       ('gamal', 'gamal@sectheater.org', '12123123', 'full stack web developer', 29, 20000),
       ('abdullah', 'abdullah@sectheater.org', '0110600505', 'android developer', 22, 8000)
;


create table products(
    id int unsigned not null primary key auto_increment,
    name varchar(50) not null,
    price decimal(4, 2) not null,
    stock int(2) not null
);

insert into
    products(name, price, stock)
values
    ('shoes', 25.87, 30),
    ('orange juice', 3.00, 100),
    ('sunglasses', 10.0, 45),
    ('rolex watch', 25.00, 5),
    ('ice watch', 25.00, 16),
    ('blue hoodie', 12.00, 10),
    ('jacket', 12.80, 20)
;
```

## Don't forget to follow us

---

> [Facebook page](https://bit.ly/39dTot4)

> [Facebook group](https://bit.ly/39c5YsH)

> [Telegram channel](https://bit.ly/35Zd41Z)

> [Telegram group](https://bit.ly/361mzOd)

> [Discord](https://bit.ly/39c8Ohw)

> [Youtube](https://bit.ly/2J3v95R)
