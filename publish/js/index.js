$(() => {
    var carousel = $('ul.lbt');
    var  arrowLeft = $('a.prev');
    var  arrowRight = $('a.next');
    var carouselWrap = $('div.editor-pick-list');

    var num = 10; 
    var carouselWidth = 240; 
    var count = 0; 
    var timer = null;
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
    function interval() {
    timer = setInterval(move, 2000)
    }
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
    carouselWrap
    .mouseover(function () {
        clearInterval(timer)
    })
    .mouseout(interval) 
})