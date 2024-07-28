<%--
  Created by IntelliJ IDEA.
  User: zcsks
  Date: 2024/6/19
  Time: 上午8:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Demo</title>

    <link href="/css/layui.css" rel="stylesheet">
    <script src="/js/layui.js"></script>
    <link href="//unpkg.com/layui@2.9.13/dist/css/layui.css" rel="stylesheet">
    <script src="//unpkg.com/layui@2.9.13/dist/layui.js"></script>
</head>
<body>
<div class="layui-container">
    <div class="layui-row layui-col-space1">
        <div class="layui-col-md4">
            <a title="后台管理系统界面" href="#"><i class="layui-icon layui-icon-home" style="font-size:40px;"></i></a>
        </div>
        <div class="layui-col-md4">
<%--            <hr class="ws-space-16">--%>
            <div class="layui-form-item">
                <div class="layui-input-group">
                    <div class="layui-input-prefix">
                        <b>美食搜索</b>
                    </div>
                    <input type="text" placeholder="懒人直达==>" class="layui-input">
                    <div class="layui-input-split layui-input-suffix" style="cursor: pointer;">
                        <i class="layui-icon layui-icon-search"></i>
                    </div>
                </div>
            </div>

        </div>
        <div class="layui-col-md4">
            <button class="layui-btn demo-dropdown-base" id="ID-dropdown-demo-reload">
                <span>更多</span>
                <i class="layui-icon layui-icon-down layui-font-12"></i>
            </button>
        </div>
    </div>

    <div class="layui-row layui-col-space5">
        <div class="layui-col-md12">
            <div class="layui-carousel" id="ID-carousel-demo-1">
                <div carousel-item>
                    <div><a href="" title=""></a></div>
                    <div><a href="" title=""></a></div>
                    <div><a href="" title=""></a></div>
                    <div><a href="" title=""></a></div>
                    <div><a href="" title=""></a></div>
                </div>
            </div>
        </div>
    </div>

    <div class="layui-row layui-col-space10">
        <div class="layui-col-md9">
            <div class="grid-demo grid-demo-bg1">9/12</div>
        </div>
        <div class="layui-col-md3">
            <div class="grid-demo">3/12</div>
        </div>
    </div>

    <div class="layui-row layui-col-space15">
        <div class="layui-col-md7">
            <div class="grid-demo grid-demo-bg1">7/12</div>
        </div>
        <div class="layui-col-md5">
            <div class="grid-demo">5/12</div>
        </div>
    </div>

    <div class="layui-row layui-col-space30">
        <div class="layui-col-md7">
            <div class="grid-demo grid-demo-bg1">7/12</div>
        </div>
        <div class="layui-col-md5">
            <div class="grid-demo">5/12</div>
        </div>
    </div>
</div>
</body>
</html>
<script>
    layui.use(function(){
        var form = layui.form;
        // 输入框点缀事件 - 搜索示例
        form.on('input-affix(search)', function(data){
            var elem = data.elem; // 输入框
            var value = elem.value; // 输入框的值
            if(!value){
                layer.msg('请输入搜索内容');
                return elem.focus()
            };
            // 模拟搜索跳转
            location.href = '?keywords='+ value + '&_'+ new Date().getTime() +'#affix-custom';
        });
    });

    layui.use(function(){
        var element = layui.element;
        var layer = layui.layer;
        // 导航点击事件
        element.on('nav(demo-filter-nav)', function(elem){
            console.log(elem); // 得到当前点击的元素 jQuery 对象
            layer.msg(elem.text());
        });
    });

    layui.use(function(){
        var dropdown = layui.dropdown;
        // 渲染
        dropdown.render({
            elem: '.demo-dropdown-base', // 绑定元素选择器，此处指向 class 可同时绑定多个元素
            data: [{
                title: '个人中心',
                id: 100,
                href:"/index.jsp"
            },{
                title: '退出登录',
                id: 101,
                href: "/query"
            }]
        });
    });

    layui.use(function(){
        var carousel = layui.carousel;
        // 渲染 - 常规轮播
        carousel.render({
            elem: '#ID-carousel-demo-1',
            width: 'auto'
        });

        // 渲染 - 设置时间间隔、动画类型、宽高度等属性
        carousel.render({
            elem: '#ID-carousel-demo-2',
            interval: 1800,
            anim: 'fade',
            width: 'auto',
            height: '120px'
        });
    });
</script>