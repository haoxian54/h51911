//回到顶部
function gotop(opt) {
    let defaultOpt = {//默认
        hide: false,
        scrollY: 200,
        speed: 6
    }
    Object.assign(defaultOpt, opt);
    let gotop = document.querySelector(defaultOpt.ele);
    if (defaultOpt.hide) {
        window.onscroll = () => {
            if (window.scrollY >= defaultOpt.scrollY) {
                gotop.style.display = "block";
            } else {
                gotop.style.display = "none";
            }
        }
    }
    gotop.onclick = () => {
        let y = window.scrollY;
        let timer = setInterval(function () {
            let speed = Math.ceil(y / defaultOpt.speed);
            y -= speed;
            if (window.scrollY == 0) {
                clearInterval(timer);
            }
            window.scrollTo(0, y)
        }, 30)
    }
}