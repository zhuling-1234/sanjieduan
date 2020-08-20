<template>
  <div class="Home">
    <Logo></Logo>
    <!--导航分类菜单-->
    <Nav></Nav>

    <!--轮播图-->
    <Carousel></Carousel>

    <!--新品推荐-->
    <div class="xinpin">
      <div>
        <h1 class="font-weight-bold">新品推荐</h1>
        <p>男女鞋&nbsp;&nbsp;运动</p>
      </div>
      <!--1-->
      <div class="xinpin_xq1" v-show="isClickLeft">
        <div class="xinpin_bigdiv">
          <div class="xinpin_div">
            <img src="../assets/xiezi1.jpg" alt />
            <div class="belle">
              <img src="../assets/blackL-belle.png" alt />
              <p>休闲&nbsp;满帮鞋</p>
              <h4>￥&nbsp;559</h4>
            </div>
          </div>
          <div class="xinpin_div">
            <img src="../assets/xiezi2.jpg" alt />
            <div class="belle">
              <img src="../assets/blackL-belle.png" alt />
              <p>休闲&nbsp;满帮鞋</p>
              <h4>￥&nbsp;559</h4>
            </div>
          </div>
          <div class="xinpin_div">
            <img src="../assets/xiezi3.jpg" alt />
            <div class="belle">
              <img src="../assets/blackL-teenmix.png" alt />
              <p>复古&nbsp;满帮鞋</p>
              <h4>￥&nbsp;559</h4>
            </div>
          </div>
          <div class="xinpin_div">
            <img src="../assets/xiezi4.jpg" alt />
            <div class="belle">
              <img src="../assets/blackL-belle.png" alt />
              <p>商业&nbsp;满帮鞋</p>
              <h4>￥&nbsp;559</h4>
            </div>
          </div>
        </div>
      </div>
      <!--2-->
      <div class="xinpin_xq2" v-show="!isClickLeft">
        <div class="xinpin_bigdiv">
          <div class="xinpin_div">
            <img src="../assets/xiezi5.jpg" alt />
            <div class="belle">
              <img src="../assets/blackL-belle.png" alt />
              <p>休闲&nbsp;满帮鞋</p>
              <h4>￥&nbsp;559</h4>
            </div>
          </div>
          <div class="xinpin_div">
            <img src="../assets/xiezi6.jpg" alt />
            <div class="belle">
              <img src="../assets/blackL-belle.png" alt />
              <p>休闲&nbsp;满帮鞋</p>
              <h4>￥&nbsp;559</h4>
            </div>
          </div>
          <div class="xinpin_div">
            <img src="../assets/xiezi7.jpg" alt />
            <div class="belle">
              <img src="../assets/blackL-teenmix.png" alt />
              <p>复古&nbsp;满帮鞋</p>
              <h4>￥&nbsp;559</h4>
            </div>
          </div>
          <div class="xinpin_div">
            <img src="../assets/xiezi8.jpg" alt />
            <div class="belle">
              <img src="../assets/blackL-belle.png" alt />
              <p>商业&nbsp;满帮鞋</p>
              <h4>￥&nbsp;559</h4>
            </div>
          </div>
        </div>
      </div>
      <!--左右箭头-->
      <div class="left" @click="onClickLeft">
        <h1>&#9668;</h1>
      </div>
      <div class="right" @click="onClickRight">
        <h1>&#9658;</h1>
      </div>
    </div>

    <!--主推大牌-->
    <div class="zhutui">
      <div>
        <h1 class="font-weight-bold">今日主推大牌</h1>
        <p>男女鞋&nbsp;&nbsp;运动</p>
      </div>
      <div class="motetu">
        <img src="../assets/mote1.jpg" alt="" />
        <div class="touming_div">
          <img src="../assets/whiteL-bata.png" alt="" />
        </div>
      </div>
      <div class="motetu">
        <img src="../assets/mote2.jpg" alt="" />
        <div class="touming_div">
          <img src="../assets/whiteL-senda.png" alt="" />
        </div>
      </div>
      <div class="motetu">
        <img src="../assets/mote3.jpg" alt="" />
        <div class="touming_div">
          <img src="../assets/whiteL-tata.png" alt="" />
        </div>
      </div>
      <div class="dapai_logo">
        <img src="../assets/blackL-basto.png" alt="" />
        <img src="../assets/blackL-bata.png" alt="" />
        <img src="../assets/blackL-belle.png" alt="" />
        <img src="../assets/blackL-joypeace.png" alt="" />
        <img src="../assets/blackL-millies.png" alt="" />
        <img src="../assets/blackL-staccato.png" alt="" />
        <img src="../assets/blackL-teenmix.png" alt="" />
        <img src="../assets/blackL-basto.png" alt="" />
      </div>
    </div>

    <!--潮流资讯-->
    <div class="chaoliu">
      <div>
        <h1 class="font-weight-bold">品牌潮流资讯</h1>
        <p>BRAND&nbsp;&nbsp;FASHION</p>
      </div>
      <div>
        <ul class="chaoliu_video">
          <li>
            <video
              width="315"
              height="458"
              poster="../assets/si_jia_tu.jpg"
              controls
            >
              <source
                src="../assets/advertising_video_staccato_20190313.mp4"
                type="video/mp4"
              />
            </video>
          </li>
          <li>
            <video
              width="315"
              height="458"
              poster="../assets/bai_li.jpg"
              controls
            >
              <source
                src="../assets/bai_li_SS19shu_ban_30s_1080X1920_1.mp4"
                type="video/mp4"
              />
            </video>
          </li>
          <li>
            <img src="../assets/qu_shi_re_dian_.jpg" alt="" />
          </li>
        </ul>
      </div>
      <div class="clear"></div>
      <div>
        <img src="../assets/chaoliu1.jpg" alt="" />
        <img src="../assets/chaoliu2.jpg" alt="" />
        <img src="../assets/chaoliu3.jpg" alt="" />
        <img src="../assets/chaoliu4.jpg" alt="" />
      </div>
      <!--大视频-->
      <div>
        <video
          width="990"
          height="444"
          poster="../assets/dashipin.jpg"
          controls
        >
          <source
            src="../assets/advertising_video_basto_2020.mp4.mp4"
            type="video/mp4"
          />
        </video>
      </div>
      <div>
        <div>
          <img src="../assets/chaoliu5.jpg" alt="" />
        </div>
      </div>
    </div>

    <!--底部-->
    <Footer></Footer>
  </div>
