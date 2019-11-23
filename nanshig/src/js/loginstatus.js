$(function () {
    let user = getCookie('username');
    if (user) {
        $('#userarea').html(`
    欢迎您~
    <li><a href="JavaScript:void(0)" class="usern">${user}</a></li>
    <li><a href="JavaScript:void(0)">我的订单</a></li>
    <li><a href="JavaScript:void(0)">代付款订单</a></li>
    <li><a href="JavaScript:void(0)">待确认收货</a></li>
    <li><a href="JavaScript:void(0)">待评价交易</a></li>
    <li><a href="JavaScript:void(0)">我的收藏</a></li>
    <li><a href="JavaScript:void(0)" id="loginout">[退出]</a></li>
    `)

        $('#loginout').on('click', function () {
            removeCookie('username');
            location.reload();
        })

        $('.toolstxt').eq(0).text('已登录');
        $('.login').off('click')
    }
})