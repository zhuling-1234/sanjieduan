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
INSERT INTO categories VALUES('3','运动',NULL);
INSERT INTO categories VALUES('4','户外',NULL);
INSERT INTO categories VALUES('5','儿童',NULL);
INSERT INTO categories VALUES('6','箱包',NULL);

--二级分类
INSERT INTO categories VALUES('1-1','品牌','1');
INSERT INTO categories VALUES('1-2','畅销推荐','1');
INSERT INTO categories VALUES('1-3','女士靴子','1');

INSERT INTO categories VALUES('2-1','品牌','2');
INSERT INTO categories VALUES('2-2','热销推荐','2');
INSERT INTO categories VALUES('2-3','精选分类','2');

INSERT INTO categories VALUES('3-1','热销品牌','3');
INSERT INTO categories VALUES('3-2','运动服','3');
INSERT INTO categories VALUES('3-3','关键词','3');

INSERT INTO categories VALUES('4-1','品牌','4');
INSERT INTO categories VALUES('4-2','户外服','4');
INSERT INTO categories VALUES('4-3','关键词','4');

INSERT INTO categories VALUES('5-1','热门品牌','5');
INSERT INTO categories VALUES('5-2','童鞋','5');
INSERT INTO categories VALUES('5-3','童装','5');

INSERT INTO categories VALUES('6-1','品牌','6');
INSERT INTO categories VALUES('6-2','魅力女包','6');
INSERT INTO categories VALUES('6-3','经典男包','6');

--三级分类
--女鞋
INSERT INTO categories VALUES('1-1-1','百丽','1-1');
INSERT INTO categories VALUES('1-1-2','森达','1-1');
INSERT INTO categories VALUES('1-1-3','思加图','1-1');
INSERT INTO categories VALUES('1-1-4','真美诗','1-1');
INSERT INTO categories VALUES('1-1-5','妙丽','1-1');
INSERT INTO categories VALUES('1-1-6','他他','1-1');
INSERT INTO categories VALUES('1-1-7','天美意','1-1');
INSERT INTO categories VALUES('1-1-8','拔佳','1-1');

INSERT INTO categories VALUES('1-2-1','2020新款单鞋','1-2');
INSERT INTO categories VALUES('1-2-2','专柜同款','1-2');
INSERT INTO categories VALUES('1-2-3','人气TOP','1-2');
INSERT INTO categories VALUES('1-2-4','老爹鞋','1-2');
INSERT INTO categories VALUES('1-2-5','乐福鞋','1-2');
INSERT INTO categories VALUES('1-2-6','小白鞋','1-2');

INSERT INTO categories VALUES('1-3-1','中靴','1-3');
INSERT INTO categories VALUES('1-3-2','短靴','1-3');
INSERT INTO categories VALUES('1-3-3','长靴','1-3');
INSERT INTO categories VALUES('1-3-4','雪地靴','1-3');
INSERT INTO categories VALUES('1-3-5','绒里靴','1-3');
INSERT INTO categories VALUES('1-3-6','马丁靴','1-3');

--男鞋
INSERT INTO categories VALUES('2-1-1','百丽','2-1');
INSERT INTO categories VALUES('2-1-2','思加图','2-1');
INSERT INTO categories VALUES('2-1-3','圣伽步','2-1');
INSERT INTO categories VALUES('2-1-4','森达','2-1');
INSERT INTO categories VALUES('2-1-5','妙丽','2-1');
INSERT INTO categories VALUES('2-1-6','他他','2-1');
INSERT INTO categories VALUES('2-1-7','天美意','2-1');

INSERT INTO categories VALUES('2-2-1','2020新款','2-2');
INSERT INTO categories VALUES('2-2-2','专柜同款','2-2');
INSERT INTO categories VALUES('2-2-3','热销TOP','2-2');
INSERT INTO categories VALUES('2-2-4','小白鞋','2-2');
INSERT INTO categories VALUES('2-2-5','老爹鞋','2-2');

INSERT INTO categories VALUES('2-3-1','正装鞋','2-3');
INSERT INTO categories VALUES('2-3-2','休闲鞋','2-3');
INSERT INTO categories VALUES('2-3-3','系带鞋','2-3');
INSERT INTO categories VALUES('2-3-4','懒人鞋','2-3');
INSERT INTO categories VALUES('2-3-5','乐福鞋','2-3');
INSERT INTO categories VALUES('2-3-6','豆豆鞋','2-3');
INSERT INTO categories VALUES('2-3-7','德比鞋','2-3');

