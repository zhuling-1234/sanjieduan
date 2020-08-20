<template>
  <div class="Navigation">
    <div class="nav" @mouseleave="mouseLeave">
      <p>
        <router-link to="/">首页</router-link>
      </p>
      <!--一级-->
      <ul class="nav-parent">
        <li
          @mouseover="mouseOver(value.id)"
          v-for="(value, key) of categories.filter(
            (item) => item.parentId === null
          )"
          :key="key"
        >
          <router-link :to="{name:'Product',query:{categoryId:value.id}}">{{ value.cname }}</router-link>
        </li>
      </ul>
      <div v-show="activeNavId !== null" class="hide_div">
        <!--二级-->
        <ul class="erji_div">
          <li
            v-for="(value, key) of categories.filter(
              (item) => item.parentId === activeNavId
            )"
            :key="key"
          >
             <router-link :to="{name:'Product',query:{categoryId:value.id}}">{{ value.cname }}</router-link>
            <!--三级-->
            <ul class="sanji_div">
              <li
                v-for="(value, key) of categories.filter(
                  (item) => item.parentId === value.id
                )"
                :key="key"
              >
                <router-link :to="{name:'Product',query:{categoryId:value.id}}">{{ value.cname }}</router-link>
              </li>
            </ul>
          </li>
        </ul>
      </div>
    </div>
  </div>
</template>
<script>
import carousel from './Carousel';
export default {
  created() {
    this.getCategories();
  },
  data() {
    return {
      activeNavId: null, // 当前鼠标选中的一级导航id
      categories: [],
    };
  },
  methods: {
    getCategories() {
      this.$axios
        .get('/category/list')
        .then((res) => {
          // console.log(res.data);
          this.categories = res.data;
        })
        .catch((error) => {
          console.log(error);
        });
    },
    mouseOver(id) {
      this.activeNavId = id;
    },
    mouseLeave() {
      this.activeNavId = null;
    },
  },
  components: { carousel },
};
</script>

<style scoped>
/*导航和分类菜单*/
.Navigation .nav {
  width: 1100px;
  margin: 0 auto;
}
.Navigation .nav .nav-parent li,
.Navigation .hide_div > .erji_div > li {
  display: inline-block;
  padding: 5px 30px;
}
.Navigation .nav .nav-parent > li > a,
.Navigation .nav p > a {
  font-size: 20px;
  font-weight: bold;
  color: #333;
  text-decoration: none;
}
.Navigation .nav p {
  margin: 4px 30px 0 0;
}
.Navigation .nav .nav-parent > li > a:hover,
.Navigation .nav p > a:hover {
  text-decoration: underline;
  color: rgb(37, 128, 134);
}
.Navigation .hide_div {
  border: 1px solid rgb(231, 229, 229);
  height: 300px;
  position: absolute;
  top: 254px;
  z-index: 999;
  background-color: white;
}
.Navigation .hide_div ul li a {
  text-decoration: none;
}
.Navigation .erji_div > li > a {
  color: #333;
  font-size: 16px;
  font-weight: bold;
  display: block;
  margin-bottom: 15px;
  margin-left: 40px;
}
.Navigation .sanji_div > li > a {
  color: #666;
  font-size: 14px;
  font-weight: bold;
  display: block;
  margin-bottom: 12px;
}
.Navigation .sanji_div {
  list-style: none;
}
.Navigation .erji_div li:first-child,
.Navigation .erji_div li:nth-child(2) {
  float: left;
}

.Navigation .erji_div li ul {
  margin-left: 40px;
}
</style>
