<%--
  Created by IntelliJ IDEA.
  User: zcsks
  Date: 2024/6/17
  Time: 上午8:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>后台管理系统</title>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<%--    <link href="css/layui.css" rel="stylesheet">--%>
<%--    <script src="js/layui.js"></script>--%>
    <link href="//unpkg.com/layui@2.9.13/dist/css/layui.css" rel="stylesheet">
    <script src="//unpkg.com/layui@2.9.13/dist/layui.js"></script>
</head>
<body>
<div class="layui-layout layui-layout-admin">
    <!--  头部内容-->
    <div class="layui-header">
        <div class="layui-logo  layui-bg-black"><i class="layui-icon layui-icon-form"></i><span>校园订餐管理系统</span>
        </div>
        <!-- 头部区域（可配合layui 已有的水平导航） -->
        <ul class="layui-nav layui-layout-left">
            <!-- 移动端显示 -->
            <li class="layui-nav-item layui-show-xs-inline-block " lay-header-event="menuLeft">
                <!--        上面li标签和原来复制下来的不一样-->
                <i class="layui-icon layui-icon-spread-left" id="icon"></i>
            </li>
            <li class="layui-nav-item layui-hide-xs"><a href="/foreground/foreBody.jsp">前台首页</a></li>
            <li class="layui-nav-item layui-hide-xs"><a href="javascript:;">后台首页</a></li>
            <li class="layui-nav-item">
                <a href="javascript:;">更多功能</a>
                <dl class="layui-nav-child">
                    <dd><a href="javascript:;">菜单收藏</a></dd>
                    <dd><a href="javascript:;">浏览足迹</a></dd>
                    <dd><a href="javascript:;">我的消息</a></dd>
                </dl>
            </li>
        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item layui-hide layui-show-sm-inline-block">
                <a href="javascript:;">
                    <img src="/image/Mining-Railcar.png" class="layui-nav-img">
                    我的账号
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="/personage/own.jsp">个人信息</a></dd>
                    <dd><a href="javascript:;">设置</a></dd>
                    <dd><a href="javascript:;">退出登录</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item" lay-header-event="menuRight" lay-unselect>
                <a href="javascript:;">
                    <img src="img/Mining-Railcar.png" title="购物车">
                </a>
            </li>
        </ul>
    </div>

    <!--  主体内容 -->
    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->

            <ul class="layui-nav layui-nav-tree" lay-filter="test">

                <li class="layui-nav-item layui-nav-itemed">
                    <a class="" href="javascript:;">
                        <i class="layui-icon layui-icon-spread-left"></i>
                        <span>用户管理</span>
                    </a>
                    <dl class="layui-nav-child">
                        <!--            这里的    lay-href   改成自己点击要跳转的页面的路径-->
                        <dd><a href="javascript:;" class="link-active" lay-href="allStu.html" data-id="1"
                               data-title="页面1"><i class="layui-icon layui-icon-spread-left"></i>
                            <span>用户列表</span>
                            </a>
                        </dd>
                    </dl>
                </li>


                <li class="layui-nav-item">
                    <a href="javascript:;"><i class="layui-icon layui-icon-spread-left"></i>
                        <span>商品管理</span></a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;" class="link-active" lay-href="page1.html" data-id="2"
                               data-title="页面2"><i class="layui-icon layui-icon-spread-left"></i>
                                <span>菜品列表</span>
                            </a>
                        </dd>
                        <dd>
                            <a href="javascript:;" class="link-active" lay-href="page1.html" data-id="2"
                               data-title="页面2"><i class="layui-icon layui-icon-spread-left"></i>
                                <span>商品分类</span>
                            </a>
                        </dd>
                    </dl>
                </li>

                <li class="layui-nav-item">
                    <a href="javascript:;"><i class="layui-icon layui-icon-spread-left"></i>
                        <span>反馈管理</span></a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;" class="link-active" lay-href="page1.html" data-id="2"
                               data-title="页面2"><i class="layui-icon layui-icon-spread-left"></i>
                            <span>商品评价</span>
                            </a>
                        </dd>
                        <dd><a href="javascript:;" class="link-active" lay-href="page1.html" data-id="2"
                               data-title="页面2"><i class="layui-icon layui-icon-spread-left"></i>
                            <span>商户评价</span>
                        </a>
                        </dd>
                        <dd><a href="javascript:;" class="link-active" lay-href="page1.html" data-id="2"
                               data-title="页面2"><i class="layui-icon layui-icon-spread-left"></i>
                            <span>咨询建议</span>
                        </a>
                        </dd>
                    </dl>
                </li>

                <li class="layui-nav-item">
                    <a href="javascript:;"><i class="layui-icon layui-icon-spread-left"></i>
                        <span>订单管理</span></a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;" class="link-active" lay-href="page1.html" data-id="2"
                               data-title="页面2"><i class="layui-icon layui-icon-spread-left"></i>
                            <span>订单列表</span>
                            </a>
                        </dd>
                    </dl>
                </li>

                <li class="layui-nav-item">
                    <a href="javascript:;"><i class="layui-icon layui-icon-spread-left"></i>
                        <span>管理员管理</span></a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;" class="link-active" lay-href="page1.html" data-id="2"
                               data-title="页面2"><i class="layui-icon layui-icon-spread-left"></i>
                            <span>管理员列表</span>
                            </a>
                        </dd>
                    </dl>
                </li>
            </ul>
        </div>
    </div>


    <div class="layui-body">
        <div class="layui-tab" lay-filter="tables" lay-allowclose="true">
            <ul class="layui-tab-title">
               这是测试
            </ul>
            <div class="layui-tab-content"></div>
        </div>
        <!-- 内容主体区域 -->

        <div class="layui-footer">
           时间戳位置
        </div>
    </div>

