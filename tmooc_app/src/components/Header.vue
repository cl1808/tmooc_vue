<template>
  <header id="header">
    <!-- 顶部导航栏-->
    <div class="nav_box w">
      <div class="nav w1 clearfix">
        <div class="logo fl">
          <a href="javascript:void(0);">
            <img src="img/header/tmooc-logo2.png" alt=""/>
          </a>
        </div>
        <ul class="middle clearfix fl">
          <li class="fl"><router-link to="/">首页</router-link></li>
          <li class="fl"><router-link to="/Home/Free">免费课</router-link></li>
          <li class="fl"><router-link to="/Home/Live">直播课</router-link></li>
          <li class="fl"><router-link to="/Home/Vip">会员课</router-link></li>
          <li class="fl"><router-link to="/Home/You">培优课</router-link></li>
          <li class="fl"><router-link to="/Home/VipClass">线上班(VIP)</router-link></li>
          <li class="fl"><router-link to="/Home/Class">线下班</router-link></li>
          <li class="fl"><router-link to="/Home/Activity">最新活动</router-link></li>
        </ul>
        <div class="fr">
          <ul v-if="this.global.loginId!==1" class="ul_reg clearfix">
            <li class="fl"><router-link to="/Sign">注册</router-link></li>
            <li class="fl">|</li>
            <li class="fl"><a href="javascript:void(0);" @click="login">登录</a></li>
          </ul>
          <div :class="class4" v-if="this.global.loginId==1" class="profile_box clearfix">
            <div class="profile fr">
              <img src="img/index/user-head.jpg" alt="">
              <ul class="info">
                <li>{{this.global.uname}}</li>
                <li>我的TTS</li>
                <li>我的云笔记</li>
                <li @click="quit">退出</li>
              </ul>
            </div>
          </div>
        </div>
        <div class="fr search">
          <div class="s_area">
            <input type="text" placeholder="您想学的课程"/>
          </div>
          <div class="s_icon">
            <img src="img/header/fdj.png" alt=""/>
          </div>
        </div>
      </div>
    </div>
    <!--登录框-->
    <div style="display:none" ref="login"> 
      <div class="log1"></div>
      <div class="login_box">
        <div class="log">
          <p class="close" @click="close">×</p>
          <div class="tit">登录</div>
          <form action="">
            <input type="text" name="username" v-model="phone" placeholder="手机号"/>
            <span class="d_none" :class="class1">手机号格式错误</span>
            <input type="password" name="pwd" v-model="pwd" placeholder="密码"/>
            <span class="d_none" :class="class2">包含数字、字母、下划线的6-18位</span>
            <input type="button" class="btn" value="登录" @click="jump">
          </form>
          <div class="register clearfix">
            <div class="fr">
              <a href="javascript:void(0);">忘记密码</a>
              <span>|</span>
              <a href="javascript:void(0);">注册</a>
            </div>
          </div>
          <div class="other">
            <p>第三方账号登录</p>
            <div class="w-btns clearfix">
              <div class="w-btn fl"></div>
              <a href="javascript:void(0);" class="wx fl"></a>
              <div class="w-btn fl"></div>
            </div>
          </div>
        </div>
      </div> 
    </div>
  </header>
</template>
<script>
export default {
  data(){ 
    return{
      phone:"",
      pwd:"",
      rpwd:"",
      class3:"",
      class1:"",
      class2:"",
      class4:""
    }
  },
  methods:{
    login(){
      this.$refs.login.style.display="block";      
    },
    close(){
      this.$refs.login.style.display="none";
    },
    jump(){
      this.axios.post("http://localhost:3000/login",this.qs.stringify({phone:this.phone,pwd:this.pwd})).then(result=>{
      this.global.setloginId(result.data.code); 
      this.global.setuname(this.phone);
      if(!/^1[3-5]\d{9}$/.test(this.phone)){
        this.class1="test1";
        return;
      }else{
        this.class1="";
      } 
      if(!/^\w{6,18}$/.test(this.pwd)){
        this.class2="test2";
        return;
      }else{
        this.class2="";
      } 
      if(result.data.code==-1){
        alert("用户名或密码有误！");
        this.phone="";
        this.pwd="";
      }else{
        alert("登录成功");
        this.phone="";
        this.pwd="";
        this.class4="d_block"
        this.$refs.login.style.display="none";
      }
    })
    },
    quit(){
      var url="http://localhost:3000/logout";
      this.axios.get(url).then(result=>{
        //console.log(result)
        alert("已退出")
        this.class4="d_none"
        this.global.setloginId(result.data.code); 
      })
    }
  }
}
</script>
<style scoped>
  #header .nav_box{
    background: #fff;
    box-shadow: 0 0 20px 10px rgba(221, 221, 221, .5);
  }
  /*中间内容样式*/
  .nav .middle .fl a{
    color:#161616;
  }
  .nav_box .nav .middle .fl a:hover{
    color:#4F8DFE;
  } 
  .search .s_area{
    background: #4F8DFE;
  }
  .search .s_area input{
    background: #4F8DFE;
    color: #CADCFE;
  }
  .fr div input::-webkit-input-placeholder{
    color:#CADCFE;
  }
  .fr div input:-moz-placeholder {
    color:#CADCFE;
  }
  .fr div input:-ms-input-placeholder{
    color:#CADCFE;
  }
  .search .s_icon{
    background: #4F8DFE;
  }
  /*login样式*/
  .ul_reg a{
    color:#161616;
    font-size: 14px;
  }
  .ul_reg li{
    margin-top: 25px;
    padding-left: 13px;
  }
   .profile_box .profile{
    position:relative;
  }
  .profile_box .profile img{
    width:35px;
    height:35px;
    border:2px solid #4f8dfe;
    border-radius:50%;
    margin-left:20px;
    margin-top:17px;
    cursor:pointer;
  }
  .info{
    width:150px;
    height:0px;
    background:#fff;
    position:absolute;
    top:70px;
    left:-65px;
    z-index:100;
    overflow:hidden;
    transition:0.2s linear all;
  }
  .info li{
    cursor:pointer;
    padding:12px;
    color:#1a1a1a;
    font-size:14px;
    text-align:center;
  }
  .info li:not(:first-child):hover{
    color:#fff;
    background:#4f8dfe;
  }
  .info li:first-child{
    color:#4f8dfe;
    padding-top:22px;
    border-bottom:1px solid #ddd;
  }
  .profile_box .profile:hover .info{
    height:183px;
  }
  .color4f{
    color:#4f8dfe;
  }
</style>