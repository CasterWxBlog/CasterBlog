<%@ page import="blog.dao.impl.BlogMarkDownDaoImpl" %>
<%@ page import="blog.domain.BlogMarkDown" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 13252
  Date: 2018/11/30
  Time: 9:26
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
    <!--本页样式表-->
    <link href="../css/article.css" rel="stylesheet" />
</head>
<body style="color: #000;background:url(../images/cover/header-mai.jpg) fixed; background-size: cover;background-repeat: repeat;font-size: 15px;min-height: 101%;">

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
            <a><cite>文章专栏</cite></a>
        </blockquote>
        <div class="blog-main">
            <div class="blog-main-left">
                <div class="shadow" style="text-align:center;font-size:16px;padding:40px 15px;background:#fff;margin-bottom:15px;">
                    未搜索到与【<span style="color: #FF5722;">keywords</span>】有关的文章，随便看看吧！
                </div>
                <%
                    BlogMarkDownDaoImpl blogMarkDownDao = new BlogMarkDownDaoImpl() ;
                    List<BlogMarkDown> list = blogMarkDownDao.listAll();
                    for(int i=0;i<list.size();i++){
                %>
                <div class="article shadow">
                    <div class="article-left">
                        <img src="<%=list.get(i).getImgurl()%>" alt="点击查看" />
                    </div>
                    <div class="article-right">
                        <div class="article-title">
                            <a href="<%=list.get(i).getLocalurl()%>"><%=list.get(i).getTitle()%></a>
                        </div>
                        <div class="article-abstract">
                            <%=list.get(i).getCode()%>
                        </div>
                    </div>
                    <div class="clear"></div>
                    <%-- time --%>
                    <div class="article-footer">
                        <span><i class="fa fa-clock-o"></i>&nbsp;&nbsp;<%=list.get(i).getTime()%></span>
                        <span class="article-author"><i class="fa fa-user"></i>&nbsp;&nbsp;<%=list.get(i).getAuthor()%></span>
                        <span><i class="fa fa-tag"></i>&nbsp;&nbsp;<a href="#"><%=list.get(i).getLocal()%></a></span>
                        <span class="article-viewinfo"><i class="fa fa-eye"></i>&nbsp;<%=list.get(i).getReview()%></span>   <%--review--%>
                        <span class="article-viewinfo"><i class="fa fa-commenting"></i>&nbsp;<%=list.get(i).getMemage()%></span> <%--留言--%>
                    </div>
                </div>
                <%
                    }
                %>
            </div>
            <div class="blog-main-right">
                <div class="blog-search">
                    <form class="layui-form" action="">
                        <div class="layui-form-item">
                            <div class="search-keywords  shadow">
                                <input type="text" name="keywords" lay-verify="required" placeholder="输入关键词搜索" autocomplete="off" class="layui-input">
                            </div>
                            <div class="search-submit  shadow">
                                <a class="search-btn" lay-submit="formSearch" lay-filter="formSearch"><i class="fa fa-search"></i></a>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="article-category shadow">
                    <div class="article-category-title">分类导航</div>
                    <a href="javascript:layer.msg(&#39;切换到相应分类&#39;)">Python</a>
                    <a href="javascript:layer.msg(&#39;切换到相应分类&#39;)">Java</a>
                    <a href="javascript:layer.msg(&#39;切换到相应分类&#39;)">Django</a>
                    <a href="javascript:layer.msg(&#39;切换到相应分类&#39;)">操作系统</a>
                    <a href="javascript:layer.msg(&#39;切换到相应分类&#39;)">C++</a>
                    <a href="javascript:layer.msg(&#39;切换到相应分类&#39;)">杂文随笔</a>
                    <div class="clear"></div>
                </div>
                <div class="blog-module shadow">
                    <div class="blog-module-title">作者推荐</div>
                    <ul class="fa-ul blog-module-ul">
                        <%
                            for(int i=0;i<list.size();i++){
                        %>
                        <li><i class="fa-li fa fa-hand-o-right"></i><a href="<%=list.get(i).getLocalurl()%>"><%=list.get(i).getTitle()%></a></li>
                        <%
                            }
                        %>
                    </ul>
                </div>
                <!--右边悬浮 平板或手机设备显示-->
                <div class="category-toggle"><i class="fa fa-chevron-left"></i></div>
            </div>
            <div class="clear"></div>
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
