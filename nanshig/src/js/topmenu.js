//吸顶菜单
function topmenu(opt) {
    let menu = document.querySelector(opt.ele);
    let content = document.querySelector(opt.content);
    // let scroll = menu.offsetTop + 173;
    let scroll = menu.offsetTop;

    menu.children[0].className = "active";
    content.children[0].style.display = "block";

    window.onscroll = () => {
        if (window.scrollY >= scroll) {
            menu.style.position = "fixed";
            content.style.position = "relative";
            menu.style.top = 0;
        } else {
            menu.style.position = content.style.position = "static";
        }
    }

    menu.onclick = ev => {
        window.scrollTo(0, scroll);
        for (let j = 0; j < menu.children.length; j++) {
            menu.children[j].index = content.children[j].index = j;
            menu.children[j].className = "";
            content.children[j].style.display = "";
        }
        menu.children[ev.target.index].className = "active";
        content.children[ev.target.index].style.display = "block";
    }
}