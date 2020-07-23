const express=require('express');
const router=express.Router();
const pool=require('../pool.js');

//1.1
router.post('/reg',(req,res)=>{
	let obj=req.body;
	if (!obj.uname){
		res.send({code:401,msg:'uname required'});
		return;
	}
	if (!obj.upwd){
		res.send({code:402,msg:'upwd required'});
		return;
	}
	if (!obj.email){
		res.send({code:403,msg:'email required'});
		return;
	}
	if (!obj.phone){
		res.send({code:404,msg:'phone required'});
		return;
	}
    pool.query('insert into xz_user set ?',[req.body],(err,result)=>{if(err) throw err;});
    res.send({"code":"200","msg":"reg success"});
    //res.redirect('/user_login.html');
})
//1.2
router.post('/login',(req,res)=>{
	let obj=req.body;
	if (!obj.uname){
		res.send({"code":"401","msg":"uname required"});
		return;
	}
	if (!obj.upwd){
		res.send({"code":"402","msg":"upwd required"});
		return;
	}
	pool.query('select * from xz_user where uname= ? and upwd=?',[obj.uname,obj.upwd],(err,result)=>{
		if(err) throw err;
		if (result.length===0){
			res.send({"code":"301","msg":"用户名或者密码错误"});
			return;
		}
		res.send({"code":"200","meg":"login success"});
	});
});
//1.5
router.post('/update',(req,res)=>{
	let obj=req.body;
	let a=401;
	for (let key in obj){
		if (!obj[key]){
			res.send({"code":a,"msg":key+" required"});
			return;
		}
		a++;
	}
	pool.query('update xz_user set ? where uid=?',[obj,obj.uid],(err,result)=>{
		if(err) throw err;
		if (result.changedRows===0){
			res.send({"code":"301","msg":"更改失败"});
		}else{
			res.send({"code":"200","msg":"更改成功"});
		}
	})
});
//1.6
router.get('/list',(req,res)=>{
	pool.query('select * from categories',(err,result)=>{
		if(err) throw err;
		res.send(result);
	});
});
//1.3
router.get('/detail',(req,res)=>{
	let b=req.query;
	if (b.uid===''){
		res.send({"code":"301","msg":"failed"});
		return;
	}
	b=parseInt(b.uid);
	pool.query('select * from xz_user where uid=?',[b],(err,result)=>{
		if(err) throw err;
		if (result.length===0){
			res.send({"code":"302","msg":"该用户不存在"});
			return;
		}
		res.send(result);
	});
});
//1.4
router.get('/delete',(req,res)=>{
	let b=req.query;
	if (b.uid===''){
		res.send({"code":"301","msg":"failed"});
		return;
	}
	b=parseInt(b.uid);
	pool.query('delete from xz_user where uid=?',[b],(err,result)=>{
		if(err) throw err;
		if (result.affectedRows===0){
			res.send({"code":"401","msg":"该用户不存在"});
			return;
		}
		res.send({"code":"200","msg":"delete success"});
	});
});
//1.7
router.get('/checkemail',(req,res)=>{
	let b=req.query;
	if (b.email===''){
		res.send({"code":"301","msg":"failed"});
		return;
	}
	pool.query('select * from xz_user where email=?',[b.email],(err,result)=>{
		if(err) throw err;
		if (result.length===0){
			res.send({"code":"200","msg":"该用户不存在"});
			return;
		}
		res.send({"code":"201","msg":"该用户存在"});
	});
});
//1.8
router.get('/checkphone',(req,res)=>{
	let b=req.query;
	if (b.phone===''){
		res.send({"code":"301","msg":"failed"});
		return;
	}
	pool.query('select * from xz_user where phone=?',[b.phone],(err,result)=>{
		if(err) throw err;
		if (result.length===0){
			res.send({"code":"200","msg":"该用户不存在"});
			return;
		}
		res.send({"code":"201","msg":"该用户存在"});
	});
});
//1.9
router.get('/checkuname',(req,res)=>{
	let b=req.query;
	if (b.uname===''){
		res.send({"code":"301","msg":"failed"});
		return;
	}
	pool.query('select * from xz_user where uname=?',[b.uname],(err,result)=>{
		if(err) throw err;
		if (result.length===0){
			res.send({"code":"200","msg":"该用户不存在"});
			return;
		}
		res.send({"code":"201","msg":"该用户存在"});
	});
});
//1.10
router.get('/logout',(req,res)=>{
	res.send({"code":"200","msg":"logout success"});
});
//1.11
router.get('/sessiondata',(req,res)=>{
	let b=req.query;
	pool.query('select * from xz_user where uid=?',[b.uid],(err,result)=>{
		if(err) throw err;
		res.send(result);
	});
});








module.exports=router;