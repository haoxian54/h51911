//表单验证
function registerForm(opt, fn) {
    let defaultOpt = {
        username: "",
        nickname: "",
        email: "",
        identity: "",
        tel: "",
        birthday: "",
        password: "",
        confirm_pwd: "",
        all: "",
        btnCheck: "",
        checkcode: "",
        checkcon: "",
        successurl: ""
    }
    let pswstatu = false;
    let checkcodestatu = false;

    let username = null;
    let nickname = null;
    let email = null;
    let identity = null;
    let tel = null;
    let birthday = null;
    let password = null;
    let confirm_pwd = null;
    let all = null;
    let checkcon = null;
    Object.assign(defaultOpt, opt);

    let checkReg = {
        username: function (data) {
            return /^[a-zA-Z][\w\-]{5,19}$/.test(data);
        },
        nickname: function (data) {
            return /^[\u2E80-\u9FFF]+$/.test(data);
        },
        email: function (data) {
            return /^[a-z0-9][\w\-\.]{2,29}@[a-z0-9\-]{2,67}(\.[a-z\u2E80-\u9FFF]{2,6})+$/.test(data);
        },
        identity: function (data) {
            return /^(\d{17}|\d{14})[\dx]$/.test(data);
        },
        tel: function (data) {
            return /^1[3-9]\d{9}$/.test(data);
        },
        birthday: function (data) {
            return /^\d{4}([\/\-]?)\d{1,2}\1\d{1,2}$/.test(data);
        },
        password: function (data) {
            if (/^\d+$/.test(data)) {
                return false
            } else if (/^[a-zA-Z]+$/.test(data)) {
                return false
            } else {
                return /^\S{6,20}$/.test(data);
            }
        },
        confirm_pwd: function (data, data2) {
            return data == data2;
        }
    }


    let box = document.querySelector(defaultOpt.ele);
    let btn = box.querySelector(defaultOpt.btnCheck);

    if (defaultOpt.username) {
        username = box.querySelector(defaultOpt.username);
        username.onblur = function () {
            if (checkReg.username(this.value)) {
                username.style.border = "1px solid #58bc58";
            } else {
                username.style.border = "1px solid red";
            }
        }
    }
    if (defaultOpt.nickname) {
        nickname = box.querySelector(defaultOpt.nickname);
        nickname.onblur = function () {
            if (checkReg.nickname(this.value)) {
                nickname.style.border = "1px solid #58bc58";
            } else {
                nickname.style.border = "1px solid red";
            }
        }
    }
    if (defaultOpt.email) {
        email = box.querySelector(defaultOpt.email);
        email.onblur = function () {
            if (checkReg.email(this.value)) {
                email.style.border = "1px solid #58bc58";
            } else {
                email.style.border = "1px solid red";
            }
        }
    }
    if (defaultOpt.identity) {
        identity = box.querySelector(defaultOpt.identity);
        identity.onblur = function () {
            if (checkReg.identity(this.value)) {
                identity.style.border = "1px solid #58bc58";
            } else {
                identity.style.border = "1px solid red";
            }
        }
    }
    if (defaultOpt.tel) {
        tel = box.querySelector(defaultOpt.tel);
        tel.onblur = function () {
            if (checkReg.tel(this.value)) {
                tel.style.border = "1px solid #58bc58";
            } else {
                tel.style.border = "1px solid red";
                alert('电话号码不正确')
            }
        }
    }
    if (defaultOpt.birthday) {
        birthday = box.querySelector(defaultOpt.birthday);
        birthday.onblur = function () {
            if (checkReg.birthday(this.value)) {
                birthday.style.border = "1px solid #58bc58";
            } else {
                birthday.style.border = "1px solid red";
            }
        }
    }
    if (defaultOpt.password) {
        password = box.querySelector(defaultOpt.password);
        password.onblur = function () {
            if (checkReg.password(this.value)) {
                if (/^\S{6,12}$/.test(this.value)) {
                    password.style.border = "1px solid yellow";
                } else if (/^\S{13,}$/.test(this.value)) {
                    password.style.border = "1px solid #58bc58";
                }
                pswstatu = true;
            } else {
                password.style.border = "1px solid red";
                pswstatu = false;
            }
        }
    }
    if (defaultOpt.confirm_pwd) {
        confirm_pwd = box.querySelector(defaultOpt.confirm_pwd);
        confirm_pwd.onblur = function () {
            var password = box.querySelector("#password");
            if (pswstatu) {
                if (checkReg.confirm_pwd(password.value, this.value) && this.value != "") {
                    confirm_pwd.style.border = "1px solid #58bc58";
                } else {
                    confirm_pwd.style.border = "1px solid red";
                    alert('两次输入的密码不一致')
                }
            } else {
                confirm_pwd.style.border = "1px solid red";
                alert('请确认密码')
            }
        }
    }
    if (defaultOpt.checkcode) {
        checkcode = box.querySelector(defaultOpt.checkcode);
        checkcode.onblur = function () {
            checkcon = box.querySelector(defaultOpt.checkcon);
            if (checkcode.value == checkcon.innerHTML.toLowerCase()) {
                checkcode.style.border = "1px solid #58bc58";
                checkcodestatu = true;
            } else {
                checkcode.style.border = "1px solid red";
                checkcodestatu = false;
            }
        }
    }

    if (defaultOpt.all) {
        let all = box.querySelector(defaultOpt.all);
    }

    btn.onclick = function () {
        // e = e || window.event;
        if (defaultOpt.username) {
            if (!checkReg.username(username.value)) {
                alert("用户名不正确");
                return false;
            }
        }
        if (defaultOpt.nickname) {
            if (!checkReg.nickname(nickname.value)) {
                alert("昵称不正确");
                return false;
            }
        }
        if (defaultOpt.email) {
            if (!checkReg.email(email.value)) {
                alert("邮箱不正确");
                return false;
            }
        }
        if (defaultOpt.identity) {
            if (!checkReg.identity(identity.value)) {
                alert("身份证不正确");
                return false;
            }
        }
        if (defaultOpt.tel) {
            if (!checkReg.tel(tel.value)) {
                alert("手机号不正确");
                return false;
            }
        }
        if (defaultOpt.password) {
            if (!checkReg.password(password.value)) {
                alert("密码不正确");
                return false;
            }
        }
        if (defaultOpt.confirm_pwd) {
            if (!checkReg.confirm_pwd(password.value, confirm_pwd.value) || password.value == "") {
                alert("两次密码不一致");
                return false;
            }
        }

        fn();
    }
}