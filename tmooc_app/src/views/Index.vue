<template>
  <div id="index">
   <header>
      <!-- 顶部导航栏-->
      <div class="nav_box w">
        <div class="nav w1 clearfix">
          <div class="logo fl">
            <a href="javascript:;">
              <img src="img/header/tmooc-logo.png" alt=""/>
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
            <div :class="class4" v-if="this.global.loginId==1"  class="profile_box clearfix">
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
              <img src="img/header/fangdajing.png" alt=""/>
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
    <div class="container1">
      <!-- 轮播-->
      <div class="banner_box w1 clearfix">
        <!-- 左边侧边栏-->
        <div class="l_slide fl">
          <ul>
            <li class="clearfix">
              <a href="javascript:void(0);">前端/后端开发</a>
              <img src="img/index/right.png" alt=""/>
              <div class="item">
                <div class="clearfix opt">
                  <div class="fl">前端开发</div>
                  <p class="course">Web前端</p>
                </div>
                <div class="line1"></div>
                <div class="clearfix opt">
                  <div class="fl">后端开发</div>
                  <p class="fl course">C#/.Net</p>
                  <p class="fl course">C/C++</p>
                  <p class="fl course">Java</p>
                  <p class="fl course">PHP</p>
                  <p class="fl course">Python</p>
                </div>
                <div class="line2"></div>
                <div class="clearfix">
                  <div class="fl pic clearfix">
                    <img src="img/index/E40E6AF3C0CA44309FB4C1CDF09C4590.png" alt=""/>
                    <h3 class="fl">java五天快速入门攻略（限时免费）</h3>
                    <p>【不要159！点击课程简介扫码免...</p>
                  </div>
                  <div class="fl pic clearfix">
                    <img src="img/index/58CB793D675F4C35B4DC1252873F693B.png" alt=""/>
                    <h3 class="fl">JAVA入门之面向对象</h3>
                    <p>面向对象</p>
                  </div>
                </div>
              </div>
            </li>
            <li class="clearfix">
              <a href="javascript:void(0);">大数据/云计算</a>
              <img src="img/index/right.png" alt=""/>
              <div class="item">
                <div class="clearfix opt">
                  <div class="fl">大数据</div>
                  <p class="course">大数据</p>
                </div>
                <div class="line1"></div>
                <div class="clearfix opt">
                  <div class="fl">云计算</div>
                  <p class="course">linux云计算</p>
                </div>
                <div class="line2"></div>
                <div class="clearfix">
                  <div class="fl pic clearfix">
                    <img src="img/index/010AB1B28060446D8103BE4B5EBEEAFA.png" alt=""/>
                    <h3 class="fl">Linux云计算之Shell脚本编程</h3>
                    <p>Linux云计算之Shell脚本编程</p>
                  </div>
                  <div class="fl pic clearfix">
                    <img src="img/index/AA06FD15E6AB46BCB9348CCF301907B6.jpg" alt=""/>
                    <h3 class="fl">HADOOP</h3>
                    <p>HADOOP</p>
                  </div>
                </div>
              </div>
            </li>
            <li class="clearfix">
              <a href="javascript:void(0);">移动开发/游戏</a>
              <img src="img/index/right.png" alt=""/>
              <div class="item">
                <div class="clearfix opt">
                  <div class="fl">移动开发</div>
                  <p>
                    <span>Android</span>
                    <span>iOS</span>
                  </p>
                </div>
                <div class="line1"></div>
                <div class="clearfix opt">
                  <div class="fl">游戏</div>
                  <p class="course">Unity3D</p>
                </div>
                <div class="line2"></div>
                <div class="clearfix">
                  <div class="fl pic clearfix">
                    <img src="img/index/486CFA775C7244D49E6E0D550C31A6E8.png" alt=""/>
                    <h3 class="fl">Unity3D入门之脚本开发</h3>
                    <p>Unity3D入门之脚本开发</p>
                  </div>
                  <div class="fl pic clearfix">
                    <img src="img/index/69980B7CC2634E61870DFE605C3A6C85.png" alt=""/>
                    <h3 class="fl">Android之网络通信</h3>
                    <p>Android之网络通信</p>
                  </div>
                </div>
              </div>
            </li>
            <li class="clearfix">
              <a href="javascript:void(0);">物联网/测试</a>
              <img src="img/index/right.png" alt=""/>
              <div class="item">
                <div class="clearfix opt">
                  <div class="fl">物联网</div>
                  <p class="course">嵌入式</p>
                </div>
                <div class="line1"></div>
                <div class="clearfix opt">
                  <div class="fl">测试</div>
                  <p class="course">软件测试</p>
                </div>
                <div class="line2"></div>
                <div class="clearfix">
                  <div class="fl pic clearfix">
                    <img src="img/index/AF73F4970A64405295A768B17AE58F04.png" alt=""/>
                    <h3 class="fl">嵌入式之开发实战</h3>
                    <p>开发实战</p>
                  </div>
                  <div class="fl pic clearfix">
                    <img src="img/index/EE0DE5C881684542B3D0875CF97CAA5D.png" alt=""/>
                    <h3 class="fl">设计测试用例的方法</h3>
                    <p>设计测试用例的方法</p>
                  </div>
                </div>
              </div>
            </li>
            <li class="clearfix">
              <a href="javascript:void(0);">营销/产品/运营</a>
              <img src="img/index/right.png" alt=""/>
              <div class="item">
                <div class="clearfix opt">
                  <div class="fl">营销</div>
                  <p class="course">网络营销</p>
                </div>
                <div class="line1"></div>
                <div class="clearfix opt">
                  <div class="fl">产品</div>
                  <p class="course">产品经理</p>
                </div>
                <div class="line1"></div>
                <div class="clearfix opt">
                  <div class="fl">运营</div>
                  <p class="course">高级电商</p>
                </div>
                <div class="line3"></div>
                <div class="clearfix">
                  <div class="fl pic clearfix">
                    <img src="img/index/37FACE09F5404EDA95E9D0F4D76668D0.png" alt=""/>
                    <h3 class="fl">一周上手小程序</h3>
                    <p>本系列课程抓住了小程序开发的要...</p>
                  </div>
                  <div class="fl pic clearfix">
                    <img src="img/index/CC18466FADF74D3A87FDA5A17AAF4D83.png" alt=""/>
                    <h3 class="fl">SEM搜索引擎营销</h3>
                    <p>SEM搜索引擎营销</p>
                  </div>
                </div>
              </div>
            </li>
            <li class="clearfix">
              <a href="javascript:void(0);">数字艺术</a>
              <img src="img/index/right.png" alt=""/>
              <div class="item">
                <div class="clearfix opt">
                  <div class="fl">数字艺术</div>
                  <p>
                    <span>UED设计</span>
                    <span>UID设计</span>
                  </p>
                </div>
                <div class="line4"></div>
                <div class="clearfix">
                  <div class="fl pic clearfix">
                    <img src="img/index/A39738762E2741B2892D358B5C6500C1.jpg" alt=""/>
                    <h3 class="fl">达内在线商业插画培优课-1810期</h3>
                    <p>208课时的核心技能特训,专为UI...</p>
                  </div>
                  <div class="fl pic clearfix">
                    <img src="img/index/EB5C62329A164590BF33AEDF6C36F379.png" alt=""/>
                    <h3 class="fl">前端交互设计(UI Design)</h3>
                    <p>前端交互设计(UI Design)</p>
                  </div>
                </div>
              </div>
            </li>
            <li class="clearfix">
              <a href="javascript:void(0);">其他职业课程</a>
              <img src="img/index/right.png" alt=""/>
              <div class="item">
                <div class="clearfix opt">
                  <div class="fl">其他职业课程</div>
                  <p>
                    <span>网络运维</span>
                    <span>ACC</span>
                    <span>就业指导</span>
                  </p>
                </div>
                <div class="line4"></div>
                <div class="clearfix">
                  <div class="fl pic clearfix">
                    <img src="img/index/960064710D2E43FFB4ED18FB70ED5802.png" alt=""/>
                    <h3 class="fl">ACC之新秀会计</h3>
                    <p>新秀会计</p>
                  </div>
                  <div class="fl pic clearfix">
                    <img src="img/index/72EE6850E7D042198D4DC1FDD9F9A60C.png" alt=""/>
                    <h3 class="fl">就业辅导之精准简历制作</h3>
                    <p>就业辅导之精准简历制作</p>
                  </div>
                </div>
              </div>
            </li>
          </ul>
        </div>
        <!--中间轮播图-->
        <div class="img fr" id="slider">
          <img v-for="(item,i) of list" :src="item.iname" v-show="i==num" alt=""/>
        </div>
        <!-- 轮播图下广告-->
        <ul class="list fl clearfix">
          <li class="clearfix fl">
            <img src="img/index/E96B1941956543B7B3D86FE98F77EA2F.png" alt="" class="fl"/>
            <h3 class="fl">加入会员</h3>
            <p class="fl">尊享超值会员权益</p>
          </li>
          <li class="clearfix fl">
            <img src="img/index/3432BC7ACD854AEE9744FA2A0E6BE940.png" alt="" class="fl"/>
            <h3 class="fl">手机绑定</h3>
            <p class="fl">获得资料下载权限</p>
          </li>
          <li class="clearfix fl">
            <img src="img/index/3AE7ED861379427BAC9E3ED1204E35ED.png" alt="" class="fl"/>
            <h3 class="fl">表单报名</h3>
            <p class="fl">获赠平安就业险</p>
          </li>
          <li class="clearfix fl">
            <img src="img/index/2E9FE243D74D43FFBF025E2F417C3E2F.png" alt="" class="fl"/>
            <h3 class="fl">帮助页面</h3>
            <p class="fl">带你玩转TMOOC</p>
          </li>
        </ul>
      </div>
    </div>
    <div class="lesson w">
      <!-- 直播课-->
      <div class="liveLesson w1">
        <div class="list mb10">
          <img src="img/index/live-lesson.png" alt=""/>
          <span>直播课</span>
          <router-link to="/Home/Live">查看更多>></router-link>
        </div>
        <ul class="clearfix mb20">
          <li class="img-list live" v-for="course of courses.slice(0,5)">
            <div>
              <router-link :to="`/Home/Details/${course.href.split('=')[1]}`"> 
                <img :src="course.img" alt=""/>
              </router-link>
              <i class="icon"></i>
            </div>
            <div class="bac-fff">
              <p>{{course.title}}</p>
              <div class="clearfix">
                <span class="fl free">{{course.price==0?"免费":`￥${(course.price).toFixed(2)}`}}</span>
                <span class="fr">{{course.pnum}}</span>
              </div>
            </div>
          </li>
        </ul>
      </div>
      <!-- 会员课-->
      <div class="liveLesson w1">
        <div class="list mb10">
          <img src="img/index/huiyuan.png" alt=""/>
          <span>会员课</span>
          <router-link to="/Home/Vip">查看更多>></router-link>
        </div>
        <ul class="clearfix mb20">
          <li class="img-list vip" v-for="course of courses.slice(5,10)">
            <div>
              <router-link :to="`/Home/Details/${course.href.split('=')[1]}`">
                <img :src="course.img" alt=""/>
              </router-link>
              <i class="icon"></i>
            </div>
            <div class="bac-fff">
              <p>{{course.title}}</p>
              <div class="clearfix">
                <span class="fl price">{{course.price==0?"免费":`￥${(course.price).toFixed(2)+"(会员免费)"}`}}</span>
                <span class="fr">{{course.pnum}}</span>
              </div>
            </div>
          </li>
        </ul>
      </div>
      <!-- 免费课-->
      <div class="liveLesson w1">
        <div class="list mb10">
          <img src="img/index/Free-Tag.png" alt=""/>
          <span>免费课</span>
          <router-link to="/Home/Free">查看更多>></router-link>
        </div>
        <ul class="clearfix mb20">
          <li class="img-list free" v-for="course of courses.slice(10,15)">
            <div>
              <router-link :to="`/Home/Details/${course.href.split('=')[1]}`">
                <img :src="course.img" alt=""/>
              </router-link>
              <i class="icon"></i>
            </div>
            <div class="bac-fff">
              <p>{{course.title}}</p>
              <div class="clearfix">
                <span class="fl free">{{course.price==0?"免费":`￥${(course.price).toFixed(2)+"(会员免费)"}`}}</span>
                <span class="fr">{{course.pnum}}</span>
              </div>
            </div>
          </li>
        </ul>
      </div>
      <!-- 培优课-->
      <div class="liveLesson w1">
        <div class="list mb10">
          <img src="img/index/vip2.png" alt=""/>
          <span>培优课</span>
          <router-link to="/Home/You">查看更多>></router-link>
        </div> 
        <ul class="clearfix mb20">
          <li class="img-list" v-for="(course,i) of courses.slice(15)" :key="i">
            <div>
              <router-link :to="`/Home/Details/${course.href.split('=')[1]}`">
                <img :src="course.img" alt=""/>
              </router-link>
            </div>
            <div class="bac-fff">
              <p>{{course.title}}</p>
              <div class="clearfix">
                <span class="fl price">{{course.price==0?"免费":`￥${(course.price).toFixed(2)}`}}</span>
                <span class="fr">{{course.pnum}}</span>
              </div>
            </div>
          </li>
        </ul>
        <!-- 就业课程图片-->
        <div class="mt40">
          <img src="img/index/0FEB40D436DE46FABB6F895795FC6CB3.png" alt=""/>
        </div>
        <!-- 我们的优势-->
        <div class="list">
          <img src="img/index/zan.png" alt=""/>
          <span class="mt4">我们的优势</span>
        </div>
        <div class="our mt15">
          <ul class="clearfix mb20">
            <li class="our_box clearfix fl">
              <div class="course fl">
                <span>课程体系</span>
                <ul class="mt19">
                  <li>与国际厂商共同打造IT精品课程</li>
                  <li class="mt4">22大课程体系紧跟企业需求</li>
                </ul>
              </div>
              <div class="circle fr">
                <img src="img/index/img_index_lty01.png" alt=""/>
              </div>
            </li>
            <li class="our_box clearfix fl">
              <div class="course fl">
                <span>师资力量</span>
                <ul class="mt19">
                  <li>总监级别名师汇聚</li>
                  <li class="mt4">实战经验倾囊相授</li>
                </ul>
              </div>
              <div class="circle fr">
                <img src="img/index/img_index_lty02.png" alt=""/>
              </div>
            </li>
            <li class="our_box clearfix fl">
              <div class="course fl">
                <span>教学模式</span>
                <ul class="mt19">
                  <li>特色教育教学模式</li>
                  <li class="mt4">实现高效优质学习</li>
                </ul>
              </div>
              <div class="circle fr">
                <img src="img/index/img_index_lty03.png" alt=""/>
              </div>
            </li>
          </ul>
          <ul class="clearfix">
            <li class="our_box clearfix fl">
              <div class="course fl">
                <span>校友会</span>
                <ul class="mt19">
                  <li>50万达内校友交流学习平台</li>
                  <li class="mt4">万千就业榜样带你成长起飞</li>
                </ul>
              </div>
              <div class="circle fr">
                <img src="img/index/img_index_lty04.png" alt=""/>
              </div>
            </li>
            <li class="our_box clearfix fl">
              <div class="course fl">
                <span>集团背景</span>
                <ul class="mt19">
                  <li>依托达内集团16年强大的教育背景</li>
                  <li class="mt4">深厚的教学资源积累及经验总结</li>
                </ul>
              </div>
              <div class="circle fr">
                <img src="img/index/img_index_lty05.png" alt=""/>
              </div>
            </li>
            <li class="our_box clearfix fl">
              <div class="fl ml10 mr40">
                <img src="img/index/book.png" alt="" class="book"/>
                <h3>147</h3>
                <p>个课程</p>
              </div>
              <div class="fl mr40">
                <img src="img/index/jiang.png" alt="" class="book"/>
                <h3>91</h3>
                <p>位讲师</p>
              </div>
              <div class="fl ml10">
                <img src="img/index/tel.png" alt="" class="book"/>
                <h3>794,865</h3>
                <p>个用户数量</p>
              </div>
            </li>
          </ul>
        </div>
      </div>
      <!-- 最下面图片-->
      <div class="last_pic">
        <img src="img/index/wave-lty.png" alt=""/>
      </div>
    </div>
  </div>
