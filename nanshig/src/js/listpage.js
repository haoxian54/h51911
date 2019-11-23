$(function () {
    $('h1').on('click', function () {
        location.href = '../index.html';
    })

    let name = decodeURI(location.search.slice(1));
    let ipage = 1;
    let pages = 8;
    let rank = 'id';
    function showlist() {
        ajax({
            type: 'get',
            url: '../api/listpage.php',
            data: {
                name: name,
                ipage: ipage,
                pages: pages,
                rank: rank
            },
            success: str => {
                let arr = JSON.parse(str);
                // let list = `<li><img src="${arr.list.bimg}" alt=""></li>`;
                let list = arr.list.map(function (item) {
                    let simglist = item.simg.split(';').map(function (item) {
                        return `<li><img src="${item}" alt=""></li>`;
                    }).join('');
                    return `
                <li class="items" index="${item.id}">
                    <div class="itemscon">
                        <div class="goodsimg"><img src="${item.bimg}" alt=""></div>
                        <div class="goodsinfo">
                            <ul class="simg">`+ simglist + `</ul>
                            <p class="title"  index="${item.id}"><a href="javascript:void(0)">${item.title}</a></p>
                            <div class="pricebox">
                                <p>
                                    <span class="price">￥${item.price}</span>
                                    <del class="mprice">￥${item.mprice}</del>
                                </p>
                                <div>
                                    <img src="../img/star.png" alt=""><br>
                                    <a href="javascript:void(0)">
                                        <input type="checkbox">加入对比
                                    </a>
                                </div>
                            </div>
                            <ul class="sell">
                                <li>
                                    <p>${item.status}</p>
                                    <p>商品销量</p>
                                </li>
                                <li>
                                    <p>${item.status}</p>
                                    <p>用户评论</p>
                                </li>
                            </ul>
                            <p class="master">
                                <a href="javascript:void(0)">${item.name}</a>
                            </p>
                            <a href="javascript:void(0)" class="addcar"><span
                                    class="iconfont iconicon-test11"></span>加入购物车</a>
                        </div>
                    </div>
                </li>`
                }).join("");
                $('#goodslist').html(list);
                let num = Math.ceil(arr.num / pages);
                let pagesstr = '';
                for (let i = 0; i < num; i++) {
                    pagesstr += `<li>${i + 1}</li>`
                }
                $('#pagenum').html(pagesstr).children().eq(ipage - 1).addClass('active');

                let list2 = arr.list2.map(function (item) {
                    return `<li>
                        <img src="${item.bimg}" alt="">
                        <div class="recomdetail">
                            <p class="title">${item.title}</p>
                            <p class="price">商城价:<span>￥${item.price}</span></p>
                            <a href="javascript:void(0)" index="${item.id}">立即抢购</a>
                        </div>
                    </li>`
                }).join('');
                $('#recommendlist').html(list2);
                $('#recommendlist').on('click', 'a', function () {
                    location.href = 'detailpage.html?' + decodeURI(location.search.slice(1)) + '&' + this.attributes['index'].nodeValue;
                })
            }
        });
    }

    $('#next').on('click', function () {
        if (ipage < $('#pagenum').children().length) {
            $('#prev').removeClass('ui-state-disabled');
            $('#firstpage').removeClass('ui-state-disabled');
            ipage++;
            showlist();
            if (ipage == $('#pagenum').children().length) {
                $('#next').addClass('ui-state-disabled');
                $('#lastpage').addClass('ui-state-disabled');
            }
        }
    })

    $('#prev').on('click', function () {
        if (ipage > 1) {
            $('#next').removeClass('ui-state-disabled');
            $('#lastpage').removeClass('ui-state-disabled');
            ipage--;
            showlist();
            if (ipage == 1) {
                $('#prev').addClass('ui-state-disabled');
                $('#firstpage').addClass('ui-state-disabled');
            }
        }
    })


    $('#firstpage').on('click', function () {
        ipage = 1;
        showlist();
        $('#firstpage').addClass('ui-state-disabled');
        $('#prev').addClass('ui-state-disabled');
        $('#lastpage').removeClass('ui-state-disabled');
        $('#next').removeClass('ui-state-disabled');
    })

    $('#lastpage').on('click', function () {
        ipage = $('#pagenum').children().length
        showlist();
        $('#lastpage').addClass('ui-state-disabled');
        $('#next').addClass('ui-state-disabled');
        $('#firstpage').removeClass('ui-state-disabled');
        $('#prev').removeClass('ui-state-disabled');
    })

    $('#pagenum').on('click', function (ev) {
        if (ev.target.tagName == 'LI' && ev.target.innerHTML != ipage) {
            $('#pagenum').children().eq(ipage - 1).removeClass('active');
            ipage = parseInt(ev.target.innerHTML);
            // $('#pagenum').children().eq(ipage - 1).addClass('active');
            showlist();
        }
        if (ev.target.innerHTML != 1 && ev.target.innerHTML != $('#pagenum').children().length) {
            $('#lastpage').removeClass('ui-state-disabled');
            $('#next').removeClass('ui-state-disabled');
            $('#prev').removeClass('ui-state-disabled');
            $('#firstpage').removeClass('ui-state-disabled');
        } else if (ev.target.innerHTML == 1) {
            $('#firstpage').addClass('ui-state-disabled');
            $('#prev').addClass('ui-state-disabled');
        } else if (ev.target.innerHTML == $('#pagenum').children().length) {
            $('#lastpage').addClass('ui-state-disabled');
            $('#next').addClass('ui-state-disabled');
        }
    })
    showlist();

    $('#rprice').on('click', function () {
        rank = 'price';
        $('#normal').removeClass('active');
        $('#rprice').addClass('active');
        showlist();
    })

    $('#normal').on('click', function () {
        rank = 'id';
        $('#rprice').removeClass('active');
        $('#normal').addClass('active');
        showlist();
    })

    $('#goodslist').on('click', '.title', function () {
        location.href = 'detailpage.html?' + name + '&' + this.attributes['index'].nodeValue;
    })

    $('#goodslist').on('click', '.addcar', function () {
        location.href = 'detailpage.html?' + name + '&' + this.parentNode.parentNode.parentNode.attributes['index'].nodeValue;
    })

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