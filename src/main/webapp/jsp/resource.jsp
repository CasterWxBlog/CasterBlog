<%--
  Created by IntelliJ IDEA.
  User: 13252
  Date: 2018/11/30
  Time: 9:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; Charset=gb2312">
    <meta http-equiv="Content-Language" content="zh-CN">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <title>CasterWx - 一群肥宅的博客网站</title>
    <link rel="shortcut icon" href="../images/Logo_40.png" type="image/x-icon">
    <!--Layui-->
    <link href="../plug/layui/css/layui.css" rel="stylesheet" />
    <!--font-awesome-->
    <link href="../plug/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <!--全局样式表-->
    <link href="../css/global.css" rel="stylesheet" />
    <!-- 本页样式表 -->
    <link href="../css/resource.css" rel="stylesheet" />
</head>
<body>
<!-- 导航 -->
<nav class="blog-nav layui-header">
    <div class="blog-container">
        <!-- QQ互联登陆 -->
        <a href="javascript:;" class="blog-user">
            <i class="fa fa-qq"></i>
        </a>
        <a href="javascript:;" class="blog-user layui-hide">
            <img src="../images/Absolutely.jpg" alt="Absolutely" title="Absolutely" />
        </a>
        <!-- CasterWx -->
        <a class="blog-logo" href="/home">CasterWx</a>
        <!-- 导航菜单 -->
        <ul class="layui-nav" lay-filter="nav">
            <li class="layui-nav-item layui-this">
                <a href="/home"><i class="fa fa-home fa-fw"></i>&nbsp;网站首页</a>
            </li>
            <li class="layui-nav-item">
                <a href="/article"><i class="fa fa-file-text fa-fw"></i>&nbsp;文章专栏</a>
            </li>
            <li class="layui-nav-item">
                <a href="/resource"><i class="fa fa-tags fa-fw"></i>&nbsp;资源分享</a>
            </li>
            <li class="layui-nav-item">
                <a href="/timeline"><i class="fa fa-hourglass-half fa-fw"></i>&nbsp;点点滴滴</a>
            </li>
            <li class="layui-nav-item">
                <a href="/about"><i class="fa fa-info fa-fw"></i>&nbsp;关于本站</a>
            </li>
        </ul>
        <!-- 手机和平板的导航开关 -->
        <a class="blog-navicon" href="javascript:;">
            <i class="fa fa-navicon"></i>
        </a>
    </div>
