<template>
   <div id="live" class="lesson w">
    <div class="lesson_img w">
      <div></div>
    </div>
    <div class="liveLesson w1">
      <ul class="clearfix">
        <li class="img-list free" v-for="item of list">
          <div>
            <router-link :to="`/Home/Details/${item.href.split('=')[1]}`">
              <img :src="item.img" alt=""/>
            </router-link>
            <i class="icon"></i>
          </div>
          <div class="bac-fff">
            <p>{{item.title}}</p>
            <div class="clearfix">
              <span class="fl free">{{item.price==0?"免费":item.price}}</span>
              <span class="fr">{{item.pnum}}</span>
            </div>
          </div>
        </li>
      </ul>
    </div>
    <div class="w1 onload" @click="getMore">
      加载更多
    </div>
  </div>
</template>
<script>
export default {
  data(){
    return{
      list:[],
      pno:0,
      pageSize:20
    }
  },
  methods:{
    getMore(){
      this.pno++;
      this.axios.get(
        "http://127.0.0.1:3000/allLives?pno="+this.pno+"&this.pageSize="+this.pageSize
      ).then(result=>{
        var rows=this.list.concat(result.data.data);
        this.list=rows;
        //console.log(this.list);
        if(this.pno>result.data.pageCount){
          confirm("去课程库查看更多课程？");
        }
      })
    }
  },
  created(){
    this.getMore();
  }
}
</script>
<style scoped>
  .lesson{
    background: #F6F5FA;
    padding-bottom: 20px;
  }
  .lesson_img {
    width: 100%;
    height:200px;
    margin-bottom:35px;
  }
  .liveLesson ul{
    display:flex;
    flex-wrap:wrap;
  }
  .liveLesson ul .img-list{
    margin-right:20px;
    margin-left:0;
  }
  .liveLesson ul .img-list:nth-child(5n){
    margin-right:0;
  }
  .liveLesson ul .img-list{
    margin-bottom:35px;
  }
  .lesson_img div{
    height:100%;
    background: url("../../public/img/live/942AD41E012F491D95A9F437E4891E40.png") center center no-repeat;
  }
</style>