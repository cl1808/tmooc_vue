<template>
  <div class="details">
    <div class="crumb_box">
      <div class="crumb w1">
        <ul class="clearfix">
          <li class="fl">全部课程</li>
          <li class="fl">
            <img src="img/details/lt.png" alt="">
          </li>
          <li class="fl">{{product.cname}}</li>
          <li class="fl">
            <img src="img/details/lt.png" alt="">
          </li>
          <li class="fl">{{product.title}}</li>
        </ul>
      </div>
    </div>
    <div class="content clearfix w1">
      <div class="pic fl">
        <img :src="product.img" alt="">
      </div>
      <div class="text fl" style="width:532px;">
        <h1>{{product.title}}</h1>
        <p :title="product.subtitle">&nbsp;&nbsp;&nbsp;&nbsp;{{product.subtitle}}</p>
        <ul class="clearfix">
          <li class="fl">报名人数{{product.num}}</li>
          <li class="fl">|</li>
          <li class="fl">课时{{product.hour}}</li>
          <li class="fl">|</li>
          <li class="fl"><img src="img/details/fenxiang.png" alt="">分享</li>
          <li class="fl"><img src="img/details/xin.png" alt="">收藏</li>
        </ul>
        <h2>{{product.price==0?"免费":`￥${product.price.toFixed(2)}`}}</h2>
        <a>{{product.price==0?"立即报名":"立即购买"}}</a>
      </div>
    </div>
    <div class="w1 mt35 list">
      <ul class="clearfix">
        <li class="fl info">课题简介</li>
        <li class="fl">课题大纲</li>
        <li class="fl">留言评论</li>
      </ul>
    </div>
    <div class="bgimg"> 
      <div class="bg w1 clearfix">
        <div class="bgpad fl">
          <img :src="product.subimg" alt="">
        </div>
        <div class="details_right fr">
          <a href="">关注微信</a>
          <img src="img/details/erweima.jpg" alt="">
          <p>扫码了解更多</p>
        </div>
        <div class="details_right2 fr">
          <h2>推荐课程</h2>
          <img :src="product.simg" alt="">
          <div class="text">
            <p>{{product.stitle}}</p>
            <span class="fl free">{{product.price==0?"免费":`￥${(product.price).toFixed(2)}`}}</span>
            <span class="fr">{{product.snum}}</span>
          </div>
        </div>
      </div> 
    </div>
  </div>
</template>
<script>
  export default{
    data(){
      return{
        product:{
          cname:"",
          title:"",
          subtitle:"",
          img:"",
          num:0,
          hour:0,
          price:0,
          subimg:"",
          simg:"",
          stitle:"",
          sprice:"",
          snum:""
        }
      }
    },
    methods:{
      loadDetails(){
        this.axios.get("http://localhost:3000/details",{
          params:{
            id:this.$route.params.id
          } 
        }
        ).then(res=>{
          this.product=res.data.data[0];
          //console.log(res.data.data[0])
        })
      }
    },
    created(){
      this.loadDetails();
    },
    watch:{
    "$route":function(){
      this.loadDetails();
    }
  }
  }
</script>
<style scoped>
  .crumb_box{
    background:#fff;
  }
  .crumb_box .crumb{
    line-height:70px;
  }
  .crumb_box .crumb ul li{
    font-size:14px;
    color:#666;
  }
  .crumb_box .crumb img{
    width:12px;
    height:13px;
    margin-left:6px;
    position:relative;
    top:2px;
  }
  .content .pic{
    width:640px;
    height:360px;
    overflow: hidden;
  }
  .content .text{
    margin-left:28px;
    position:relative;
    height:360px;
  }
  .content .text h1{
    font-size:24px;
    color:#000;
    font-weight:normal;
    margin-bottom:15px;
  }
  .content .text p{
    font-size:14px;
    color:#666;
    margin-bottom:37px;
    line-height:1.8;
  }
  .content .text ul li:not(:last-child){
    margin-right:34px;
  }
  .content .text ul li{
    font-size:16px;
    color:#666;
  }
  .content .text  li img{
    width:12px;
    height:12px;
    margin-right:5px;
  }
  .content .text h2{
    font-size:28px;
    color:#fd573f;
    margin-top:28px;
    font-weight: normal;
  }
  .content .text a{
    display:block;
    width:148px;
    height:48px;
    background:#fd573f;
    border:1px solid #fd573f;
    border-radius:4px;
    text-align:center;
    line-height:48px;
    color:#fff;
    font-size:18px;
    position:absolute;
    bottom:0;
  }
  .list ul li{
    margin-right:42px;
    font-size:16px;
    width:110px;
    text-align:center;
    padding-bottom:15px;
    border-bottom:3px solid transparent;
    cursor:pointer;
  }
  .list ul li.info{
    border-bottom-color:#4f8dfe;
    color:#4f8dfe;
  }
  .bgimg{
    background:#f5f6fa;
    padding:30px 0 30px 0;
  }
  .bg .bgpad{
    width:882px;
    border-radius:4px;
    padding:30px 20px;
    background:#fff;
  }
  .bg .bgpad img{
    max-width:100%;
  }
  .details_right,.details_right2{
    width:298px;
    background: #fff;
    padding:30px 53px;
    margin-bottom:20px;
    text-align: center;
  }
  .details_right>a{
    display: block;
    padding:8px 50px;
    background: #4B95FF;
    border-radius: 20px;
    color:#fff;
    font-size:18px;
    margin-bottom:30px;
  }
  .details_right>img{
    width:180px;
    height:180px;
  }
  .details_right>p{
    color:#000;
    font-size:14px;
    margin-top:10px;
  } 
  .details_right2{
    width:298px;
    background: #fff;
    padding:20px;
    text-align: center;
  }
  .details_right2 h2{
    color: #000;
    padding-bottom: 20px;
    border-bottom: 1px solid #ddd;
    margin-bottom: 20px;
    text-align:left;
    font-size:16px;
    font-weight:normal;
  }
  .details_right2 img{
    width:100%;
    height:100%;
  }
  .details_right2 .text{
    padding:20px 0;
  }
  .details_right2 .text p{
    font-size:14px;
    text-align:left;
    margin-bottom:5px;
  }
  .details_right2 .text .free{
    color:#4f8dfe;
  }
</style>