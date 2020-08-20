<template>
  <div class="Product">
    <Logo></Logo>
    <!--导航分类菜单-->
    <Nav></Nav>
    <!--大图-->
    <div class="shuoming">
      <img src="../assets/si_jia_tu_.jpg" alt="" />
      <p>
        一个代表着年轻时尚、多元化的时装鞋履品牌，目标将时尚潮流带到女性的现实生活中。
        “STACCATO”是乐章上的音符，轻轻一点，谱出优美的旋律，为音乐带来多样性。穿上S
        TACCATO单鞋的时代女性，踏出自信又轻松的脚步，犹如跳跃的音符，反映年轻与时尚的
        生活态度。目前品牌开设门店已超1100家，遍布中国、韩国、澳洲、新加坡、马来西亚、
        罗马尼亚、沙特阿拉伯等地。
      </p>
      <div class="yema">
        <span v-show="totalPage">{{pageIndex}} - {{totalPage}}页/</span>
        <span v-show="!totalPage">您选择的分类下没有产品哦</span>
        <a href="javascript:;" @click="handlePreviousClick" v-show="hasPrevious">上一页</a> &nbsp;&nbsp;
        <a href="javascript:;" @click="handleNextClick" v-show="hasNext">下一页</a>
      </div>
      <hr />
      <div class="details">
        <ul>
          <li v-for="item in items" :key="item.id"> 
            <router-link :to="{ name: 'Details', query: { id: item.id}}"><img :src="item.imgUrl" alt="" /></router-link>
            <p>
              {{item.pname}}
            </p>
            <h6>￥{{item.price}}</h6>
            <h6 class="yuanjia">￥{{item.price}}</h6>
          </li>
        </ul>
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
      categoryId: undefined,
      items: [],
      pageIndex: 1,
      totalPage: undefined
    }
  },
  computed:{
    hasPrevious(){
      return this.pageIndex > 1;
    },
    hasNext(){
      return this.pageIndex < this.totalPage;
    }
  },
  created() {
    this.categoryId = this.$route.query.categoryId;
    this.getProducts();
  },
  methods: {
    getProducts() {
      this.$axios.get('/product/list', {
        params: {
          categoryId: this.categoryId,
          pageIndex: this.pageIndex
        }
      }).then((response) => {
        this.totalPage = response.data.totalPage;
        this.items = this.totalPage ? response.data.items: [];
      }).catch((error) => {
        console.log(error)
      })
    },
    handlePreviousClick() {
      if(this.hasPrevious){
        this.pageIndex -= 1;

        this.getProducts();
      }
    },
    handleNextClick() {
      if(this.hasNext){
        this.pageIndex += 1;
        
        this.getProducts();
      }
    }
  },
  watch:{
    $route: {
      handler() {
        // 因为 created 声明周期函数只会执行一次，
        // 当我们已经在产品列表页面，又重新点击上面的分类时，
        // 路由不会变，改变的只是路由的参数，所以这里我们需要监听(watch)路由的变化
        // 从而得到新的 categoryId
        this.categoryId = this.$route.query.categoryId;

        // 将以下数据重置为默认值
        this.items = [];
        this.pageIndex = 1;
        this.totalPage = undefined;

        this.getProducts();
      },
      deep: true,  //深度监听，同时也可监听到param参数变化
    }
  },
  components: { Nav, Logo, Footer },
};
</script>

<style scoped>
.Product .shuoming {
  width: 990px;
  margin: 0 auto;
  font-size: 12px;
  color: #333;
}
.Product .yema,
.Product .yema a {
  font-size: 14px;
  color: #aaa;
  margin: 50px 0 -10px 0;
}
.Product .yuanjia {
  color: #aaa;
  text-decoration: line-through;
  font-weight: normal;
}
.Product .details li {
  text-align: center;
  display: inline-block;
  width: 240px;
  height: 400px;
}
.Product .details li:hover {
  background: #eee;
}
.Product .details li img {
  width: 220px;
  margin: 10px 0 15px 0;
}
.Product .details li h6 {
  display: inline-block;
  margin-left: 1rem;
}
</style>