</template>

<script>
import Carousel from '../components/Carousel';
import Nav from '../components/Nav';
import Logo from '../components/Logo';
import Footer from '../components/Footer';
export default {
  data() {
    return {
      isClickLeft: true,
    };
  },
  methods: {
    onClickLeft() {
      this.isClickLeft = true;
    },
    onClickRight() {
      this.isClickLeft = false;
    },
  },
  components: { Carousel, Nav, Logo, Footer },
};
</script>

<style scoped>
/*新品推荐*/
.Home .xinpin {
  height: 550px;
}
.Home .xinpin,
.Home .zhutui,
.Home .chaoliu {
  width: 1020px;
  text-align: center;
  position: relative;
  margin: 0 auto;
}
.Home .xinpin_div:hover {
  background-color: rgba(219, 218, 218, 0.89);
}
.Home .xinpin_div > img {
  width: 190px;
}
.Home .xinpin > div:first-child {
  width: 500px;
  margin: 70px auto;
}
.Home .xinpin .belle > img {
  width: 60px;
}
.Home .xinpin .belle > p {
  color: rgb(87, 86, 86);
  font-size: 12px;
}
.Home .xinpin .belle > h4 {
  color: #333;
  font-size: 18px;
  font-weight: bold;
}

.Home .xinpin .xinpin_div {
  display: inline-block;
  width: 210px;
  padding: 10px;
}
.Home .xinpin_bigdiv {
  width: 1000px;
}
.Home .xinpin_xq1,
.Home .xinpin_xq2 {
  position: absolute;
}
.Home .left,
.Home .right {
  position: absolute;
  top: 260px;
  color: #333;
}
.Home .left {
  left: 45px;
}
.Home .right {
  right: 45px;
}
.Home .left:hover,
.Home .right:hover {
  color: rgb(151, 155, 154);
}
/*主推大牌*/
.Home .motetu {
  position: relative;
  display: inline-block;
  margin: 8px;
}
.Home .motetu .touming_div {
  width: 315px;
  height: 402px;
  position: absolute;
  top: 0;
  background-color: #000;
  opacity: 0.6;
}
.Home .touming_div > img {
  position: absolute;
  top: 48%;
  left: 35%;
}
.Home .touming_div {
  visibility: hidden;
}
.Home .motetu:hover .touming_div {
  visibility: visible;
}
.Home .dapai_logo img {
  width: 70px;
  display: inline-block;
  margin: 5px 6px 70px 16px;
}

/*潮流资讯 */
.Home .chaoliu p {
  font-size: 30px;
}
.Home .chaoliu_video li {
  list-style: none;
  float: left;
  margin: 10px;
}
.Home .chaoliu_video li:first-child {
  margin-left: 18px;
}
.clear {
  clear: both;
}
.clear + div img {
  margin: 40px 0px 100px 20px;
}
.clear + div img:first-child {
  margin-left: -6px;
}
</style>