</template>
<script>
  export default {
    data(){ 
      return{
        num:0,
        list:[],
        courses:[],
        phone:"",
        pwd:"",
        rpwd:"",
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
      getImg(){
        this.axios.get(
          "http://localhost:3000/img"
        ).then(res=>{
          this.list=res.data.data;
        })
      },
      autoplay(){
        this.num++;
        if(this.num==this.list.length){
          this.num=0;
        }
      }, 
      play(){
        setInterval(this.autoplay,3000);
      },
      getCourses(){
        this.axios.get(
          "http://localhost:3000/course"
        ).then(res=>{
          this.courses=res.data.data;
          //console.log(this.courses);
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
          this.$refs.login.style.display="none";
        }
      })
    },
    quit(){
      var url="http://localhost:3000/logout";
      this.axios.get(url).then(result=>{
        alert("已退出")
        this.class4="d_none"
        this.global.setloginId(result.data.code); 
      })
    }
    },
    created() {
      this.getImg();
      this.play();
      this.getCourses();
    },
  }
</script>
<style scoped>
/*导航条样式*/
  .nav_box{
    background:#4F8DFE;
    box-shadow: 0 0 20px 10px rgba(79, 141, 254, .2);
  }
  /*中间内容样式*/
  .nav .middle .fl a{
    color:#fff;
  }
  .nav .middle .fl a:hover{
    color:#161616;
  }
  .nav .middle .fl:first-child a{
    color:#000;
  }
  .search .s_area{
    background: #fff;
  }
  .search .s_area input{
    background: #fff;
    color: #4F8DFE;
  }
  .fl div input::-webkit-input-placeholder{
    color:#4F8DFE;
  }
  .fl div input:-moz-placeholder {
    color:#4F8DFE;
  }
  .fl div input:-ms-input-placeholder{
    color:#4F8DFE;
  }
  .search .s_icon{
    background: #fff;
  }
  /*login样式*/
  .ul_reg li.fl,li.fl>a{
    color:#fff;
    font-size:14px;
  }
  .ul_reg li{
    margin-top: 25px;
    padding-left: 13px;
  }
  .container1{
    height: 470px;
    padding-top: 30px;
  }
  /* 头部样式结束*/
  /*轮播样式*/
  .banner_box{
    height:440px;
    background-color: #fff;
    border-radius:8px;
    overflow: hidden;
    box-shadow:0 0 24px 0 #ccc;
  }
  .banner_box .img{
    position:relative;
    width:975px;
    height: 334px;
  }
  .banner_box .img>img{
    position: absolute;
    top:0;
    left: 0;
  }
  .banner_box .l_slide{
    width:225px;
    background-color: #292D32;
  }
  .banner_box .l_slide li{
    height:63px;
    padding:10px 30px;
    cursor: pointer;
  }
  .banner_box .l_slide li:hover .item{
    display: block;
  }
  .banner_box .l_slide li:hover{
    background: #fff;
  }
  .banner_box .l_slide li:hover a{
    color:#292D32;
  }
  .banner_box .l_slide li:not(:last-child){
    border-bottom: 1px solid #1c252d;
  }
  .banner_box .l_slide li a{
    display:inline-block;
    padding-top: 12px;
    font-size: 14px;
    color:#999;
    text-align:right;
  }
  .banner_box .l_slide li img{
    width:12px;
    height: 12px;
    float: right;
    margin-top: 14px;
  }
  .banner_box .l_slide ul{
    position: relative;
  }
  .banner_box .l_slide .item{
    width:830px;
    height:440px;
    background: #fff;
    z-index: 5;
    position: absolute;
    left: 225px;
    top:0;
    cursor: default;
    display:none;
  }
  .banner_box .l_slide .item .opt div{
    width:108px;
    background: #eee;
    color: #000;
    border-radius: 14px;
    font-size: 14px;
    text-align: center;
    margin:0 20px;
    padding-top: 5px;
    padding-bottom: 5px;
    cursor: pointer;
  }
  .banner_box .l_slide .item .opt p{
    margin-top: 35px;
    font-size: 14px;
    line-height: 28px;
    color: #999;
    cursor: pointer;
  }
  .banner_box .l_slide .item .opt p span{
    padding-right: 25px;
  }
  .banner_box .l_slide .item .opt span:hover{
    color:#4F8DFE;
  }
  .banner_box .l_slide .item .opt .course:hover{
    color:#4F8DFE;
  }
  .banner_box .l_slide .item div:nth-child(3) p{
    margin-top: 0;
    margin-right:30px;
  }
  .banner_box .l_slide .item .line1{
    border-bottom: 1px solid #EAE9E9;
    margin: 30px 20px;
    width:790px;
  }
  .banner_box .l_slide .item .line2{
    border-bottom: 7px solid #F6F6F8;
    width:100%;
    margin-top:127px;
  }
  .banner_box .l_slide .item .line3{
    border-bottom: 7px solid #F6F6F8;
    width:100%;
    margin-top:40px;
  }
  .banner_box .l_slide .item .line4{
    border-bottom: 7px solid #F6F6F8;
    width:100%;
    margin-top:218px;
  }
  .banner_box .l_slide .item .pic img{
    width: 120px;
    height: 68px;
    float: left;
    border-radius: 8px;
    margin: 40px 22px 0 27px;
  }
  .banner_box .l_slide .item .pic h3{
    width:225px;
    padding-top: 45px;
    margin-right: 20px;
    font-size: 14px;
  }
  .banner_box .l_slide .item .pic p{
    font-size: 14px;
    color:#999;
  }
  .banner_box .l_slide .item .pic img,p,h3{
    cursor: pointer;
  }
  .banner_box .list li{
    width:200px;
    height:73px;
    border-radius: 8px;
    text-align: center;
    margin-left: 35px;
    margin-top:13px;
    padding-left: 20px;
    padding-top: 18px;
  }
  .banner_box .list li img{
    margin-right: 10px;
  }
  .banner_box .list li h3{
    font-size: 14px;
    color: #333;
    font-weight: 400;
  }
  .banner_box .list li p{
    color: #888;
    font-size: 12px;
  }
  .banner_box .list li:hover{
    background: #F6F6F9;
  }
  /*直播课*/
  .lesson{
    background: #F6F5FA;
  }
  .liveLesson .list{
    position: relative;
  }
  .liveLesson .list img{
    width:27px;
    height: 27px;
    margin-top: 20px;
    margin-right: 10px;
  }
  .liveLesson .list span{
    font-size: 20px;
    color:#333;
    display: inline-block;
    position: absolute;
    top:20px;
  }
  .liveLesson .list a{
    position: absolute;
    right:0;
    top:23px;
    color: #999;
    font-size: 14px;
  }
  .liveLesson .list a:hover{
    color:#4F8DFE;
  }
  /*我们的优势*/
  .our .our_box{
    width:388px;
    height: 152px;
    background: #fff;
    border-radius: 5px;
    margin: 0 9px;
    padding:26px 40px;
  }
  .our .our_box:first-child{
    margin-left: 0;
  }
  .our .our_box:last-child{
    margin-right: 0;
  }
  .our .our_box .course span{
    background: #f6f6f9;
    border-radius: 5px;
    color:#000;
    padding:5px 10px;
  }
  .our .our_box .course ul li::before{
    content:"";
    display:inline-block;
    width:3px;
    height:3px;
    background:#888;
    border-radius: 50%;
    vertical-align: middle;
    margin-right: 5px;
  }
  .our .our_box .course ul li{
    font-size: 12px;
    color:#888;
  }
  .our .circle{
    width:90px;
    height:90px;
    background-color: #f6f6f9;
    border-radius: 50%;
    margin-top: 5px;
    text-align: center;
  }
  .our .circle>img{
    position: relative;
    top:24px;
  }
  .our .our_box .book{
    width:35px;
    height:35px;
  }
  .our .our_box h3{
    font-size: 26px;
    font-weight: 400;
  }
  .our .our_box p{
    font-size: 14px;
    color:#888;
  }
  .last_pic{
    margin-top:22px;
    margin-bottom: -25px;
  }
  .last_pic img{
    width:100%;
  }
  .profile_box .profile{
    position:relative;
  }
  .profile_box .profile img{
    width:35px;
    height:35px;
    border:2px solid #fff;
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
</style>