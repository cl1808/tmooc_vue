<template>
  <footer>
    <div class="footer_box w">
       <div class="content w1 clearfix">
         <div class="fl mb40 clearfix">
           <ul class="clearfix">
             <li class="fl"><a href="javascript:void(0);">关于我们</a></li>
             <li class="fl">|</li>
             <li class="fl"><a href="javascript:void(0);">招聘信息</a></li>
             <li class="fl">|</li>
             <li class="fl"><a href="javascript:void(0);">联系我们</a></li>
             <li class="fl">|</li>
             <li class="fl"><a href="javascript:void(0);">商务合作</a></li>
             <li class="fl">|</li>
             <li class="fl"><a href="javascript:void(0);">VIP服务</a></li>
           </ul>
           <p class="fl mt4">Copyright © 北京达内金桥科技有限公司版权所有 京ICP备12003709号-3</p>
         </div>
         <div class="fr clearfix">
           <div class="fl pt70">
             <p class="align mr21">达内精品在线WWW.TMOOC.CN 专注于IT职业技能培训</p>
             <p class="align mr21 mt8">涵盖20余门课程体系，致力于打造权威的IT职业教育学习平台</p>
           </div>
            <div class="fr pt50">
              <img src="img/footer/erweima.jpg" alt=""/>
            </div>
         </div>
         <div class="line"></div>
       </div>
    </div>
  </footer>
</template>
<script>
  export default{

  }
</script>
<style scoped>
  .footer_box{
    height:197px;
    background: #282c30;
  }
  .footer_box .content ul li{
    padding-top: 66px;
    padding-right: 28px;
    margin-bottom: 8px;
  }
  .footer_box .content ul li,a{
    color:#999;
    font-size: 14px;
  }
  .footer_box .content ul a:hover{
    color:#fff;
  }
  .footer_box .content p{
    color:#666;
    font-size: 12px;
  }
  .fr div img{
    width:75px;
    height:75px;
  }
  .footer_box .content .line{
    border-top:1px solid #3D3E3F;
    clear: both;
  }
</style>