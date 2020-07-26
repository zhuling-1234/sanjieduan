const express=require('express');
const router=express.Router();
const pool=require('../pool.js');


//1.1
router.get('/list',(req,res)=>{
	let obj=req.query;
	if (obj.page==='' || isNaN(obj.page) || obj.page<=1)	obj.page=1;
	if (obj.count==='' || isNaN(obj.count) || obj.count<=1)	obj.count=5;
	let b=parseInt(obj.count);
	let a=parseInt(obj.page);
	a=(a-1)*b;
	pool.query('select * from xz_index_product limit ?,?;',[a,b],(err,result)=>{
		if(err) throw err;
		res.send(result);
	});
});
//1.2
router.get('/detail',(req,res)=>{
	let b=req.query;
	if (b.pid===''){
		res.send({"code":"301","msg":"failed"});
		return;
	}
	b=parseInt(b.pid);
	pool.query('select * from xz_index_product where pid=?',[b],(err,result)=>{
		if(err) throw err;
		if (result.length===0){
			res.send({"code":"302","msg":"该商品不存在"});
			return;
		}
		res.send(result);
	});
});
//1.3
router.get('/delete',(req,res)=>{
	let b=req.query;
	if (b.pid===''){
		res.send({"code":"301","msg":"failed"});
		return;
	}
	b=parseInt(b.pid);
	pool.query('delete from xz_index_product where pid=?',[b],(err,result)=>{
		if(err) throw err;
		if (result.affectedRows===0){
			res.send({"code":"401","msg":"该商品不存在"});
			return;
		}
		res.send({"code":"200","msg":"delete success"});
	});
});
//1.4
router.post('/add',(req,res)=>{
	let b=req.body;
	let a=401;
	for (let key in b){
		if (b[key]===''){
			res.send({"code":a,"msg":key+" required"});
			return;
		}
		a++;
	}
	pool.query('insert into xz_laptop set ?',[b],(err,result)=>{
		if(err) throw err;
		res.send({"code":"200","msg":"add success"});
	});
});









module.exports=router;