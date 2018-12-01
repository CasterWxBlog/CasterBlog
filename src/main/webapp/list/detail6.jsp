<%@ page import="blog.dao.impl.BlogMarkDownDaoImpl" %>
<%@ page import="blog.domain.BlogMarkDown" %>
<%@ page import="java.util.List" %>
<%@ page import="blog.dao.impl.CommentImpl" %>
<%@ page import="blog.domain.Comment" %>
<%@ page import="blog.dao.impl.MusicImpl" %>
<%@ page import="blog.domain.Music" %><%--
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
    <!--全局样式表-->
    <link href="../css/global.css" rel="stylesheet" />
    <!-- 比较好用的代码着色插件 -->
    <link href="../css/prettify.css" rel="stylesheet" />
    <!-- 本页样式表 -->
    <link href="../css/detail.css" rel="stylesheet" />
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.js"></script>
    <script src="../js/showdown.js"></script>
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
<%
    BlogMarkDownDaoImpl blogMarkDownDao = new BlogMarkDownDaoImpl();
    BlogMarkDown blogMarkDown = blogMarkDownDao.get(5);
%>
<div class="blog-body">
    <div class="blog-container">
        <blockquote class="layui-elem-quote sitemap layui-breadcrumb shadow">
            <a href="/home" title="网站首页">网站首页</a>
            <a href="/article" title="文章专栏">文章专栏</a>
            <a><cite></cite></a>
        </blockquote>
        <div class="blog-main">
            <div class="blog-main-left">
                <!-- 文章内容（使用Kingeditor富文本编辑器发表的） -->
                <div class="article-detail shadow">
                    <div class="article-detail-title">
                        <%=blogMarkDown.getTitle()%>
                    </div>
                    <div class="article-detail-info">
                        <span>编辑时间：<%=blogMarkDown.getTime()%></span>
                        <span>作者：<%=blogMarkDown.getAuthor()%></span>
                        <span>浏览量：<%=blogMarkDown.getReview()%></span>
                    </div>
                    <div class="article-detail-content">
                        <div id="result"></div>
                    </div>
                </div>
                <!-- 评论区域 -->
                <div class="blog-module shadow" style="box-shadow: 0 1px 8px #a6a6a6;">
                    <fieldset class="layui-elem-field layui-field-title" style="margin-bottom:0">
                        <legend>来说两句吧</legend>
                        <div class="layui-field-box">
                            <form class="layui-form blog-editor" action="">
                                <div class="layui-form-item">
                                    <textarea name="editorContent" lay-verify="content" id="remarkEditor" placeholder="请输入内容" class="layui-textarea layui-hide"></textarea>
                                </div>
                                <div class="layui-form-item">
                                    <button class="layui-btn" lay-submit="formRemark" lay-filter="formRemark">提交评论</button>
                                </div>
                            </form>
                        </div>
                    </fieldset>
                    <div class="blog-module-title">最新评论</div>
                    <ul class="blog-comment">
                        <li>
                            <%
                                CommentImpl commentimp = new CommentImpl() ;
                                List<Comment> comments = commentimp.listAll() ;
                                for (int i=0;i<comments.size();i++){
                                    if (comments.get(i).getUrl().equals(blogMarkDown.getLocalurl())){
                            %>
                            <div class="comment-parent">
                                <img src="<%=comments.get(i).getImgurl()%>" alt="absolutely" />
                                <div class="info">
                                    <span class="username"><%=comments.get(i).getName()%></span>
                                    <span class="time"><%=comments.get(i).getTime()%></span>
                                </div>
                                <div class="content">
                                    <%=comments.get(i).getContent()%>
                                </div>
                            </div>
                            <%
                                    }
                                }
                            %>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="blog-main-right">
                <!--右边悬浮 平板或手机设备显示-->
                <div class="category-toggle"><i class="fa fa-chevron-left"></i></div><!--这个div位置不能改，否则需要添加一个div来代替它或者修改样式表-->
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
                            List<BlogMarkDown> list = blogMarkDownDao.listAll();
                            for(int i=0;i<list.size();i++){
                        %>
                        <li><i class="fa-li fa fa-hand-o-right"></i><a href="<%=list.get(i).getLocalurl()%>"><%=list.get(i).getTitle()%></a></li>
                        <%
                            }
                        %>
                    </ul>
                </div>
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
    audiodata = [
        <%
              MusicImpl music = new MusicImpl() ;
              List<Music> musicList = music.listAll() ;
              for(int i=0;i<musicList.size();i++){
          %>
        {
            name: '<%=musicList.get(i).getName()%>',
            artist: '<%=musicList.get(i).getArtist()%>',
            lrc: '<%=musicList.get(i).getLrc()%>',
            theme: '<%=musicList.get(i).getTheme()%>',
            url: '<%=musicList.get(i).getUrl()%>',
            cover: '<%=musicList.get(i).getCover()%>'
        },
        <%
            }
        %>
    ]
    const ap = new APlayer({
        container: document.getElementById('aplayer'),
        fixed: true,
        listFolded: false,
        listMaxHeight: 90,
        lrcType: 3,
        audio: audiodata
    });
</script>
<script type="text/javascript">
    <%
        String []data = blogMarkDown.getData().split("\r\n") ;
    %>
    $(function () {
        var converter = new showdown.Converter(),
            text = "" +
                <%
                    for(int i=0;i<data.length;i++){
                %>
                "<%=data[i].replace("\r\n","").replace("\"","\\\"").replace("\'","\\\'")%>" +
                "\n" +
                <%
                    }
                %>
                "",
            html = converter.makeHtml(text);
        document.getElementById("result").innerHTML = html;
    });
</script>
<!--遮罩-->
<div class="blog-mask animated layui-hide"></div>
<!-- layui.js -->
<script src="../plug/layui/layui.js"></script>
<!-- 自定义全局脚本 -->
<script src="../js/global.js"></script>
<!-- 比较好用的代码着色插件 -->
<script src="../js/prettify.js"></script>
<!-- 本页脚本 -->
<script src="../js/detail.js"></script>
</body>
</html>
