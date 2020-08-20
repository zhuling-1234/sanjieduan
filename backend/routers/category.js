const express = require('express');
const router = express.Router();
const pool = require('../mysql');

router.get('/list',(req,res) =>  {
    pool.query('select * from categories',(error,results) => {
        if (error) {
            resError(res, '系统发生异常');
            return;
        }
        res.send(results);
    });
});

function resError(res, msg) {
    res.status(400).send({
        msg: msg
    });
}

module.exports=router;