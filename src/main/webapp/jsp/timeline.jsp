<%--
  Created by IntelliJ IDEA.
  User: 13252
  Date: 2018/11/30
  Time: 9:28
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
    <!-- animate.css -->
    <link href="../css/animate.min.css" rel="stylesheet" />
    <!--全局样式表-->
    <link href="../css/global.css" rel="stylesheet" />
    <!-- 本页样式表 -->
    <link href="../css/timeline.css" rel="stylesheet" />
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
            <a href="/timeline" title="点点滴滴">点点滴滴</a>
            <a><cite>时光轴</cite></a>
        </blockquote>
        <div class="blog-main">
            <div class="child-nav shadow">
                <span class="child-nav-btn child-nav-btn-this">时光轴</span>
                <span class="child-nav-btn">笔记墙</span>
            </div>
            <div class="timeline-box shadow">
                <div class="timeline-main">
                    <h1><i class="fa fa-clock-o"></i>时光轴<span> —— 记录生活点点滴滴</span></h1>
                    <div class="timeline-line"></div>
                    <div class="timeline-year">
                        <h2><a class="yearToggle" href="javascript:;">2017年</a><i class="fa fa-caret-down fa-fw"></i></h2>
                        <div class="timeline-month">
                            <h3 class=" animated fadeInLeft"><a class="monthToggle" href="javascript:;">2月</a><i class="fa fa-caret-down fa-fw"></i></h3>
                            <ul>
                                <li class=" ">
                                    <div class="h4  animated fadeInLeft">
                                        <p class="date">02月23日 19:33</p>
                                    </div>
                                    <p class="dot-circle animated "><i class="fa fa-dot-circle-o"></i></p>
                                    <div class="content animated fadeInRight">该时光轴支持手机平板PC，但并不能兼容一些老的浏览器！</div>
                                    <div class="clear"></div>
                                </li>
                                <li class=" ">
                                    <div class="h4  animated fadeInLeft">
                                        <p class="date">02月11日 20:29</p>
                                    </div>
                                    <p class="dot-circle animated "><i class="fa fa-dot-circle-o"></i></p>
                                    <div class="content animated fadeInRight">这是2017年2月发表的</div>
                                    <div class="clear"></div>
                                </li>
                                <li class=" ">
                                    <div class="h4  animated fadeInLeft">
                                        <p class="date">02月10日 20:35</p>
                                    </div>
                                    <p class="dot-circle animated "><i class="fa fa-dot-circle-o"></i></p>
                                    <div class="content animated fadeInRight">这是2017年2月发表的</div>
                                    <div class="clear"></div>
                                </li>
                            </ul>
                        </div>
                        <div class="timeline-month">
                            <h3 class=" animated fadeInLeft"><a class="monthToggle" href="javascript:;">1月</a><i class="fa fa-caret-down fa-fw"></i></h3>
                            <ul>
                                <li class=" ">
                                    <div class="h4  animated fadeInLeft">
                                        <p class="date">01月23日 19:33</p>
                                    </div>
                                    <p class="dot-circle animated "><i class="fa fa-dot-circle-o"></i></p>
                                    <div class="content animated fadeInRight">这是2017年1月发表的</div>
                                    <div class="clear"></div>
                                </li>
                                <li class=" ">
                                    <div class="h4  animated fadeInLeft">
                                        <p class="date">01月11日 20:29</p>
                                    </div>
                                    <p class="dot-circle animated "><i class="fa fa-dot-circle-o"></i></p>
                                    <div class="content animated fadeInRight">这是2017年1月发表的</div>
                                    <div class="clear"></div>
                                </li>
                                <li class=" ">
                                    <div class="h4  animated fadeInLeft">
                                        <p class="date">01月10日 20:35</p>
                                    </div>
                                    <p class="dot-circle animated "><i class="fa fa-dot-circle-o"></i></p>
                                    <div class="content animated fadeInRight">这是2017年1月发表的</div>
                                    <div class="clear"></div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="timeline-year">
                        <h2><a class="yearToggle" href="javascript:;">2016年</a><i class="fa fa-caret-down fa-fw"></i></h2>
                        <div class="timeline-month">
                            <h3 class=" animated fadeInLeft"><a class="monthToggle" href="javascript:;">2月</a><i class="fa fa-caret-down fa-fw"></i></h3>
                            <ul>
                                <li class=" ">
                                    <div class="h4  animated fadeInLeft">
                                        <p class="date">02月23日 19:33</p>
                                    </div>
                                    <p class="dot-circle animated "><i class="fa fa-dot-circle-o"></i></p>
                                    <div class="content animated fadeInRight">这是2016年2月发表的</div>
                                    <div class="clear"></div>
                                </li>
                                <li class=" ">
                                    <div class="h4  animated fadeInLeft">
                                        <p class="date">02月11日 20:29</p>
                                    </div>
                                    <p class="dot-circle animated "><i class="fa fa-dot-circle-o"></i></p>
                                    <div class="content animated fadeInRight">这是2016年2月发表的</div>
                                    <div class="clear"></div>
                                </li>
                                <li class=" ">
                                    <div class="h4  animated fadeInLeft">
                                        <p class="date">02月10日 20:35</p>
                                    </div>
                                    <p class="dot-circle animated "><i class="fa fa-dot-circle-o"></i></p>
                                    <div class="content animated fadeInRight">这是2016年2月发表的</div>
                                    <div class="clear"></div>
                                </li>
                            </ul>
                        </div>
                        <div class="timeline-month">
                            <h3 class=" animated fadeInLeft"><a class="monthToggle" href="javascript:;">1月</a><i class="fa fa-caret-down fa-fw"></i></h3>
                            <ul>
                                <li class=" ">
                                    <div class="h4  animated fadeInLeft">
                                        <p class="date">01月23日 19:33</p>
                                    </div>
                                    <p class="dot-circle animated "><i class="fa fa-dot-circle-o"></i></p>
                                    <div class="content animated fadeInRight">这是2016年1月发表的</div>
                                    <div class="clear"></div>
                                </li>
                                <li class=" ">
                                    <div class="h4  animated fadeInLeft">
                                        <p class="date">01月11日 20:29</p>
                                    </div>
                                    <p class="dot-circle animated "><i class="fa fa-dot-circle-o"></i></p>
                                    <div class="content animated fadeInRight">这是2016年1月发表的</div>
                                    <div class="clear"></div>
                                </li>
                                <li class=" ">
                                    <div class="h4  animated fadeInLeft">
                                        <p class="date">01月10日 20:35</p>
                                    </div>
                                    <p class="dot-circle animated "><i class="fa fa-dot-circle-o"></i></p>
                                    <div class="content animated fadeInRight">这是2016年1月发表的</div>
                                    <div class="clear"></div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <h1 style="padding-top:4px;padding-bottom:2px;margin-top:40px;"><i class="fa fa-hourglass-end"></i>THE END</h1>
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
    const dp = new DPlayer({
        container: document.getElementById('dplayer'),
        screenshot: true,
        video: {
            url: 'https://moeplayer.b0.upaiyun.com/dplayer/hikarunara.mp4',
            pic: 'demo.jpg',
            thumbnails: 'thumbnails.jpg'
        },
        subtitle: {
            url: 'webvtt.vtt'
        },
        danmaku: {
            id: 'demo',
            api: 'https://api.prprpr.me/dplayer/v3/bilibili?aid=4124125'
        }
    });
</script>
<!--遮罩-->
<div class="blog-mask animated layui-hide"></div>
<!-- layui.js -->
<script src="../plug/layui/layui.js"></script>
<!-- 全局脚本 -->
<script src="../js/global.js"></script>
<!-- 本页脚本 -->
<script type="text/javascript">
    layui.use('jquery', function () {
        var $ = layui.jquery;

        $(function () {
            $('.monthToggle').click(function () {
                $(this).parent('h3').siblings('ul').slideToggle('slow');
                $(this).siblings('i').toggleClass('fa-caret-down fa-caret-right');
            });
            $('.yearToggle').click(function () {
                $(this).parent('h2').siblings('.timeline-month').slideToggle('slow');
                $(this).siblings('i').toggleClass('fa-caret-down fa-caret-right');
            });
        });
    });
</script>
</body>
</html>
