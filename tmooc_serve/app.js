//使用express构建web服务器
const express = require('express');
const pool=require("./pool")
const bodyParser = require('body-parser');
//加载跨域访问模块
const cors=require("cors");
var app = express();
var server = app.listen(3000);
//配置脚手架访问模块
app.use(cors({
  origin:["http://127.0.0.1:8080",
  "http://localhost:8080"],
  credentials:true
}));
//下载express-session 并且配置
const session=require("express-session");
app.use(session({
  secret:"128位随机字符串",
  resave:false,
  saveUninitialized:true,
  cookie:{
    maxAge:1000*60*60*8
  }
}))
//使用body-parser中间件
app.use(bodyParser.urlencoded({extended:false}));
//托管静态资源到public目录下
app.use(express.static('public'))

//功能一：轮播图片
app.get("/img",(req,res)=>{
  var sql="select * from img";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send({code:1,data:result});
  })
})

//功能二：查询首页课程
app.get("/course",(req,res)=>{
  var sql="select * from course";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send({code:1,data:result});
  })
})

//功能三：查询所有免费课并分页显示
app.get("/allFrees",(req,res)=>{
  var pno=req.query.pno;
  var pageSize=req.query.pageSize;
  if(!pno){pno=1}
  if(!pageSize){pageSize=20}
  //创建变量保存执行进度
  var progress=0;
  //创建变量最终发送js对象
  var obj={code:1}
  var sql="select * from frees limit ?,?";
  var offset=(pno-1)*pageSize;
  pageSize=parseInt(pageSize);
  pool.query(sql,[offset,pageSize],(err,result)=>{
    if(err) throw err;
    progress+=50;
    obj.data=result;
    if(progress==100){
      res.send(obj);
    }
  })
  //sql语句总页数
  var sql="select count(id) as f from frees";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    var pnum=Math.ceil(result[0].f/20);
    progress+=50;
    obj.pageCount=pnum;
    if(progress==100){
      res.send(obj);
    }
  })
})

//功能四：查询所有直播课并分页显示
app.get("/allLives",(req,res)=>{
  var pno=req.query.pno;
  var pageSize=req.query.pageSize;
  if(!pno){pno=1}
  if(!pageSize){pageSize=20}
  var progress=0;
  var obj={code:1};
  var sql="select * from lives limit ?,?";
  var offset=(pno-1)*pageSize;
  pool.query(sql,[offset,pageSize],(err,result)=>{
    if(err) throw err;
    progress+=50;
    obj.data=result;
    if(progress==100){
      res.send(obj);
    }
  })
  var sql="select count(id) as l from lives";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    var pnum=Math.ceil(result[0].l/20);
    progress+=50;
    obj.pageCount=pnum;
    if(progress==100){
      res.send(obj);
    }
  })
})

//功能五：查询所有会员课并分页显示
app.get("/allVips",(req,res)=>{
  var pno=req.query.pno;
  var pageSize=req.query.pageSize;
  if(!pno){pno=1}
  if(!pageSize){pageSize=20}
  var progress=0;
  var obj={code:1}
  var sql="select * from vips limit ?,?";
  var offset=(pno-1)*pageSize;
  pageSize=parseInt(pageSize);
  pool.query(sql,[offset,pageSize],(err,result)=>{
    if(err) throw err;
    progress+=50;
    obj.data=result;
    if(progress==100){
      res.send(obj);
    }
  })
  var sql="select count(id) as v from vips";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    var pnum=Math.ceil(result[0].v/20);
    progress+=50;
    obj.pageCount=pnum;
    if(progress==100){
      res.send(obj);
    }
  })
})

//功能六：查询所有培优课并分页显示
app.get("/allYous",(req,res)=>{
  var pno=req.query.pno;
  var pageSize=req.query.pageSize;
  if(!pno){pno=1}
  if(!pageSize){pageSize=20}
  var progress=0;
  var obj={code:1}
  var sql="select * from yous limit ?,?";
  var offset=(pno-1)*pageSize;
  pageSize=parseInt(pageSize);
  pool.query(sql,[offset,pageSize],(err,result)=>{
    if(err) throw err;
    progress+=50;
    obj.data=result;
    if(progress==100){
      res.send(obj);
    }
  })
  var sql="select count(id) as v from yous";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    //console.log(result)
    var pnum=Math.ceil(result[0].v/20);
    progress+=50;
    obj.pageCount=pnum;
    if(progress==100){
      res.send(obj);
    }
  })
})

//功能七：查询教学团队
app.get("/team",(req,res)=>{
  var sql="select * from team";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send({code:1,data:result});
  })
})

//功能八:详情页
app.get("/details",(req,res)=>{
  var id=req.query.id;
  //console.log(id)
  var sql="select * from details where id=?";
  id=parseInt(id);
  pool.query(sql,[id],(err,result)=>{
    if(err) throw err;
    res.send({code:1,data:result});
  })
})

//注册
app.post("/reg",(req,res)=>{
  var phone=req.body.phone;
  var pwd=req.body.pwd;
  var rpwd=req.body.rpwd;
    if(!phone){
      res.send({code:401,msg:'请输入手机号'});
      return;
    }
    if(!pwd){
      res.send({code:402,msg:'请输入密码'});
      return;
    }
    if(pwd!==rpwd){
      res.send({code:403,msg:'两次密码不一致'});
      return;
    }
    var sql="insert into users values(NULL,?,?,?)";
    pool.query(sql,[phone,pwd,rpwd],(err,result)=>{
    if(err) throw err;
    if(result.affectedRows>0){
      res.send({code:200,msg:'注册成功'})
    }
  })
})

//登录
app.post("/login",(req,res)=>{
  var phone=req.body.phone;
  var pwd=req.body.pwd;
  var sql="select * from users where phone=? and pwd= ?";
  pool.query(sql,[phone,pwd],(err,result)=>{
    if(err) throw err;
    if(result.length==0){
      res.send({code:-1,msg:"用户名或密码有误"});
    }else{
      var id=result[0].id;
      req.session.id=id;
      res.send({code:1,msg:"登录成功"})
    }
  })
})

//退出登录
app.get("/logout",(req,res)=>{
  req.session.id=null;
  res.send({code:-1,msg:"已退出"});
})