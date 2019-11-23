(function () {
    $('#foot').load('html/footer_area.html');
    $('.golistpage').eq(0).on('click', function () {
        location.href = 'html/listpage.html?clothes';
    })

    $('.golistpage').eq(1).on('click', function () {
        location.href = 'html/listpage.html?shoes';
    })

    $('.golistpage').eq(2).on('click', function () {
        location.href = 'html/listpage.html?suit';
    })

    //轮播图
    let banner = new Lunbo(
        {
            ele: '#banner',
            speed: 3,
            btnHide: true,
            imglist: ['img/web-101-101-1.jpg', 'img/web-101-101-3.jpg']
        }
    )

    banner.init();

    //验证码
    let check = new CheckCode(
        {
            ele: '#checkbox',
            ele2: '#codecon',
            num: '4',
            change: '#changecode'
        }
    )

    check.init();

    //回到顶部
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

    $('#loginbtn').on('click', function () {
        console.log(1);
        if ($('#uname').val() && $('#psw').val() && $('#checkcode').val() == $('#codecon').text().toLowerCase()) {
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
                        console.log($('#uname').val());
                        setCookie('username', $('#uname').val(), '');
                        location.href = 'index.html';
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
        location.href = 'html/shoppingcar.html';
    })

    $('#shoppingcar').on('click', function () {
        location.href = 'html/shoppingcar.html';
    })

    ajax({
        type: 'get',
        url: 'api/index.php',
        // data: {
        //     name: 'clothes'
        // },
        success: str => {
            let arr = JSON.parse(str);
            // let list = `<li><img src="${arr.list.bimg}" alt=""></li>`;
            let list = arr.list.map(function (item) {
                return `<li>
                <div class="gimg">
                    <img src="${item.bimg}" alt="">
                    <span>今日</span>
                </div>
                <div class="info">
                    <p class="gtitle">${item.title}</p>
                    <div class="gbuy">
                        <span class="price">￥${item.price}</span>
                        <a class="buy" href="###">去下单</a>
                    </div>
                </div>
            </li>`
            }).join("");
            let list2 = arr.list2.map(function (item) {
                return `<li>
                <div class="gimg">
                    <img src="${item.bimg}" alt="">
                    <span>今日</span>
                </div>
                <div class="info">
                    <p class="gtitle">${item.title}</p>
                    <div class="gbuy">
                        <span class="price">￥${item.price}</span>
                        <a class="buy" href="###">去下单</a>
                    </div>
                </div>
            </li>`
            }).join("");
            $('#clothes').html(list);
            $('#shoes').html(list2);
        }
    });
})()