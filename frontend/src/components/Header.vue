<template>
  <div class="header">
    <header>
      <div class="nav">
        <ul class="left-content">
          <li>
            <a href="#">关注</a>
          </li>
          <li>
            <a href="#">下载APP</a>
          </li>
        </ul>
        <ul class="right-content">
          <li>
            <router-link to="/signin">登录</router-link>
            <span>/</span>
            <router-link to="/signup">注册</router-link>
          </li>
          <li>
            <a href="#">❤&nbsp;收藏</a>
          </li>
          <li>
            <a href="#">购物袋</a>
          </li>
          <li>
            <a href="#">公告</a>
          </li>
        </ul>
      </div>
    </header>
  </div>
</template>

<script>
export default {};
</script>  

<style scoped>
/*头部样式设置*/
.header .nav {
  width: 100%;
  height: 40px;
  background: #333;
  font-family: "宋体";
}
.header .nav ul li {
  list-style: none;
  display: inline-block;
  margin-top: 12px;
  margin-right: 20px;
}
.header .left-content li:first-child {
  margin-left: 145px;
}
.header .left-content {
  float: left;
}
.header .right-content {
  float: right;
  margin-right: 100px;
}
.header .nav ul li a ,
.header .nav ul li span{
  color: white;
  font-size: 12px;
  text-decoration: none;
}
.header .nav ul li a:hover{
  text-decoration: underline;
  color:rgb(241, 123, 12);
}

</style>