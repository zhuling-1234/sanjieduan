<template>
  <div class="Details">
    <Logo></Logo>
    <!--导航分类菜单-->
    <Nav></Nav>
    <div class="details">
      <img src="../assets/details/details1.jpg" alt="" />
      <div class="gwc">
        <img src="../assets/details/logo.png" alt="" />
        <p>思加图2020秋季新款方头一脚蹬乐福鞋牛皮革女满帮单鞋Q7083CM0</p>
        <p class="price"><span>￥</span>978 <span>￥1242</span></p>
        <div class="buy">
          <p>
            尺码：
            <a href="#">34</a><a href="#">35</a><a href="#">36</a>
            <a href="#">37</a><a href="#">38</a><a href="#">39</a>
          </p>
          <div>
            <span>
              数量：
              <button @click="remove">-</button>
              <span>{{ count }}</span>
              <button @click="add">+</button>
            </span>
          </div>
          <div>
            <div class="jrgwc">加入购物袋</div>
            <div class="ljgm">立即购买</div>
          </div>
        </div>
      </div>
    </div>

    <div class="xijie">
      <h1><span>S姐</span>带你看细节</h1>
      <h5>#In pursuit of ever path,every significant#</h5>
      <div>
        <img src="../assets/details/details3jpg.jpg" alt="" />
        <img src="../assets/details/details4.jpg" alt="" />
        <img src="../assets/details/details5.jpg" alt="" />
        <img src="../assets/details/details6.jpg" alt="" />
        <div class="chima">
          <img src="../assets/details/details7.jpg" alt="" />
        </div>
        <img src="../assets/details/details8.jpg" alt="" />
      </div>
    </div>

    <!--底部-->
    <Footer></Footer>
  </div>
</template>

<script>
import Nav from '../components/Nav';
import Logo from '../components/Logo';
import Footer from '../components/Footer';
export default {
  data() {
    return {
      count: 1,
    };
  },
  methods: {
    add() {
      this.count++;
    },
    remove() {
      if (this.count > 1) {
        this.count--;
      }
    },
  },
  components: { Nav, Logo, Footer },
};
</script>

<style scoped>
.Details > .details {
  padding-bottom: 50px;
  width: 90%;
  margin: 0 auto;
}
.Details .price {
  font-size: 30px;
  font-weight: bold;
}
.Details .price span:first-child {
  font-size: 16px;
}
.Details .price span:last-child {
  font-size: 14px;
  font-weight: normal;
  text-decoration: line-through;
}
.Details .gwc {
  display: inline-block;
  margin-top: 50px;
}
.Details .gwc > img,
.Details .gwc p {
  margin-top: 20px;
}
.Details .buy a {
  width: 45px;
  text-align: center;
  color: #aaa;
  display: inline-block;
  border: 1px solid #aaa;
  margin-left: 10px;
  text-decoration: none;
}
.Details .buy a:hover {
  border: 1px solid #000;
  color: #000;
}
.Details button {
  width: 30px;
  border: 1px solid #aaa;
}
.Details button + span {
  display: inline-block;
  border: 1px solid #aaa;
  text-align: center;
  width: 50px;
  margin: 10px 5px;
}
.Details .jrgwc,
.Details .ljgm {
  width: 224px;
  height: 48px;
  text-align: center;
  line-height: 48px;
  font-size: 20px;
  border: 1px solid #333;
  display: inline-block;
  margin: 30px 0 0 20px;
}
.Details .jrgwc {
  background: #333;
  color: white;
}
.Details > .details > img {
  margin-top: -343px;
}
.Details .chima {
  width: 790px;
  margin: 0 auto;
}
.Details .xijie {
  text-align: center;
}
.Details .xijie h1,
.Details .xijie h5 {
  font-weight: lighter;
}
.Details .xijie h1 {
  letter-spacing: 15px;
}
.Details .xijie h1 > span {
  font-weight: bold;
}
</style>
