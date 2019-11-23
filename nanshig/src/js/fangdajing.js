function magnifying(opt) {
    let defaultOpt = {
        size: 2
    }
    Object.assign(defaultOpt, opt);
    var wrap = document.querySelector(defaultOpt.wrap);
    var showarea = wrap.querySelector(defaultOpt.showarea);
    var main = wrap.querySelector(defaultOpt.main);
    var showimg = wrap.querySelector(defaultOpt.showimg);
    var mask = wrap.querySelector(defaultOpt.mask);

    mask.style.width = main.offsetWidth / defaultOpt.size + "px";
    mask.style.height = main.offsetHeight / defaultOpt.size + "px";
    showimg.style.width = defaultOpt.size * 100 + "%";
    showimg.style.height = defaultOpt.size * 100 + "%";
    console.log
    //放大镜
    //遮罩层、放大镜出现和隐藏
    main.onmouseover = function () {
        mask.style.display = "block";
        showarea.style.display = "block";
    }
    main.onmouseout = function () {
        mask.style.display = "none";
        showarea.style.display = "none";
    }

    //遮罩层运动
    main.onmousemove = function (ev) {
        var left = ev.pageX - wrap.offsetLeft - mask.offsetWidth / 2;
        var top = ev.pageY - wrap.offsetTop - mask.offsetHeight / 2;
        //设置临界值
        if (left <= 0) {
            left = 0;
        } else if (left >= main.offsetWidth - mask.offsetWidth) {
            left = wrap.offsetWidth - mask.offsetWidth;
        }
        if (top <= 0) {
            top = 0;
        } else if (top >= main.offsetHeight - mask.offsetHeight) {
            top = main.offsetHeight - mask.offsetHeight;
        }

        mask.style.left = left + "px";
        mask.style.top = top + "px";

        showimg.style.left = - left * (showimg.offsetWidth - showarea.offsetWidth) / (wrap.offsetWidth - mask.offsetWidth) + "px";

        showimg.style.top = - top * (showimg.offsetHeight - showarea.offsetHeight) / (main.offsetHeight - mask.offsetHeight) + "px";
    }
}