const express = require('express');
const router = express.Router();
const pool = require('../mysql');
var path = require('path');
const fs = require('fs');

router.get('/list', (req, res) => {
    // 分类ID
    const categoryId = req.query.categoryId;
    // 页码(从1开始)
    const pageIndex = Number(req.query.pageIndex);
    // 搜索关键字（没做这个功能，暂时注释）
    //const keyword = req.query.keyword;

    if (!categoryId) {
        resError(res, '商品分类ID不能为空');
        return;
    }

    if (!pageIndex || pageIndex < 1) {
        resError(res, '页码不能为空，并且不能小于1');
        return;
    }

    //查询指定分类id下的产品列表，并根据分页参数取出部分数据
    pool.query('select count(1) count from products where categoryId = ?', [categoryId] ,(error, countResult) => {
        if(error){
            resError(res, '服务器发生错误');
            return;
        }
        
        // 每一页显示多少条数据
        const pageSize = 8;
        // 该分类下的产品总数量
        const totalCount = countResult[0].count;
        // 判断总数量是否大于1，当大于1才继续查询数据
        if(totalCount){
            // 总共有多少页, 总数量11条，每一页显示8条，那么就应该有2页数据
            // Math.ceil 函数是向上取整，意思是只要有小数，那么整数位就会加1
            // 比如 2.5 那么就 Math.ceil 结果就等于 3
            const totalPage = Math.ceil(totalCount / pageSize);
            if(pageIndex > totalPage){
                resError(res, `请求的页码${pageIndex}超出总页码${totalPage}`)
                return;
            }

            // 继续查询数据
            pool.query('select * from products where categoryId = ? limit ?,?',
            [categoryId, (pageIndex - 1) * pageSize, pageSize], 
            (error, result)=>{
                if(error){
                    resError(res,"服务器错误");
                    return;
                }
                
                // 获取 ../public/xiezi 目录下所有的文件名，得到一个数组，然后每个产品随机取一张图片
                const imgs =  fs.readdirSync(path.resolve(__dirname,'../public/xiezi'));
                
                // 查询出来数据，然后返回
                res.send({
                    totalPage: totalPage,
                    items: result.map((item, index) => {
                        // 基于图片数组的长度，随机一个不超出的索引作为当前产品的图片
                        var imgRandIndex = Math.floor( Math.random() * imgs.length );
                        // 为当前产品添加一个图片地址属性
                        item.imgUrl = 'http://localhost:3000/xiezi/' + imgs[imgRandIndex];

                        return item;
                    })
                });
            });
        }else{
            // 数据库中，该分类下没有产品，所以这里直接返回，就不需要继续查询数据
            res.send({
                totalPage: 0
            })
        }
    });
})


function resError(res, msg) {
    res.status(400).send({
        msg: msg
    });
}

module.exports = router;
