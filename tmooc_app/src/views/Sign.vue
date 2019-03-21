<template>
  <div class="container">
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
            <li class="fl"><a href="javascript:;" @click="reg">注册</a></li>
            <li class="fl">|</li>
            <li class="fl"><a href="javascript:void(0);" @click="login">登录</a></li>
          </ul>
          <div v-if="this.global.loginId==1" class="profile_box clearfix">
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
    <!--注册框-->
    <div class="w content_box" ref="content_box">
      <div class="sign_box">
        <ul class="reg_tab clearfix">
          <li class="active">手机注册</li>
        </ul>
        <div class="code"></div>
        <div class="form_areas">
          <div class="d_none active">
            <form method="post" action="/reg" class="form_box">
              <div class="form_area">
                <div class="form_item">
                  <input type="text" name="tel" placeholder="手机号" v-model="phone">
                  <span class="d_none" :class="spanClass1">手机号格式错误</span>
                </div>
              </div>
              <div class="form_area">
                <div class="form_item">
                  <input type="password" name="pwd" placeholder="密码" v-model="pwd">
                  <span class="d_none" :class="spanClass2">包含数字、字母、下划线的6-18位</span>
                </div>
              </div>
              <div class="form_area">
                <div class="form_item">
                  <input type="password" name="pwd" placeholder="确认密码" v-model="rpwd">
                  <span class="d_none" :class="spanClass3">两次密码不一致</span>
                </div>
              </div>     
              <input type="button" value="注册" class="mb20" @click="register">
            </form>
          </div>
        </div>
        <div class="clearfix">
          <div class="chb fl">
            <label for="chb">
              <input type="checkbox" id="chb" checked>
              <span class="clear">我已阅读并同意<a href="javascript:void(0);">《用户注册协议》</a></span>
            </label>
          </div>
          <div class="chb_right">
            已有账号？
            <a href="javascript:void(0);"><i>立即登录</i></a>
          </div>
        </div>
      </div>
    </div> 
     <!--登录框-->
     <div class="login_box" ref="login_box" style="display:none">
      <div class="log" style="margin-top:25px;">
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
    <Footer id="footer"></Footer>
  </div>
</template>
<script>
  import Footer from '@/components/Footer.vue'
  export default {
    components:{Footer},
    data(){
      return{
        spanClass1:"",
        spanClass2:"",
        spanClass3:"",
        phone:"",
        pwd:"",
        rpwd:"",
        class1:"",
        class2:"",
      }
    },
    methods:{
      login(){
        this.$refs.content_box.style.display="none";
        this.$refs.login_box.style.display="block";
      },
      reg(){
        this.$refs.content_box.style.display="block";
        this.$refs.login_box.style.display="none";
      },
      register(){
        this.axios.post("http://localhost:3000/reg",this.qs.stringify({phone:this.phone,pwd:this.pwd,rpwd:this.rpwd})).then(result=>{
          if(!/^1[3-5]\d{9}$/.test(this.phone)){
            this.spanClass1="form_tips";
            return;
          }else{
            this.spanClass1="";
          } 
          if(!/^\w{6,18}$/.test(this.pwd)){
            this.spanClass2="form_tips";
            return;
          }else{
            this.spanClass2="";
          } 
          if(this.pwd!==this.rpwd){
            this.spanClass3="form_tips";
          }else{
            this.spanClass3="";
          }
          //console.log(result)
          if(result.status==200){
            alert("注册成功");
            this.phone="";
            this.pwd="";
            this.rpwd=""
          }
        })
      },
      jump(){
      this.axios.post("http://localhost:3000/login",this.qs.stringify({phone:this.phone,pwd:this.pwd})).then(result=>{
      this.global.setloginId(result.data.code); 
      //console.log(this.global.loginId);
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
        this.$router.push('/')
      }
    })
    },
    quit(){
      var url="http://localhost:3000/logout";
      this.axios.get(url).then(result=>{
        this.global.setloginId(result.data.code); 
        alert("已退出")
      })
    }
    }
  }
</script>
<style scoped>
  .nav_box{
    background: #fff;
    box-shadow: 0 0 20px 10px rgba(221, 221, 221, .5);
  }
  /*中间内容样式*/
  .nav .middle .fl a{
    color:#161616;
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
  .container{
    background: #F6F5FA;
    min-height:958px;
    position: relative;
  }
  .content_box{
    padding:70px 0 30px;
  }
  .sign_box,.wechat_box{
    width:400px;
    height:466px;
    background: #fff;
    margin:0 auto;
    padding:15px 30px 30px 30px;
    border-radius:7px;
    color:#999;
    position: relative;
  }
  .sign_box .reg_tab{
    height:40px;
    border-bottom:1px solid #DDDDDD;
  }
  .sign_box{
    font-size: 14px;
  }
  .sign_box .reg_tab li{
    height:40px;
    line-height: 38px;
    float:left;
    margin-right:40px; 
    cursor: pointer;
  }
  .sign_box .reg_tab .active{
    border-bottom: 2px solid #000;
    color: #282828;
    font-weight: bold;
  }
  .content_box .code{
    width:50px;
    height:50px;
    background: url("../../public/img/sign/img2018040401_ll.png") no-repeat top right;
    position: absolute;
    top:15px;
    right:15px;
    cursor: pointer;
  }
  .form_area .form_item input{
    display: block;
    padding:0 10px;
    height:40px;
    border:1px solid #ccc;
    color:#262e39;
    border-radius: 3px;
    width:100%;
    margin-bottom: 18px;
  }
  .form_box div:first-child>.form_item>input{
    margin-top:36px;
  }
  .form_box input:last-child{
    width:100%;
    height:40px;
    background: #4b95ff;
    border: 1px solid #4b95ff;
    color:#fff;
    cursor: pointer;
    border-radius: 3px;
  }
  .form_box input:last-child:hover{
    background: #2A75FE;
  }
  .form_area{
    position: relative;
  }
  .form_area .form_item .form_tips{
    color:#f44336;
    font-size:14px;
    position: absolute;
    top:-18px;
    right:2px;
    display:block;
  }
  .chb{
    position: relative;
  }
  .chb input[type=checkbox]{
    position: absolute;
    top:0;
    left:0;
    opacity: 0;
    z-index:1;
  }
  .chb span::before{
    display: block;
    content:"";
    border:1px solid #ccc;
    width:14px;
    height:14px;
    background-color: #fff;
    border-radius: 3px;
    margin-right: 7px;
    float:left;
  }
  .chb input[type=checkbox]:checked+span::after{
    display: inline-block;
    content:"\2714";
    position: absolute;
    top:2px;
    left:4px;
    color: #d9534f;
  }
  .chb>input[type=checkbox]+span::after{
    display: inline-block;
    content:"";
    vertical-align: middle;
  }
  .chb,.chb span a,.chb_right,.chb_right a{
    font-size:12px;
  }
  .chb span{
    display: inline-block;
    vertical-align: middle; 
  }
  .chb span a{
    color:#fd573f;
  }
  .chb_right{
    text-align: right;
  }
  .chb_right a{
    color:#4b95ff;
  }
  .content_box .active{
    display: block;
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
  #footer{
    height:240px;
    position: absolute;
    bottom: -11px;
    width: 100%;
    background: #282C30;
  }
</style>