</nav>
<!-- 主体（一般只改变这里的内容） -->
<div class="blog-body">
    <div class="blog-container">
        <blockquote class="layui-elem-quote sitemap layui-breadcrumb shadow">
            <a href="/home" title="网站首页">网站首页</a>
            <a><cite>资源分享</cite></a>
        </blockquote>
        <div class="blog-main">
            <div class="blog-main">
                <div class="child-nav shadow">
                    <span class="child-nav-btn child-nav-btn-this">全部</span>
                    <span class="child-nav-btn">源码</span>
                    <span class="child-nav-btn">工具</span>
                    <span class="child-nav-btn">电子书</span>
                </div>
                <div class="resource-main">
                    <div class="resource shadow">
                        <div class="resource-cover">
                            <a href="javascript:layer.msg(&#39;这里填演示地址&#39;)" target="_blank">
                                <img src="../images/cover/201703051349045432.jpg" alt="时光轴" />
                            </a>
                        </div>
                        <h1 class="resource-title"><a href="javascript:layer.msg(&#39;这里填演示地址&#39;)" target="_blank">时光轴</a></h1>
                        <p class="resource-abstract">本博客使用的时光轴的源码，手工打造！</p>
                        <div class="resource-info">
                            <span class="category"><a href="javascript:layer.msg(&#39;这里跳转到相应分类&#39;)"><i class="fa fa-tags fa-fw"></i>&nbsp;源码</a></span>
                            <span class="author"><i class="fa fa-user fa-fw"></i>Absolutely</span>
                            <div class="clear"></div>
                        </div>
                        <div class="resource-footer">
                            <a class="layui-btn layui-btn-small layui-btn-primary" href="javascript:layer.msg(&#39;这里填演示地址&#39;)" target="_blank"><i class="fa fa-eye fa-fw"></i>演示</a>
                            <a class="layui-btn layui-btn-small layui-btn-primary" href="javascript:layer.msg(&#39;这里填下载地址&#39;)" target="_blank"><i class="fa fa-download fa-fw"></i>下载</a>
                        </div>
                    </div>
                    <div class="resource shadow">
                        <div class="resource-cover">
                            <a href="javascript:layer.msg(&#39;这里填演示地址&#39;)" target="_blank">
                                <img src="../images/cover/201703051349045432.jpg" alt="时光轴" />
                            </a>
                        </div>
                        <h1 class="resource-title"><a href="javascript:layer.msg(&#39;这里填演示地址&#39;)" target="_blank">时光轴</a></h1>
                        <p class="resource-abstract">本博客使用的时光轴的源码，手工打造！</p>
                        <div class="resource-info">
                            <span class="category"><a href="javascript:layer.msg(&#39;这里跳转到相应分类&#39;)"><i class="fa fa-tags fa-fw"></i>&nbsp;源码</a></span>
                            <span class="author"><i class="fa fa-user fa-fw"></i>Absolutely</span>
                            <div class="clear"></div>
                        </div>
                        <div class="resource-footer">
                            <a class="layui-btn layui-btn-small layui-btn-primary" href="javascript:layer.msg(&#39;这里填演示地址&#39;)" target="_blank"><i class="fa fa-eye fa-fw"></i>演示</a>
                            <a class="layui-btn layui-btn-small layui-btn-primary" href="javascript:layer.msg(&#39;这里填下载地址&#39;)" target="_blank"><i class="fa fa-download fa-fw"></i>下载</a>
                        </div>
                    </div>
                    <div class="resource shadow">
                        <div class="resource-cover">
                            <a href="javascript:layer.msg(&#39;这里填演示地址&#39;)" target="_blank">
                                <img src="../images/cover/201703051349045432.jpg" alt="时光轴" />
                            </a>
                        </div>
                        <h1 class="resource-title"><a href="javascript:layer.msg(&#39;这里填演示地址&#39;)" target="_blank">时光轴</a></h1>
                        <p class="resource-abstract">本博客使用的时光轴的源码，手工打造！</p>
                        <div class="resource-info">
                            <span class="category"><a href="javascript:layer.msg(&#39;这里跳转到相应分类&#39;)"><i class="fa fa-tags fa-fw"></i>&nbsp;源码</a></span>
                            <span class="author"><i class="fa fa-user fa-fw"></i>Absolutely</span>
                            <div class="clear"></div>
                        </div>
                        <div class="resource-footer">
                            <a class="layui-btn layui-btn-small layui-btn-primary" href="javascript:layer.msg(&#39;这里填演示地址&#39;)" target="_blank"><i class="fa fa-eye fa-fw"></i>演示</a>
                            <a class="layui-btn layui-btn-small layui-btn-primary" href="javascript:layer.msg(&#39;这里填下载地址&#39;)" target="_blank"><i class="fa fa-download fa-fw"></i>下载</a>
                        </div>
                    </div>
                    <div class="resource shadow">
                        <div class="resource-cover">
                            <a href="javascript:layer.msg(&#39;这里填演示地址&#39;)" target="_blank">
                                <img src="../images/cover/201703051349045432.jpg" alt="时光轴" />
                            </a>
                        </div>
                        <h1 class="resource-title"><a href="javascript:layer.msg(&#39;这里填演示地址&#39;)" target="_blank">时光轴</a></h1>
                        <p class="resource-abstract">本博客使用的时光轴的源码，手工打造！</p>
                        <div class="resource-info">
                            <span class="category"><a href="javascript:layer.msg(&#39;这里跳转到相应分类&#39;)"><i class="fa fa-tags fa-fw"></i>&nbsp;源码</a></span>
                            <span class="author"><i class="fa fa-user fa-fw"></i>Absolutely</span>
                            <div class="clear"></div>
                        </div>
                        <div class="resource-footer">
                            <a class="layui-btn layui-btn-small layui-btn-primary" href="javascript:layer.msg(&#39;这里填演示地址&#39;)" target="_blank"><i class="fa fa-eye fa-fw"></i>演示</a>
                            <a class="layui-btn layui-btn-small layui-btn-primary" href="javascript:layer.msg(&#39;这里填下载地址&#39;)" target="_blank"><i class="fa fa-download fa-fw"></i>下载</a>
                        </div>
                    </div>
                    <div class="resource shadow">
                        <div class="resource-cover">
                            <a href="javascript:layer.msg(&#39;这里填演示地址&#39;)" target="_blank">
                                <img src="../images/cover/201703051349045432.jpg" alt="时光轴" />
                            </a>
                        </div>
                        <h1 class="resource-title"><a href="javascript:layer.msg(&#39;这里填演示地址&#39;)" target="_blank">时光轴</a></h1>
                        <p class="resource-abstract">本博客使用的时光轴的源码，手工打造！</p>
                        <div class="resource-info">
                            <span class="category"><a href="javascript:layer.msg(&#39;这里跳转到相应分类&#39;)"><i class="fa fa-tags fa-fw"></i>&nbsp;源码</a></span>
                            <span class="author"><i class="fa fa-user fa-fw"></i>Absolutely</span>
                            <div class="clear"></div>
                        </div>
                        <div class="resource-footer">
                            <a class="layui-btn layui-btn-small layui-btn-primary" href="javascript:layer.msg(&#39;这里填演示地址&#39;)" target="_blank"><i class="fa fa-eye fa-fw"></i>演示</a>
                            <a class="layui-btn layui-btn-small layui-btn-primary" href="javascript:layer.msg(&#39;这里填下载地址&#39;)" target="_blank"><i class="fa fa-download fa-fw"></i>下载</a>
                        </div>
                    </div>
                    <!-- 清除浮动 -->
                    <div class="clear"></div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- 底部 -->
