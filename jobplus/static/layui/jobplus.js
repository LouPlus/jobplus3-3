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

// 表单模块
layui.use('form', function () {
    var form = layui.form;
    //监听提交
    form.on('submit(formDemo)', function (data) {
        layer.msg(JSON.stringify(data.field));
        return false;
    });
});

// 弹出层
layui.use('layer', function () {
    var layer = layui.layer;
    // layer.msg('欢迎使用 JobPlus');
}); 
