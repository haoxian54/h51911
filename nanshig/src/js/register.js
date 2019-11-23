$(function () {
    let check = new CheckCode({
        ele: '#checkbox',
        ele2: '#checkcon',
        num: 5,
        change: '#checkcon'
    })

    check.init();

    registerForm({
        ele: '#registerbox',
        tel: '#tel',
        password: '#password',
        confirm_pwd: '#cpassword',
        checkcode: '#checkcode',
        checkcon: '#checkcon',
        btnCheck: '#register'
    }, function () {
        ajax({
            type: 'post',
            url: '../api/register.php',
            data: {
                username: tel.value,
                password: password.value
            },
            success: str => {
                if (str == 'repetition') {
                    alert('用户名已被注册')
                } else {
                    if (str) {
                        alert('注册成功');
                        window.open("login.html?" + tel.value);
                        window.close();
                    } else {
                        alert('注册失败');
                    }
                }
            }
        });
    })

    $('h1').on('click', function () {
        location.href = '../index.html';
    })
})