<footer class="blog-footer">
    <p><span>Copyright</span><span>&copy;</span><span>2018</span><a href="https://github.com/CasterWx">CasterWx</a><span> By AntzUhl</span></p>
    <p><a href="http://www.github.com/CasterWx" target="_blank">@CasterWx</a></p>
</footer>
<!--侧边导航-->
<ul class="layui-nav layui-nav-tree layui-nav-side blog-nav-left layui-hide" lay-filter="nav">
    <li class="layui-nav-item layui-this">
        <a href="/home"><i class="fa fa-home fa-fw"></i>&nbsp;网站首页</a>
    </li>
    <li class="layui-nav-item">
        <a href="/article"><i class="fa fa-file-text fa-fw"></i>&nbsp;文章专栏</a>
    </li>
    <li class="layui-nav-item">
        <a href="/resource"><i class="fa fa-tags fa-fw"></i>&nbsp;资源分享</a>
    </li>
    <li class="layui-nav-item">
        <a href="/timeline"><i class="fa fa-road fa-fw"></i>&nbsp;点点滴滴</a>
    </li>
    <li class="layui-nav-item">
        <a href="/about"><i class="fa fa-info fa-fw"></i>&nbsp;关于本站</a>
    </li>
</ul>
<!--分享窗体-->
<div class="blog-share layui-hide">
    <div class="blog-share-body">
        <div style="width: 200px;height:100%;">
            <div class="bdsharebuttonbox">
                <a class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a>
                <a class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a>
                <a class="bds_weixin" data-cmd="weixin" title="分享到微信"></a>
                <a class="bds_sqq" data-cmd="sqq" title="分享到QQ好友"></a>
            </div>
        </div>
    </div>
</div>
<link rel="stylesheet" href="../aplayer/APlayer.min.css">
<div id="aplayer" style="align:center;width:500px;position:fixed; bottom:0; z-index:999;  overflow:visible;">
</div>
<script src="../aplayer/APlayer.min.js"></script>
<script>
    const ap = new APlayer({
        container: document.getElementById('aplayer'),
        audio: [{
            name: 'カサネテク',
            artist: '中关村二',
            url: '../aplayer/music.mp3',
            cover:  'http://p2.music.126.net/AWXPd_GVXCzUocAMyatE5Q==/760862046442975.jpg?param=130y130'
        }]
    });
</script>
<!--遮罩-->
<div class="blog-mask animated layui-hide"></div>
<!-- layui.js -->
<script src="../plug/layui/layui.js"></script>
<!-- 全局脚本 -->
<script src="../js/global.js"></script>
</body>
</html>
