<template>
  <div class="Signin">
    <div class="logo-container">
      <div class="logo-div mb-5">
        <img src="../assets/signin-logo.png" alt />
        <span>|</span>
        <span>用户登录</span>
      </div>
    </div>
    <!--背景-->
    <div class="back_signin">
      <div class="denglu_div">
        <div>账户密码登录</div>
        <div class="input_uname_div">
          <i></i>
          <input
            type="text"
            name="uname"
            placeholder="请输入用户名"
            maxlength="10"
            v-model="form.uname"
          />
        </div>
        <p class="msg" v-show="formError.msg_uname">
          {{ formError.msg_uname }}
        </p>
        <div class="input_pwd_div">
          <i></i>
          <input
            type="password"
            name="pwd"
            placeholder="请输入密码"
            maxlength="8"
            v-model="form.pwd"
          />
        </div>
        <p class="msg" v-show="formError.msg_pwd">{{ formError.msg_pwd }}</p>
        <p class="msg" v-show="formError.msg_response">
          {{ formError.msg_response }}
        </p>
        <p>
          <a href="#">忘记密码？</a>
        </p>
        <button @click="onClickLogin">点击登录</button>
        <p>使用合作网站账号登录优购:</p>
        <p class="yougou_icon">
          <a class="wx" href="#">&nbsp;</a>
          <a class="zfb" href="#">&nbsp;</a>
          <a class="kk" href="#">&nbsp;</a>
          <a class="wb" href="#">&nbsp;</a>
          <a class="rr" href="#">&nbsp;</a>
        </p>
      </div>
    </div>
    <p class="footer_text">
      Copyright © 2011-2014 Yougou Technology Co., Ltd. 粤ICP备09070608号-4
      增值电信业务经营许可证：粤 B2-20090203
    </p>
  </div>
</template>

<script>
export default {
  data() {
    return {
      form: {
        uname: '',
        pwd: '',
      },
      formError: {
        msg_uname: '',
        msg_pwd: '',
        msg_response: '',
      },
    };
  },
  methods: {
    onClickLogin() {
      if (!this.form.uname) {
        this.formError.msg_uname = '用户名不能为空';
        return;
      } else {
        this.formError.msg_uname = '';
      }

      if (!this.form.pwd) {
        this.formError.msg_pwd = '密码不能为空';
        return;
      } else {
        this.formError.msg_pwd = '';
      }

      this.$axios
        .post('/account/signin', this.form)
        .then((response) => {
          this.formError.msg_response = '';
          setTimeout(() => {
            alert('登陆成功');
            this.$router.push('/');
          }, 600);
        })
        .catch((error) => {
          this.formError.msg_response = error.response.data.msg;
        });
    },
  },
};
</script>

<style scoped>
.Signin .logo-div {
  margin-left: 65%;
}
.Signin .logo-div img {
  margin-top: -13px;
}
.Signin .logo-div span {
  display: inline-block;
  margin-left: 30px;
  color: #666;
}
.Signin .logo-div span:nth-child(2) {
  font-size: 40px;
  font-weight: lighter;
}
.Signin .logo-div span:nth-child(3) {
  font-size: 20px;
}
.Signin .back_signin {
  position: relative;
  margin-top: -35px;
  width: 100%;
  height: 553px;
  background-image: url('../assets/denglu.jpg');
  background-position: -280px 0px;
}
.Signin .denglu_div {
  background: white;
  box-sizing: border-box;
  height: 450px;
  margin-top: 50px;
  width: 378px;
  padding: 5px;
}
.Signin .denglu_div div:first-child {
  background: #333;
  color: white;
  width: 174px;
  line-height: 40px;
  text-align: center;
  margin: 30px auto;
}
/*input样式 */
.Signin .back_signin div > i {
  display: block;
  float: left;
  width: 48px;
  height: 36px;
}
.Signin .input_uname_div > i {
  background: url('../assets/icon_sig_reg.png') no-repeat;
  background-position: -168px -27px;
}
.Signin .input_pwd_div > i {
  background: url('../assets/icon_sig_reg.png') no-repeat;
  background-position: -168px -61px;
}
.Signin .input_uname_div,
.Signin .input_pwd_div {
  width: 313px;
  border: 1px solid #aaa;
  margin: 30px auto;
}
.Signin .back_signin input {
  border: 0;
  height: 36px;
  line-height: 36px;
  padding: 0;
  width: 235px;
  outline: none;
}

.Signin .denglu_div p > a {
  color: #aaa;
  font-size: 12px;
  display: inline-block;
  margin-left: 290px;
}
.Signin .denglu_div p + button {
  background: #000;
  color: #fff;
  font-size: 16px;
  line-height: 40px;
  width: 312px;
  display: block;
  margin: auto;
  border: 0;
}
.Signin .denglu_div p + button:hover {
  color: rgb(74, 221, 221);
}
.Signin .denglu_div p + button + p {
  width: 338px;
  color: #999;
  margin-top: 10px;
  text-align: center;
  font-size: 12px;
}
.Signin .denglu_div .yougou_icon {
  width: 290px;
  margin: 0 auto;
}
.Signin .denglu_div .yougou_icon a {
  line-height: 54px;
  padding: 17px 17px;
  margin: 0 6px;
}
.Signin .wx {
  background: url('../assets/icon_sig_reg.png') no-repeat;
  background-position: -37px -21px;
}
.Signin .zfb {
  background: url('../assets/icon_sig_reg.png') no-repeat;
  background-position: -73px -21px;
}
.Signin .kk {
  background: url('../assets/icon_sig_reg.png') no-repeat;
  background-position: -110px -22px;
}
.Signin .wb {
  background: url('../assets/icon_sig_reg.png') no-repeat;
  background-position: -37px -57px;
}
.Signin .rr {
  background: url('../assets/icon_sig_reg.png') no-repeat;
  background-position: -73px -57px;
}
.Signin .denglu_div {
  position: absolute;
  top: -5px;
  right: 170px;
}
.Signin .msg {
  font-size: 12px;
  color: red;
  margin-left: 28px;
  margin: -30px 0 0 28px;
}
.Signin .footer_text {
  color: #666;
  font-size: 12px;
  width: 800px;
  margin: 0 auto;
}
</style>
