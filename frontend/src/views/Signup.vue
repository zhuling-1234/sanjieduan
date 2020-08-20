<template>
  <div class="Signup">
    <div class="logo-container">
      <div class="logo-div mb-5">
        <img src="../assets/signin-logo.png" alt />
        <span>|</span>
        <span>新用户注册</span>
      </div>
    </div>
    <!--背景-->
    <div class="back_signin">
      <div class="zhuce_div">
        <div>注册</div>
        <div class="uname_div">
          <span>用户名</span>
          <input
            type="text"
            placeholder="请输入用户名"
            maxlength="10"
            v-model="register.uname"
          />
        </div>
        <p class="msg" v-show="registerError.uname_msg">
          {{ registerError.uname_msg }}
        </p>

        <div class="pwd_div">
          <span>密码</span>
          <input
            type="password"
            placeholder="请输入密码"
            maxlength="8"
            v-model="register.pwd"
          />
        </div>
        <p class="msg" v-show="registerError.pwd_msg">
          {{ registerError.pwd_msg }}
        </p>

        <div class="pwd_div_again">
          <span>确认密码</span>
          <input
            type="password"
            placeholder="请再次输入密码"
            maxlength="8"
            v-model="register.pwdAgain"
          />
        </div>
        <p class="msg" v-show="registerError.pwdAgain_msg">
          {{ registerError.pwdAgain_msg }}
        </p>

        <div class="check_div">
          <input
            type="checkbox"
            v-model="register.check"
          />我已阅读并同意《优购会员注册协议》
        </div>
        <p class="msg" v-show="registerError.checbox_msg">
          {{ registerError.checbox_msg }}
        </p>
        <p class="msg" v-show="registerError.up_msg">
          {{ registerError.up_msg }}
        </p>
        <button @click="onClickreg">点击注册</button>
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
      register: {
        uname: '',
        pwd: '',
        pwdAgain: '',
        check: '',
      },
      registerError: {
        uname_msg: '',
        pwd_msg: '',
        pwdAgain_msg: '',
        checbox_msg: '',
        up_msg: '',
      },
    };
  },
  methods: {
    onClickreg() {
      if (!this.register.uname) {
        this.registerError.uname_msg = '用户名不能为空';
        return;
      } else {
        this.registerError.uname_msg = '';
      }

      if (!this.register.pwd) {
        this.registerError.pwd_msg = '密码不能为空';
        return;
      } else {
        this.registerError.pwd_msg = '';
      }

      if (!this.register.pwdAgain) {
        this.registerError.pwdAgain_msg = '请再次输入密码';
        return;
      } else {
        this.registerError.pwdAgain_msg = '';
      }

      if (this.register.pwdAgain !== this.register.pwd) {
        this.registerError.pwdAgain_msg = '密码不一致';
        return;
      } else {
        this.registerError.pwdAgain_msg = '';
      }

      if (this.register.pwd.length !== 8) {
        this.registerError.pwd_msg = '密码长度必须是8位';
        return;
      } else {
        this.registerError.pwd_msg = '';
      }

      if (!this.register.check) {
        this.registerError.checbox_msg = '请阅读并同意《优购会员注册协议》';
        return;
      } else {
        this.registerError.checbox_msg = '';
      }

      this.$axios
        .post('/account/signup', this.register)
        .then((response) => {
          this.registerError.up_msg = '';
          setTimeout(() => {
            alert('注册成功');
            this.$router.push('/signin');
          }, 600);
        })
        .catch((error) => {
          this.registerError.up_msg = error.response.data.msg;
        });
    },
  },
};
</script>

<style scoped>
.Signup .logo-div {
  margin-left: 65%;
}
.Signup .logo-div img {
  margin-top: -13px;
}
.Signup .logo-div span {
  display: inline-block;
  margin-left: 30px;
  color: #666;
}
.Signup .logo-div span:nth-child(2) {
  font-size: 40px;
  font-weight: lighter;
}
.Signup .logo-div span:nth-child(3) {
  font-size: 20px;
}
.Signup .back_signin {
  position: relative;
  margin-top: -35px;
  width: 100%;
  height: 553px;
  background-image: url('../assets/denglu.jpg');
  background-position: -280px 0px;
}
.Signup .zhuce_div {
  background: white;
  box-sizing: border-box;
  height: 450px;
  margin-top: 50px;
  width: 378px;
  padding: 5px;
  position: absolute;
  top: -5px;
  right: 170px;
}
.Signup .zhuce_div div:first-child {
  background: #333;
  color: white;
  width: 174px;
  line-height: 40px;
  text-align: center;
  margin: 30px auto;
}

/*input样式 */
.Signup .uname_div,
.Signup .pwd_div,
.Signup .pwd_div_again {
  border: 1px solid #aaa;
  box-sizing: border-box;
  width: 313px;
  font-size: 14px;
  margin: 30px auto;
}
.Signup .zhuce_div span {
  display: inline-block;
  width: 70px;
  margin-left: 10px;
}
.Signup .zhuce_div input {
  border: 0;
  line-height: 40px;
  outline: none;
}
.Signup .check_div {
  font-size: 12px;
  color: #666;
  margin: 0 0 20px 125px;
}
.Signup .zhuce_div button {
  background: #000;
  color: #fff;
  font-size: 16px;
  line-height: 40px;
  width: 312px;
  display: block;
  margin: auto;
  border: 0;
}
.Signup .zhuce_div button:hover {
  color: rgb(74, 221, 221);
}
.Signup .footer_text {
  color: #666;
  font-size: 12px;
  width: 800px;
  margin: 0 auto;
}
.Signup .zhuce_div .msg {
  font-size: 12px;
  color: red;
  margin: -30px 0 0 28px;
}
.Signup .check_div + p {
  margin: -18px 0 5px 28px !important;
}
</style>
