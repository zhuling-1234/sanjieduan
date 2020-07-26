const express = require('express');
const router = express.Router();
const pool = require('../mysql');

router.get('/list', (req, res) => {
    const categoryId = req.param('categoryId');
    const pageIndex = Number(req.param('pageIndex'));
    const keyword = req.param('keyword');
    if (!categoryId) {
        resError(res, '商品分类ID不能为空');
        return;
    }
    if (pageIndex===NAN || pageIndex<1) {
        resError(res, '页码不能为空，并且不能小于1');
        return;
    }
    let sql = 'select * from products where categoryId = ?';
    let sqlparams = [];
    pool.query();
})


function resError(res, msg) {
    res.status(400).send({
        msg: msg
    });
}

module.exports = router;
