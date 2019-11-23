$(function () {
    // $('#header').load('indexheader.html')
    $('#footer').load('footer_area.html');
    $('h1').on('click', function () {
        location.href = '../index.html';
    })

    let str = decodeURI(location.search.slice(1));
    let arr = str.split('&');
    let name = arr[0];
    let gid = arr[1];
    let uname = getCookie('username');
    let goods = {
        title: "",
        uname: uname,
        gimg: '',
        color: '',
        size: '',
        num: 1,
        price: 0,
        sname: ''
    }

    let getdata = new Promise(resolved => {
        ajax({
            type: 'get',
            url: '../api/detailpage.php',
            data: {
                name: name,
                gid: gid
            },
            success: str => {
                resolved(str);
            }
        })
    })

    getdata.then(str => {
        // let data0 = JSON.parse(str);
        let data = JSON.parse(str).list[0];
        let htmlstr = `
                <div class="img" id="fangdajing">
                    <div id="goodsimg">
                        <div id="showimg">
                            <img class="biggerimg"
                                src="${data.bimg}"
                                alt="">
                        </div>
                        <div id="mainimg">
                            <div id="mask"></div>
                            <img class="bimg" src="${data.bimg}" alt="">
                        </div>
                        <ul>` +
            data.simg.split(';').map(function (item) {
                return `<li><img src="${item}" alt=""></li>`
            }).join('')
            + `</ul>
                    </div>
                    <div id="gn">
                        <ul>
                            <li><a href="javascript:void(0)">分享(${data.status})</a></li>
                            <li><a href="javascript:void(0)">收藏商品(${data.status})</a></li>
                            <li><a href="javascript:void(0)">加入对比</a></li>
                        </ul>
                        <a href="javascript:void(0)">举报</a>
                    </div>
                </div>
                <div class="info">
                    <p class="title">${data.title}</p>
                    <div class="pricebox">
                        <div class="priceinfo">
                            <p class="del"><span>市 场 价:</span><del>￥${data.mprice}</del></p>
                            <p class="rprice"><span>商 城 价:</span><span class="price">￥${data.price}</span></p>
                            <p class="point"><span>商品评分:</span><img src="../img/star.png" alt=""><a href="javascript:void(0)">共有${data.status}条评价</a></p>
                        </div>
                        <div class="erweima">
                            <img src="../img/erweima.png" alt="">
                            <p>客户端扫购有惊喜</p>
                        </div>
                    </div>
                    <div class="plc">
                        <span class="place">配 送 至:</span>
                        <select name="gplace" id="gplace">
                            <option value="beijing">北京</option>
                            <option value="shanghai">上海</option>
                            <option value="guangzhou">广州</option>
                        </select>
                        <span class="have">有货</span>
                        <span class="free">免运费</span>
                    </div>
                    <div class="detail">
                        <p class="color">
                            <span>颜色：</span>`+
            data.color.split(' ').map(function (item) {
                return `<a href="javascript:void(0)">${item}</a>`
            }).join('') + `
                        </p>
                        <p class="size">
                            <span>尺码：</span>`+
            data.size.split(' ').map(function (item) {
                return `<a href="javascript:void(0)">${item}</a>`
            }).join('')
            + `</p>
                        <div id="num">
                            <div class="nums">
                                <input type="text" id="buynums" value="1">
                                <div id="updown">
                                    <input type="button" id="up" value="+">
                                    <input type="button" id="down" value="-">
                                </div>
                            </div>
                            <a href="javascript:void(0)" id="intocar"><span
                                    class="iconfont iconicon-test11"></span>添加购物车</a>
                            <a href="javascript:void(0)" id="buynow">立即购买</a>
                        </div>
                    </div>
                </div>
                <div class="shop">
                    <p id="master">${data.name}</p>
                    <div id="shopinfo">
                        <p class="allpoint">综合评分<img src="../img/good.png" alt=""><span>${data.allpoint}</p>
                        <p class="shoppoint"><span>店铺动态评分</span>与行业相比</p>
                        <div class="pingfen">
                            <p>描述相符<span>5分</span></p>
                            <p>服务态度<span>4.3分</span></p>
                            <p>发货速度<span>4.3分</span></p>
                        </div>
                        <div class="other">
                            <p>联系方式：</p>
                            <p>商户保障：</p>
                            <p>保证金额：</p>
                            <p>公司名称：</p>
                            <p>所在地：</p>
                            <p class="link"><a href="JavaScript:void(0)">进入商家店铺</a><a href="JavaScript:void(0)">收藏店铺</a></p>
                        </div>
                    </div>
                    <ul>
                        <li>店铺地图</li>
                        <li>店铺二维码</li>
                    </ul>
                </div>`;
        $('#detail').html(htmlstr);

        $('.color a').eq(0).addClass('active');
        $('.size a').eq(0).addClass('active');
        goods.color = $('.color a').eq(0).text();
        goods.size = $('.size a').eq(0).text();
        goods.price = data.price * 1;
        goods.gimg = data.bimg;
        goods.title = data.title;
        goods.sname = data.name;

        $('#intocar').on('click', function () {
            if (uname) {
                console.log(goods);
                ajax({
                    type: 'get',
                    url: '../api/checkgoods.php',
                    data: {
                        title: goods.title,
                        uname: goods.uname,
                        gimg: goods.gimg,
                        color: goods.color,
                        size: goods.size,
                        num: goods.num,
                        price: goods.price,
                        sname: goods.sname
                    },
                    success: str => {
                        if (str == 'success') {
                            alert('添加成功!');
                        } else if (str == 'false') {
                            alert('添加失败!');
                        } else {
                            let fnum = JSON.parse(str).list[0].num;
                            let id = JSON.parse(str).list[0].id;
                            console.log(fnum);
                            ajax({
                                type: 'get',
                                url: '../api/intocar',
                                data: {
                                    num: goods.num * 1 + fnum * 1,
                                    id: id
                                },
                                success: str => {
                                    if (str) {
                                        alert('添加成功!');
                                    } else {
                                        alert('添加失败!');
                                    }
                                }
                            })
                        }
                    }
                })
            } else {
                alert('请登录');
                location.href = 'login.html';
            }
        })

        $('.color').on('click', 'a', function () {
            for (let item of $('.color a')) {
                item.className = '';
            }
            this.className = 'active';
            goods.color = this.innerHTML;
        })

        $('.size').on('click', 'a', function () {
            for (let item of $('.size a')) {
                item.className = '';
            }
            this.className = 'active';
            goods.size = this.innerHTML;
        })

        $('#updown').on('click', 'input', function () {
            if (this.id == 'up') {
                if ($('#buynums').val() < 10) {
                    $('#buynums').val($('#buynums').val() * 1 + 1)
                }
            } else if (this.id == 'down') {
                if ($('#buynums').val() > 1) {
                    $('#buynums').val($('#buynums').val() * 1 - 1)
                }
            }
            goods.num = $('#buynums').val() * 1;
        })


        let data2 = JSON.parse(str).list2;
        let html2 = data2.map(function (item) {
            return `<li>
                        <img src="${item.bimg}" alt="">
                        <div class="recomdetail">
                            <p class="title">${item.title}</p>
                            <p class="price">商城价:<span>￥${item.price}</span></p>
                            <a href="javascript:void(0)" index="${item.id}">立即抢购</a>
                        </div>
                    </li>`
        }).join('');
        $('#recommendlist').html(html2);

        $('.menucon .menuinfo').html(`<img src="${data.bimg}" alt="">`);



        magnifying({ wrap: "#goodsimg", showarea: "#showimg", main: "#mainimg", showimg: ".biggerimg", mask: "#mask", size: 2 });

        let cimg = document.querySelector('#goodsimg .bimg');
        let cimg2 = document.querySelector('.biggerimg');
        $('#goodsimg ul').on('mouseover', 'li', function () {
            for (let item of this.parentNode.children) {
                item.className = "";
            }
            this.classList.add("active");
            cimg2.src = cimg.src = this.children[0].src;
        })
    })

    topmenu({ ele: '.menulist', content: '.menucon' });
    $('.golistpage').eq(0).on('click', function () {
        location.href = 'listpage.html?clothes';
    })

    $('.golistpage').eq(1).on('click', function () {
        location.href = 'listpage.html?shoes';
    })

    $('.golistpage').eq(2).on('click', function () {
        location.href = 'listpage.html?suit';
    })
    $('#shoppingcar').on('click', function () {
        location.href = 'shoppingcar.html';
    })
})