</div>

<script>
    //JS
    //  使用了layui中的 三个模块
    layui.use(['element', 'layer', 'util'], function () {
        var element = layui.element;
        var layer = layui.layer;
        var util = layui.util;
        var $ = layui.$;
        var isShow = true;

        //头部事件
        util.event('lay-header-event', {
            menuLeft: function (othis) { // 左侧菜单事件
                //定义一个标志位
                //选择出所有的span，并判断是不是hidden,用来隐藏icon后面的span里面的内容，而icon不隐藏
                $('.layui-nav-item span').each(function () {
                    if ($(this).is(':hidden')) {
                        $(this).show();
                    } else {
                        $(this).hide();

                    };
                });
                $('.layui-header span').each(function () {//同上
                    if ($(this).is(':hidden')) {
                        $(this).show();
                    } else {
                        $(this).hide();
                    };
                });

                //判断isshow的状态
                if (isShow) {//收起来
                    $('.layui-side.layui-bg-black').width(60); //设置宽度
                    $('.layui-logo').width(60);
                    // $('.kit-side-fold i').css('margin-right', '70%');  //修改图标的位置
                    $('#icon').removeClass("layui-icon-spread-left");  //修改图标
                    $('#icon').addClass("layui-icon-shrink-right");  //修改图标
                    $('.layui-side li').removeClass("layui-nav-itemed");//取消选中二级导航栏
                    //将footer和body的宽度修改
                    $('.layui-layout-left').css('left', 60 + 'px');
                    $('.layui-body').css('left', 60 + 'px');
                    $('.layui-footer').css('left', 60 + 'px');
                    //将二级导航栏隐藏
                    // $('dd span').each(function () {
                    //   $(this).hide();
                    // });
                    //修改标志位
                    isShow = false;
                } else {//展开来
                    $('.layui-side.layui-bg-black').width(200);
                    $('.layui-logo').width(200);
                    //  $('.kit-side-fold i').css('margin-right', '10%');
                    $('.layui-layout-left').css('left', 200 + 'px');
                    $('.layui-body').css('left', 200 + 'px');
                    $('.layui-footer').css('left', 200 + 'px');
                    $('dd span').each(function () {
                        $(this).show();
                    });
                    $('#icon').addClass("layui-icon-spread-left");  //修改图标
                    $('#icon').removeClass("layui-icon-shrink-right");  //修改图标
                    isShow = true;
                };
            },
            menuRight: function () {  // 右侧菜单事件
                layer.open({
                    type: 1,
                    title: '更多',
                    content: '<div style="padding: 15px;">处理右侧面板的操作</div>',
                    area: ['260px', '100%'],
                    offset: 'rt', // 右上角
                    anim: 'slideLeft', // 从右侧抽屉滑出
                    shadeClose: true,
                    scrollbar: false
                });
            }
        });
    });
</script>

<script>//JavaScript代码区域
layui.use(['element', 'layer', 'jquery'], function () {
    var element = layui.element;
    var $ = layui.jquery;
    //左侧菜单点击事件
    $('.link-active').on('click', function () {
        var dataid = $(this);

        //判断tab是否已经存在
        var isExist = false;
        $.each($('.layui-tab-title li[lay-id]'), function () {
            //判断主体是否存在与点击tab相同的lay-id
            if ($(this).attr('lay-id') == dataid.attr("data-id")) {
                isExist = true;
            }
        });
        //不存在，增加tab
        if (isExist == false) {
            tabFunction.tabAdd(dataid.attr('lay-href'), dataid.attr('data-id'), dataid.attr('data-title'));
        }
        //存在tab，此时转到要打开的tab就好，不需要新增
        tabFunction.tabChange(dataid.attr('data-id'));

    });


    //定义函数 绑定增加tab，删除tab，切换tab几项事件
    var tabFunction = {
        //新增tab url 页面地址 id 对应data-id name标题
        tabAdd: function (url, id, name) {
            element.tabAdd('tables', {
                title: name,
                content: '<iframe data-frameid="' + id + '" scrolling="auto" frameborder="0" src="' + url + '" style="width:100%;height:800px"></iframe>',
                id: id
            });
        },
        //根据id切换tab
        tabChange: function (id) {
            element.tabChange('tables', id)
        },
        //关闭指定的tab
        tabDelete: function (id) {
            element.tabDelete('tables', id)
        }
    }
});
</script>
</body>
</html>
