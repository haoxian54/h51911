class Lunbo {
    constructor(opt) {
        this.defaultOpt = {
            speed: 2,
            btnHide: false
        }
        this.now = 0;
        Object.assign(this.defaultOpt, opt);
    }

    init() {
        this.box = document.querySelector(this.defaultOpt.ele);
        this.imglist = this.box.querySelector('#imglist');
        this.page = this.box.querySelector('#page');
        this.nextbtn = this.box.querySelector('#nextbtn');
        this.prevbtn = this.box.querySelector('#prevbtn');
        this.btn = this.box.querySelector('#btn');
        this.timer = null;
        this.temp = 0;

        this.creat();
        // this.setData();
        this.move();
        this.stop();

        this.nextbtn.onclick = () => {
            this.next();
        }
        this.prevbtn.onclick = () => {
            this.prev();
        }
        this.page.onclick = ev => {
            this.change(ev.target);
        }

        if (this.defaultOpt.btnHide) {
            this.hide();
        }
    }

    creat() {
        //渲染数据
        let str = '';
        let str2 = '';
        this.defaultOpt.imglist.forEach((item, index) => {
            str += `<li style="background-image: url(${item})";></li>`;
            str2 += `<li index="${index}"></li>`
        });
        this.imglist.innerHTML = str;
        this.page.innerHTML = str2;
        this.imglist.children[0].className = 'active';
        this.page.children[0].className = 'active';
    }

    move() {
        this.timer = setInterval(() => {
            this.next();
        }, this.defaultOpt.speed * 1000);
    }

    stop() {
        this.box.onmouseover = () => {
            clearInterval(this.timer);
        }
        this.box.onmouseout = () => {
            clearInterval(this.timer);
            this.move();
        }
    }

    next() {
        this.temp = this.now;
        this.now++;
        this.show();
    }

    prev() {
        this.temp = this.now;
        this.now--;
        this.show();
    }

    show() {
        // console.log(this.temp)
        if (this.now >= this.imglist.children.length) {
            this.now = 0;
        }
        if (this.now < 0) {
            this.now = this.imglist.children.length - 1;
        }
        this.imglist.children[this.temp].className = '';
        this.imglist.children[this.now].className = 'active';
        this.follow();
    }

    follow() {
        for (let item of this.page.children) {
            item.className = '';
        }
        this.page.children[this.now].className = 'active';
    }

    change(target) {
        if (target.tagName == 'LI') {
            // console.log(target.getAttribute("index"));
            this.temp = this.now;
            this.now = target.getAttribute("index");
            console.log(this.now);
            this.show();
        }
    }

    hide() {
        this.btn.onmousemove = ev => {
            let ex = ev.pageX - this.btn.offsetLeft + this.btn.offsetWidth / 2;
            if (ex <= 80) {
                this.prevbtn.style.opacity = '1';
            } else if (ex >= 1116) {
                this.nextbtn.style.opacity = '1';
            } else {
                this.prevbtn.style.opacity = '';
                this.nextbtn.style.opacity = '';
            }
        }
        this.btn.onmouseout = () => {
            this.prevbtn.style.opacity = '';
            this.nextbtn.style.opacity = '';
        }
    }
}