SET NAMES utf8;
DROP DATABASE IF EXISTS exp;
CREATE DATABASE exp CHARSET=UTF8;
USE exp;

--用户表
CREATE TABLE users(
    id INT PRIMARY KEY AUTO_INCREMENT,
    uname VARCHAR(10) NOT NULL,
    pwd CHAR(8) NOT NULL
);

--商品分类表
CREATE TABLE categories(
    id VARCHAR(10) PRIMARY KEY ,
    cname VARCHAR(20) NOT NULL,
    parentId VARCHAR(10),
    FOREIGN KEY(parentId) REFERENCES categories(id)
);

--商品表
CREATE TABLE products(
    id INT PRIMARY KEY AUTO_INCREMENT,
    pname VARCHAR(50) NOT NULL,
    price DECIMAL(5,2) NOT NULL,
    categoryId VARCHAR(10) NOT NULL,
    FOREIGN KEY(categoryId) REFERENCES categories(id)
);

--用户表 数据
INSERT INTO users VALUES(NULL,'aimmy','11111111');
INSERT INTO users VALUES(NULL,'cindy','22222222');
INSERT INTO users VALUES(NULL,'lancy','33333333');

--商品分类表 数据
--一级分类
INSERT INTO categories VALUES('1','女鞋',NULL);
INSERT INTO categories VALUES('2','男鞋',NULL);
--二级分类
INSERT INTO categories VALUES('1-1','品牌','1');
INSERT INTO categories VALUES('1-2','热销推荐','1');
INSERT INTO categories VALUES('1-3','女士靴子','1');

INSERT INTO categories VALUES('2-1','品牌','2');
INSERT INTO categories VALUES('2-2','热销推荐','2');
INSERT INTO categories VALUES('2-3','精选分类','2');

--三级分类
INSERT INTO categories VALUES('1-1-1','森达','1-1');
INSERT INTO categories VALUES('1-1-2','森达','1-1');
INSERT INTO categories VALUES('1-1-3','森达','1-1');
INSERT INTO categories VALUES('1-1-4','森达','1-1');
INSERT INTO categories VALUES('1-1-5','森达','1-1');
INSERT INTO categories VALUES('1-1-6','森达','1-1');
INSERT INTO categories VALUES('1-1-7','森达','1-1');
INSERT INTO categories VALUES('1-1-8','森达','1-1');
INSERT INTO categories VALUES('1-1-9','森达','1-1');
INSERT INTO categories VALUES('1-1-10','森达','1-1');
INSERT INTO categories VALUES('1-1-11','森达','1-1');

INSERT INTO categories VALUES('1-2-1','专柜同款','1-2');
INSERT INTO categories VALUES('1-2-2','专柜同款','1-2');
INSERT INTO categories VALUES('1-2-3','专柜同款','1-2');
INSERT INTO categories VALUES('1-2-4','专柜同款','1-2');
INSERT INTO categories VALUES('1-2-5','专柜同款','1-2');
INSERT INTO categories VALUES('1-2-6','专柜同款','1-2');
INSERT INTO categories VALUES('1-2-7','专柜同款','1-2');
INSERT INTO categories VALUES('1-2-8','专柜同款','1-2');
INSERT INTO categories VALUES('1-2-9','专柜同款','1-2');
INSERT INTO categories VALUES('1-2-10','专柜同款','1-2');
INSERT INTO categories VALUES('1-2-11','专柜同款','1-2');

INSERT INTO categories VALUES('1-3-1','短靴','1-3');
INSERT INTO categories VALUES('1-3-2','短靴','1-3');
INSERT INTO categories VALUES('1-3-3','短靴','1-3');
INSERT INTO categories VALUES('1-3-4','短靴','1-3');
INSERT INTO categories VALUES('1-3-5','短靴','1-3');
INSERT INTO categories VALUES('1-3-6','短靴','1-3');
INSERT INTO categories VALUES('1-3-7','短靴','1-3');
INSERT INTO categories VALUES('1-3-8','短靴','1-3');
INSERT INTO categories VALUES('1-3-9','短靴','1-3');
INSERT INTO categories VALUES('1-3-10','短靴','1-3');
INSERT INTO categories VALUES('1-3-11','短靴','1-3');


INSERT INTO categories VALUES('2-1-1','圣伽步','2-1');
INSERT INTO categories VALUES('2-1-2','圣伽步','2-1');
INSERT INTO categories VALUES('2-1-3','圣伽步','2-1');
INSERT INTO categories VALUES('2-1-4','圣伽步','2-1');
INSERT INTO categories VALUES('2-1-5','圣伽步','2-1');
INSERT INTO categories VALUES('2-1-6','圣伽步','2-1');
INSERT INTO categories VALUES('2-1-7','圣伽步','2-1');
INSERT INTO categories VALUES('2-1-8','圣伽步','2-1');
INSERT INTO categories VALUES('2-1-9','圣伽步','2-1');
INSERT INTO categories VALUES('2-1-10','圣伽步','2-1');
INSERT INTO categories VALUES('2-1-11','圣伽步','2-1');

