const express = require('express');
const router = express.Router();
const pool = require('../mysql');

//注册  
router.post('/signup', (req, res) => {
    //拿到前端传递的数据
    const uname = req.body.uname;
    const pwd = req.body.pwd;
    
    //校验
    if (!uname) {
        resError(res, '帐号不能为空');
        return;
    }
    if (!pwd) {
        resError(res, '密码不能为空');
        return;
    }
    if (uname.length > 10) {
        resError(res, '账号最大长度为10位');
        return;
    }
    if (pwd.length !== 8) {
        resError(res, '密码长度只能为8位长度');
        return;
    }

    pool.query('select * from users where uname = ?', uname, (error, results) => {
        if (error) {
            resError(res, '插入数据时发生异常');
            return;
        }
        if (results.length !== 0) {
            resError(res, '用户名已存在');
            return;
        }

        //校验成功存入数据库
        pool.query('insert into users set ?', {
            uname: uname,
            pwd: pwd
        }, (error, results) => {
            if (error) {
                resError(res, '系统发生异常');
                return;
            }
            
            // 验证所有错误情况，当没有错误情况后，代表验证成功，才写res.send()返回
            res.send();
        });
    });
});


//登录
router.post('/signin',(req, res) => {
    const uname = req.body.uname;
    const pwd = req.body.pwd;
    //校验
    if(!uname){
        resError(res,'用户名不能为空');
        return;
    }
    if(!pwd){
        resError(res,'密码不能为空');
        return;
    }
    pool.query('select * from users where uname = ? and pwd = ?',[uname,pwd],(error,results) => {
        if (error){
            resError(res,'系统发生异常');
            return;
        }
        if(results.length===0){
            resError(res,'用户名或密码错误');
            return;
        }
        res.send();
    });
});

function resError(res, msg) {
    res.status(400).send({
        msg: msg
    });
}

module.exports = router;