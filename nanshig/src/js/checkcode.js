class CheckCode {
    constructor(opt) {
        this.defaultOpt = {};
        Object.assign(this.defaultOpt, opt);
    }

    init() {
        this.box = document.querySelector(this.defaultOpt.ele);
        this.input = this.box.querySelector('input');
        this.checkcontent = this.box.querySelector(this.defaultOpt.ele2);
        this.change = this.box.querySelector(this.defaultOpt.change);

        this.getcode();

        this.change.onclick = () => {
            this.getcode();
        }
    }

    getcode() {
        let str = "0123456789zxcvbnmasdfghjklqwertyuiopZXCVBNMASDFGHJKLQWERTYUIOP";
        let cstr = '';
        for (var i = 0; i < this.defaultOpt.num; i++) {
            cstr += str[parseInt(Math.random() * 62)];
        }
        this.checkcontent.innerHTML = cstr;
    }
}