--运动
INSERT INTO categories VALUES('3-1-1','耐克','3-1');
INSERT INTO categories VALUES('3-1-2','圣伽步','3-1');
INSERT INTO categories VALUES('3-1-3','阿迪达斯','3-1');
INSERT INTO categories VALUES('3-1-4','三叶草','3-1');
INSERT INTO categories VALUES('3-1-5','彪马','3-1');
INSERT INTO categories VALUES('3-1-6','匡威','3-1');
INSERT INTO categories VALUES('3-1-7','亚瑟士','3-1');

INSERT INTO categories VALUES('3-2-1','夹克','3-2');
INSERT INTO categories VALUES('3-2-2','卫衣','3-2');
INSERT INTO categories VALUES('3-2-3','长裤','3-2');
INSERT INTO categories VALUES('3-2-4','POLO衫','3-2');
INSERT INTO categories VALUES('3-2-5','套头衫','3-2');
INSERT INTO categories VALUES('3-2-6','紧身服','3-2');

INSERT INTO categories VALUES('3-3-1','专柜同款','3-3');
INSERT INTO categories VALUES('3-3-2','夏季新品','3-3');
INSERT INTO categories VALUES('3-3-3','贝壳头鞋','3-3');
INSERT INTO categories VALUES('3-3-4','SALE','3-3');

--户外
INSERT INTO categories VALUES('4-1-1','CAT','4-1');
INSERT INTO categories VALUES('4-1-2','添泊兰','4-1');

INSERT INTO categories VALUES('4-2-1','休闲裤','4-2');
INSERT INTO categories VALUES('4-2-2','短袖','4-2');
INSERT INTO categories VALUES('4-2-3','工装靴','4-2');

INSERT INTO categories VALUES('4-3-1','速干','4-3');
INSERT INTO categories VALUES('4-3-2','大黄靴','4-3');
INSERT INTO categories VALUES('4-3-3','热销TOP','4-3');

--儿童
INSERT INTO categories VALUES('5-1-1','耐克','5-1');
INSERT INTO categories VALUES('5-1-3','阿迪','5-1');
INSERT INTO categories VALUES('5-1-4','三叶草','5-1');

INSERT INTO categories VALUES('5-2-1','复刻鞋','5-2');
INSERT INTO categories VALUES('5-2-2','休闲鞋','5-2');
INSERT INTO categories VALUES('5-2-3','篮球鞋','5-2');
INSERT INTO categories VALUES('5-2-4','跑步鞋','5-2');
INSERT INTO categories VALUES('5-2-5','训练鞋','5-2');

INSERT INTO categories VALUES('5-3-1','儿童套装','5-3');
INSERT INTO categories VALUES('5-3-2','裤装','5-3');
INSERT INTO categories VALUES('5-3-3','外套','5-3');
INSERT INTO categories VALUES('5-3-4','卫衣','5-3');
INSERT INTO categories VALUES('5-3-5','棉服','5-3');
INSERT INTO categories VALUES('5-3-6','裙装','5-3');

--箱包
INSERT INTO categories VALUES('6-1-1','百丽箱包','6-1');
INSERT INTO categories VALUES('6-1-3','真美诗','6-1');
INSERT INTO categories VALUES('6-1-4','妙丽','6-1');
INSERT INTO categories VALUES('6-1-5','他他','6-1');
INSERT INTO categories VALUES('6-1-6','百思图','6-1');

INSERT INTO categories VALUES('6-2-1','手提包','6-2');
INSERT INTO categories VALUES('6-2-2','单肩包','6-2');
INSERT INTO categories VALUES('6-2-3','双肩包','6-2');
INSERT INTO categories VALUES('6-2-4','斜挎包','6-2');

INSERT INTO categories VALUES('6-3-1','单肩包','6-3');
INSERT INTO categories VALUES('6-3-2','斜挎包','6-3');
INSERT INTO categories VALUES('6-3-3','手包','6-3');
INSERT INTO categories VALUES('6-3-4','双肩包','6-3');

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
