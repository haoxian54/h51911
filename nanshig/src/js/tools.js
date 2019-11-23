$(function () {
    gotop({
        ele: '.gotop'
    });

    $('.login').on('click', function () {
        if ($('#indexlogin').css('display') == 'none') {
            $('#indexlogin').css('display', 'block');
        } else {
            $('#indexlogin').css('display', 'none');
        }
    })
    $('#closebox').on('click', function () {
        $('#indexlogin').css('display', 'none');
    })

    $('#loginbtn').on('click', function () {
        if ($('#uname').val() && $('#psw').val() && $('#checkcode').val() == $('#checkcon').html().toLowerCase()) {
            ajax({
                type: 'post',
                url: 'api/login.php',
                data: {
                    username: $('#uname').val(),
                    password: $('#psw').val()
                },
                success: str => {
                    if (str) {
                        alert('登录成功');
                        setCookie('username', $('#username').val(), '');
                        location.href = '1ndex.html';
                    } else {
                        alert('登录失败');
                    }
                }
            })
        } else {
            alert('未知错误')
        }
    })
    $('.shopcar').on('click', function () {
        location.href = 'shoppingcar.html';
    })
    let statu = true;
    $('.hidden').on('click', function () {
        if (statu) {
            $('.shopcar').css('left', '100px');
            $('.gotop').css('left', '100px');
            $('.login').css('left', '100px');
            statu = !statu;
        } else {
            $('.shopcar').css('left', '0');
            $('.gotop').css('left', '0');
            $('.login').css('left', '0');
            statu = !statu;
        }
    })
})