INSERT INTO categories VALUES('2-2-1','2020新款','2-2');
INSERT INTO categories VALUES('2-2-2','2020新款','2-2');
INSERT INTO categories VALUES('2-2-3','2020新款','2-2');
INSERT INTO categories VALUES('2-2-4','2020新款','2-2');
INSERT INTO categories VALUES('2-2-5','2020新款','2-2');
INSERT INTO categories VALUES('2-2-6','2020新款','2-2');
INSERT INTO categories VALUES('2-2-7','2020新款','2-2');
INSERT INTO categories VALUES('2-2-8','2020新款','2-2');
INSERT INTO categories VALUES('2-2-9','2020新款','2-2');
INSERT INTO categories VALUES('2-2-10','2020新款','2-2');
INSERT INTO categories VALUES('2-2-11','2020新款','2-2');

INSERT INTO categories VALUES('2-3-1','休闲鞋','2-3');
INSERT INTO categories VALUES('2-3-2','休闲鞋','2-3');
INSERT INTO categories VALUES('2-3-3','休闲鞋','2-3');
INSERT INTO categories VALUES('2-3-4','休闲鞋','2-3');
INSERT INTO categories VALUES('2-3-5','休闲鞋','2-3');
INSERT INTO categories VALUES('2-3-6','休闲鞋','2-3');
INSERT INTO categories VALUES('2-3-7','休闲鞋','2-3');
INSERT INTO categories VALUES('2-3-8','休闲鞋','2-3');
INSERT INTO categories VALUES('2-3-9','休闲鞋','2-3');
INSERT INTO categories VALUES('2-3-10','休闲鞋','2-3');
INSERT INTO categories VALUES('2-3-11','休闲鞋','2-3');

--商品表 数据
INSERT INTO products VALUES(NULL,'Tata/他她秋专柜同款浅金布面蝴蝶结方头平底鞋浅口女鞋YAP01CQ9',189.00,'1');
INSERT INTO products VALUES(NULL,'Tata/他她秋专柜同款浅金布面蝴蝶结方头平底鞋浅口女鞋YAP01CQ9',189.00,'1');
INSERT INTO products VALUES(NULL,'Tata/他她秋专柜同款浅金布面蝴蝶结方头平底鞋浅口女鞋YAP01CQ9',189.00,'1');
INSERT INTO products VALUES(NULL,'Tata/他她秋专柜同款浅金布面蝴蝶结方头平底鞋浅口女鞋YAP01CQ9',189.00,'1');
INSERT INTO products VALUES(NULL,'Tata/他她秋专柜同款浅金布面蝴蝶结方头平底鞋浅口女鞋YAP01CQ9',189.00,'1');
INSERT INTO products VALUES(NULL,'Tata/他她秋专柜同款浅金布面蝴蝶结方头平底鞋浅口女鞋YAP01CQ9',189.00,'1');
INSERT INTO products VALUES(NULL,'Tata/他她秋专柜同款浅金布面蝴蝶结方头平底鞋浅口女鞋YAP01CQ9',189.00,'1');
INSERT INTO products VALUES(NULL,'Tata/他她秋专柜同款浅金布面蝴蝶结方头平底鞋浅口女鞋YAP01CQ9',189.00,'1');
INSERT INTO products VALUES(NULL,'Tata/他她秋专柜同款浅金布面蝴蝶结方头平底鞋浅口女鞋YAP01CQ9',189.00,'1');
INSERT INTO products VALUES(NULL,'Tata/他她秋专柜同款浅金布面蝴蝶结方头平底鞋浅口女鞋YAP01CQ9',189.00,'1');
INSERT INTO products VALUES(NULL,'Tata/他她秋专柜同款浅金布面蝴蝶结方头平底鞋浅口女鞋YAP01CQ9',189.00,'1');
INSERT INTO products VALUES(NULL,'Tata/他她秋专柜同款浅金布面蝴蝶结方头平底鞋浅口女鞋YAP01CQ9',189.00,'1');
INSERT INTO products VALUES(NULL,'Tata/他她秋专柜同款浅金布面蝴蝶结方头平底鞋浅口女鞋YAP01CQ9',189.00,'1');
INSERT INTO products VALUES(NULL,'Tata/他她秋专柜同款浅金布面蝴蝶结方头平底鞋浅口女鞋YAP01CQ9',189.00,'1');
INSERT INTO products VALUES(NULL,'Tata/他她秋专柜同款浅金布面蝴蝶结方头平底鞋浅口女鞋YAP01CQ9',189.00,'1');
INSERT INTO products VALUES(NULL,'Tata/他她秋专柜同款浅金布面蝴蝶结方头平底鞋浅口女鞋YAP01CQ9',189.00,'1');
INSERT INTO products VALUES(NULL,'Tata/他她秋专柜同款浅金布面蝴蝶结方头平底鞋浅口女鞋YAP01CQ9',189.00,'1');
INSERT INTO products VALUES(NULL,'Tata/他她秋专柜同款浅金布面蝴蝶结方头平底鞋浅口女鞋YAP01CQ9',189.00,'1');
INSERT INTO products VALUES(NULL,'Tata/他她秋专柜同款浅金布面蝴蝶结方头平底鞋浅口女鞋YAP01CQ9',189.00,'1');

SELECT * FROM users;
SELECT * FROM categories;
SELECT * FROM products;
