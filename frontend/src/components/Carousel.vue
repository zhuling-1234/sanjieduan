<template>
<div id="carousel" class="carousel slide" data-ride="carousel">
 
  <!-- 指示符 -->
  <ul class="carousel-indicators">
    <li data-target="#carousel" data-slide-to="0" class="active"></li>
    <li data-target="#carousel" data-slide-to="1"></li>
  </ul>
 
  <!-- 轮播图片 -->
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="../assets/lunbotu1.jpg">
    </div>
    <div class="carousel-item">
      <img src="../assets/lunbotu2.jpg">
    </div>
  </div>
 
  <!-- 左右切换按钮 -->
  <a class="carousel-control-prev" href="#carousel" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#carousel" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
 
</div>
</template>

<script>
import 'bootstrap/dist/css/bootstrap.min.css'
import $ from 'jquery/dist/jquery.min.js'
import 'bootstrap/dist/js/bootstrap.min.js'
export default {
  
};
</script>
<style scoped>
.carousel .carousel-inner img{
    margin-left:-290px;
}

</style>