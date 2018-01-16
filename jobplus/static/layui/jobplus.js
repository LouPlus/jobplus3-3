// 导航栏模块
layui.use('element', function () {
    var element = layui.element;
});
// 轮播图模块
layui.use('carousel', function () {
    var carousel = layui.carousel;
    //建造实例
    carousel.render({
        elem: '#carousel',
        width: '100%',
        height: 200,
        arrow: 'none',
        anim: 'fade'
        //,anim: 'updown' //切换动画方式
    });
});
