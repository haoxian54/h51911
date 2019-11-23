$(function () {
    $('#foot').load('footer_area.html');
    let str = decodeURI(location.search.slice(1));
    $('#username').val(str);

    $('h1').on('click', function () {
        location.href = '../index.html';
    })

    let check = new CheckCode({
        ele: '.verification',
        ele2: '#checkcon',
        num: 4,
        change: '#checkcon'
    })
    check.init();

    $('#login').on('click', function () {
        if ($('#username').val() && $('#psw').val() && $('#checkcode').val() == $('#checkcon').html().toLowerCase()) {
            ajax({
                type: 'post',
                url: '../api/login.php',
                data: {
                    username: $('#username').val(),
                    password: $('#psw').val()
                },
                success: str => {
                    if (str) {
                        alert('登录成功');
                        let time = '';
                        if ($('#autologin').prop('checked') == true) {
                            time = 7;
                        } else {
                        }
                        setCookie('username', $('#username').val(), time);
                        location.href = '../index.html?' + $('#username').val();
                    } else {
                        alert('登录失败');
                    }
                }
            })
        } else {
            alert('未知错误')
        }
    })
})