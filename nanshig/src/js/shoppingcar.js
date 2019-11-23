$(function () {
    $('h1').on('click', function () {
        location.href = '../index.html';
    })

    function getindex() {
        let arr = [];//存被勾选那行的下标
        $('.checked input').each((index, item) => {
            if ($(item).prop('checked')) {
                arr.push(index);
            }
        });
        return arr;
    }

    $('#footer').load('footer_area.html');
    let uname = getCookie('username');
    ajax({
        type: 'get',
        url: '../api/getcars.php',
        data: {
            uname: uname
        },
        success: str => {
            if (str != 'false') {
                let arr = JSON.parse(str);

                let shoplist = arr.list.map(function (item) {
                    return item.sname;
                })

                console.log(unique(shoplist));
                let arr2 = arr.list;
                let html2 = '';

                for (let item of shoplist) {
                    html2 += `<tr><td class='shopname' colspan="20">商品来源：${item}</td></tr>`;
                    let thissname = item;
                    for (let item of arr2) {
                        if (item.sname == thissname) {
                            html2 += `<tr data-id="${item.id}">
                            <td class="check checked"><input type="checkbox" data-id="${item.id}"></td>
                            <td class="img"><img src="${item.gimg}" alt=""></td>
                            <td class="title">
                                <p>${item.title}<span> ${item.size} ${item.color}</span></p>
                            </td>
                            <td class="price">${item.price}</td>
                            <td class="nums">
                                <input type="button" value="-" class="down">
                                <input type="text" value="${item.num}" class="gnum">
                                <input type="button" value="+" class="up">
                            </td>
                            <td class="subtotal subtotalprice">`+ item.num * item.price + `</td>
                            <td><a href="javascript:void(0)" class="del">删除</a></td>
                        </tr>`
                        }
                    }
                }

                // let html = arr2.map(function (item) {
                //     // total += item.num * item.price;
                //     return `<tr data-id="${item.id}">
                //     <td class="check checked"><input type="checkbox" data-id="${item.id}"></td>
                //     <td class="img"><img src="${item.gimg}" alt=""></td>
                //     <td class="title">
                //         <p>${item.title}<span> ${item.size} ${item.color}</span></p>
                //     </td>
                //     <td class="price">${item.price}</td>
                //     <td class="nums">
                //         <input type="button" value="-" class="down">
                //         <input type="text" value="${item.num}" class="gnum">
                //         <input type="button" value="+" class="up">
                //     </td>
                //     <td class="subtotal subtotalprice">`+ item.num * item.price + `</td>
                //     <td><a href="javascript:void(0)" class="del">删除</a></td>
                // </tr>`;
                // }).join('');
                $('tbody').html(html2);
                $('#money').text(0);
            }

            //全选
            $('#allcheck').click(() => {
                let isok = $('#allcheck').prop('checked');
                $('.check input').prop('checked', isok);
                // total();
                totalPrice()
            });

            //反控制全选
            function checkAll() {
                let total = $('.checked input').length;
                let num = $('.checked input:checked').length;
                if (total == num) {
                    //全选了
                    $('#allcheck').prop('checked', true);
                } else {
                    $('#allcheck').prop('checked', false);
                }
            }

            $('tbody').on('click', '.checked input', () => {
                checkAll();
                // total();
                totalPrice();
            });

            $('tbody').on('click', '.del', function () {
                let id = this.parentNode.parentNode.getAttribute('data-id');
                let that = this;
                ajax({
                    type: 'get',
                    url: '../api/del.php',
                    data: {
                        id: id
                    },
                    success: str => {
                        if (str == 'success') {
                            that.parentNode.parentNode.remove();
                        } else {
                            alert('失败了')
                        }
                    }
                });
                totalPrice();
            })

            $('tbody').on('click', '.up', function () {
                let num = ($(this).parent().find('.gnum').val()) * 1;
                if (num < 10) {
                    $(this).parent().find('.gnum').val(num + 1);
                    let id = $(this).parent().parent().attr('data-id');
                    gupdate(id, num + 1);
                    lupdate(this, num + 1);
                } else {
                    alert('超出库存');
                }
                totalPrice();
            })
            $('tbody').on('click', '.down', function () {
                let num = ($(this).parent().find('.gnum').val()) * 1;
                if (num > 1) {
                    $(this).parent().find('.gnum').val(num - 1);
                    let id = $(this).parent().parent().attr('data-id');
                    gupdate(id, num - 1);
                    lupdate(this, num - 1);
                } else {
                    alert('超出库存');
                }
                totalPrice();
            })

            function gupdate(id, num) {
                ajax({
                    type: "get",
                    url: '../api/gupdate.php',
                    data: {
                        id: id,
                        num: num
                    },
                    success: str => {
                        if (str) {
                        } else {
                        }
                    }
                })
            }

            function lupdate(item, num) {
                let nnum = $(item).parent().parent().find('.price').text() * num;
                $(item).parent().parent().find('.subtotal').text(nnum);
            }

            //4.全选

            function totalPrice() {
                //统计总价
                let arr = getindex();

                //4、计算总数量和总价
                let price = 0;
                arr.forEach(item => {
                    price += $('.subtotalprice').eq(item).text() * 1;
                });
                $('#money').text(price);
            }
        }
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

    $('#paybtn').on('click', function () {
        arr = getindex();
        let price = 0;
        let htmlstr = '';
        arr.forEach(item => {
            price += $('.subtotalprice').eq(item).text() * 1;
            htmlstr += `
            <p>
                <img src="${$('.img img').eq(item).attr('src')}" alt="">
                <span>${$('.title p').eq(item).text()}</span>
                <span>￥${$('.subtotalprice').eq(item).text()}</span>
            </p>`;
            ajax({
                type: 'get',
                url: '../api/del',
                data: {
                    id: $('.img').eq(item).parent().attr('data-id')
                },
                success: str => {
                    if (str == 'false') {
                        alert('出现异常');
                    }
                }
            })
        });
        htmlstr += `<p id="zongjia">结算成功：￥${price}</p>`;
        $('#jiesuan').html(htmlstr);
        $('#jiesuan').css('display', 'block');
        setTimeout(function () {
            location.reload();
        }, 3000);
    })
})