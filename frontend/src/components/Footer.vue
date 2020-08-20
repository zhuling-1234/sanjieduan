<template>
  <div class="footer">
    <div class="footer-feature">
      <div class="footer-container">
        <ul>
          <li>
            <div class="sprites1"></div>
            <span>正品保证</span>
          </li>
          <li>
            <div class="sprites2"></div>
            <span>10天退换货</span>
          </li>
          <li>
            <div class="sprites3"></div>
            <span>10天调补差价额</span>
          </li>
          <li>
            <div class="sprites4"></div>
            <span>09:00-21:00在线客服</span>
          </li>
        </ul>
      </div>

      <div class="footer-help">
        <div class="help-content-nav">
          <ul>
            <li>
              <dl>
                <dt class="dt-text-color">新手帮助</dt>
                <dd>
                  <a href="#">交易条款协议</a>
                </dd>
                <dd>
                  <a href="#">注册新用户</a>
                </dd>
                <dd>
                  <a href="#">会员积分详情</a>
                </dd>
              </dl>
            </li>
          </ul>
          <ul>
            <li>
              <dl>
                <dt class="dt-text-color">购物指南</dt>
                <dd>
                  <a href="#">订购流程</a>
                </dd>
                <dd>
                  <a href="#">验货与签收</a>
                </dd>
                <dd>
                  <a href="#">订单配送</a>
                </dd>
              </dl>
            </li>
          </ul>
          <ul>
            <li>
              <dl>
                <dt class="dt-text-color">支付/配送</dt>
                <dd>
                  <a href="#">支付方式</a>
                </dd>
                <dd>
                  <a href="#">配送方式</a>
                </dd>
                <dd>
                  <a href="#">配送时间及运费</a>
                </dd>
              </dl>
            </li>
          </ul>
          <ul>
            <li>
              <dl>
                <dt class="dt-text-color">售后服务</dt>
                <dd>
                  <a href="#">退换货政策</a>
                </dd>
                <dd>
                  <a href="#">退款说明</a>
                </dd>
                <dd>
                  <a href="#">发票制度</a>
                </dd>
              </dl>
            </li>
          </ul>
          <ul>
            <li>
              <dl>
                <dt class="dt-text-color">会员服务</dt>
                <dd>
                  <a href="#">找回密码</a>
                </dd>
                <dd>
                  <a href="#">联系我们</a>
                </dd>
                <dd>
                  <a href="#">联系我们</a>
                </dd>
              </dl>
            </li>
          </ul>
          <ul>
            <li>
              <dl>
                <dt class="dt-text-color">优购客服</dt>
                <dd>
                  <a href="#">在线咨询</a>
                </dd>
                <dd>
                  <a href="#">Email: ygservice@belle.com.cn</a>
                </dd>
                <dd>
                  <a href="#">微信客服：优购时尚商城</a>
                </dd>
              </dl>
            </li>
          </ul>
        </div>
      </div>
      <div class="certification">
          <ul class="icon">
              <li><img src="../assets/newGovIcon.gif" alt=""></li>
              <li><img src="../assets/beian1.png" alt=""></li>
              <li><img src="../assets/beian2.png" alt=""></li>
          </ul>
          <ul class="erweima">
              <li><img src="../assets/app.jpg" alt=""></li>
              <li><img src="../assets/weChat.jpg" alt=""></li>
          </ul>
      </div>
      <div class="copyright">
          <p>Copyright © 2011-2016 Yougou Technology Co., Ltd. 粤ICP备09070608号 
              深公网安备：4403101910665 粤公网安备 44030502000017号</p>
      </div>
    </div>
  </div>
</template>

<script>
export default {};
</script>

<style scoped>
/*底部样式设置*/

.footer .footer-feature {
  width: 100%;
  background: #333;
  border-bottom: 1px solid #666;
}
.footer .footer-container ul {
  padding: 46px;
  font-size: 18px;
  width: 900px;
  margin: 0 auto;
  color: white;
  font-family: "宋体";
}
.footer .footer-container ul li {
  display: inline-block;
  margin-left: 50px;
}
.footer .footer-container ul li div {
  display: inline-block;
  vertical-align: middle;
}
.footer .sprites1,
.sprites2,
.sprites3,
.sprites4 {
  width: 27px;
  height: 27px;
  margin-right: 10px;
}
.footer .sprites1 {
  background: url("../assets/css_sprites.png") -10px -10px;
}
.footer .sprites2 {
  background: url("../assets/css_sprites.png") -57px -58px;
}
.footer .sprites3 {
  background: url("../assets/css_sprites.png") -10px -58px;
}
.footer .sprites4 {
  background: url("../assets/css_sprites.png") -57px -11px;
}
.footer .footer-help {
  border-top: 1px solid #666;
}
.footer .help-content-nav {
  width: 1000px;
  margin: 0 auto;
  padding: 20px 0;
}
.footer .help-content-nav ul {
  display: inline-block;
  list-style: none;
  margin-left: 80px;
}
.footer .dt-text-color {
  color: white;
  font-size: 14px;
}
.footer .help-content-nav dl dd {
  margin-top: 15px;
  margin-left:0;
}
.footer .help-content-nav dl dd a {
  color: #666;
  font-size: 12px;
  text-decoration: none;
}
.footer .help-content-nav dd a:hover{
    color:white;
}
.footer .certification ul{
    list-style: none;
    display: inline-block;
    margin-left:20%;
}
.footer .certification ul li{
     display: inline-block;
}
.footer .certification .icon li{
    margin-left:20px;
}
.footer .certification .erweima li{
    margin-left:50px;
}
.footer .copyright p{
    font-size: 12px;
    color:white;
    text-align: center;
    padding: 20px 0;
}
</style>