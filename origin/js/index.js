$(() => {
    var carousel = $('ul.lbt');
    var  arrowLeft = $('a.prev');
    var  arrowRight = $('a.next');
    var carouselWrap = $('div.editor-pick-list');

    var num = 10; 
    var carouselWidth = 240; 
    var count = 0; 
    var timer = null;
    // 动画 主函数
    function move(flag) {
    if (!flag) {
        count++
        l = -carouselWidth * count
        if (count === num - 1) {
        carousel.finish().animate({
            left: l
        }, 500, function () {
            count = 1
            $(this).css('left', -carouselWidth * count)
        })
        } else {
        carousel.finish().animate({
            left: l
        }, 500)
        }
    } else {
        count--
        l = -carouselWidth * count
        if (count === 0) {
        carousel.finish().animate({
            left: l
        }, 500, function () {
            count = num - 2
            $(this).css('left', -carouselWidth * count)
        })
        } else {
        carousel.finish().animate({
            left: l
        }, 500)
        }
    }
    }
    // 自动轮播
    function interval() {
    timer = setInterval(move, 2000)
    }
    //设置左右箭头的点击事件
    arrowLeft.click(function (e) {
    clearInterval(timer)
    e.preventDefault()
    move(true)
    })
    arrowRight.click(function (e) {
    clearInterval(timer)
    e.preventDefault()
    move()
    })
    interval()
    // 鼠标移入  暂停 自动轮播
    carouselWrap
    .mouseover(function () {
        clearInterval(timer)
    })
    .mouseout(interval)   // 鼠标移开 记录轮播
})