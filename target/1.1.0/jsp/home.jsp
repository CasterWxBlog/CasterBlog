<%@ page import="blog.dao.impl.BlogMarkDownDaoImpl" %>
<%@ page import="blog.domain.BlogMarkDown" %>
<%@ page import="java.util.List" %>
<%@ page import="blog.dao.impl.LogDataImpl" %>
<%@ page import="blog.domain.LogData" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="blog.dao.impl.MusicImpl" %>
<%@ page import="blog.domain.Music" %><%--
  Created by IntelliJ IDEA.
  User: 13252
  Date: 2018/11/30
  Time: 9:25
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
    <link href="../css/home.css" rel="stylesheet" />
</head>
<body style="color: #000;background:url(../images/cover/header-mai.jpg) fixed; background-size: cover;background-repeat: repeat;font-size: 15px;min-height: 101%;">
<!-- 导航 -->
<nav class="blog-nav layui-header">
    <div class="blog-container">
        <!-- QQ互联登陆 -->
        <a href="/frag" class="blog-user">
            <i class="fa fa-qq"></i>
        </a>
        <a href="#" class="blog-user layui-hide">
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
    <!-- canvas -->
    <canvas id="canvas-banner" style="background: #393D49;"></canvas>
    <!--为了及时效果需要立即设置canvas宽高，否则就在home.js中设置-->
    <script type="text/javascript">
        var canvas = document.getElementById('canvas-banner');
        canvas.width = window.document.body.clientWidth - 10;//减去滚动条的宽度
        if (screen.width >= 992) {
            canvas.height = window.innerHeight * 1 / 3;
        } else {
            canvas.height = window.innerHeight * 2 / 7;
        }
    </script>
    <!-- 这个一般才是真正的主体内容 -->
    <div class="blog-container">
        <div class="blog-main">
            <!-- 网站公告提示 -->
            <div class="home-tips shadow">
                <i style="float:left;line-height:17px;" class="fa fa-volume-up"></i>
                <div class="home-tips-container">
                    <span style="color: #009688">偷偷告诉大家，本博客的后台管理也正在制作，为大家准备了游客专用账号！</span>
                    <span style="color: red">网站新增留言回复啦！使用QQ登陆即可回复，人人都可以回复！</span>
                    <span style="color: red">如果你觉得网站做得还不错，来Github点个Star吧！<a href="https://github.com/CasterWx" target="_blank" style="color:#01AAED">点我前往</a></span>
                    <span style="color: #009688">CasterWx &nbsp;—— &nbsp;一个肥宅程序员的个人博客，目前正在建设中！</span>
                </div>
            </div>
            <!--左边文章列表-->
            <div class="blog-main-left">
                <div class="article shadow">
                    <link rel="stylesheet" href="../dplayer/DPlayer.min.css">
                    <div id="dplayer" style="width: 100%;height:60%;"></div>
                    <script src="../dplayer/DPlayer.min.js"></script>
                    <div class="clear"></div>
                    <%-- time --%>
                    <div class="article-footer">
                        <span><i class="fa fa-clock-o"></i>&nbsp;&nbsp;2018-11-30</span>
                        <span class="article-author"><i class="fa fa-user"></i>&nbsp;&nbsp;CasterWx</span>
                        <span><i class="fa fa-tag"></i>&nbsp;&nbsp;<a href="#">BiliBili,休闲</a></span>
                        <span class="article-viewinfo"><i class="fa fa-eye"></i>&nbsp;205</span>   <%--review--%>
                        <span class="article-viewinfo"><i class="fa fa-commenting"></i>&nbsp;5</span> <%--留言--%>
                    </div>
                </div>
                <div class="article shadow">

                        <div class="article-title">
                            <a href="">我喜欢的音乐</a>
                        </div>
                            <link rel="stylesheet" href="../aplayer/APlayer.min.css">
                            <div id="aplist">
                            </div>
                            <script src="../aplayer/APlayer.min.js"></script>
                    <div class="clear"></div>
                </div>
            <%
                BlogMarkDownDaoImpl blogMarkDownDao = new BlogMarkDownDaoImpl() ;
                List<BlogMarkDown> list = blogMarkDownDao.listAll();
                for(int i=list.size()-1;i>=0;i--){
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
                            <%=list.get(i).getCode()%><a href="<%=list.get(i).getLocalurl()%>"> <font color="#008b8b">浏览更多</font></a>
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
            <!--右边小栏目-->
            <div class="blog-main-right">
                <div class="blogerinfo shadow">
                    <div class="blogerinfo-figure">
                        <img src="../images/Logo_100.png" alt="Absolutely" />
                    </div>
                    <p class="blogerinfo-nickname">AntzUhl</p>
                    <p class="blogerinfo-introduce">大三的程序员.</p>
                    <p class="blogerinfo-location"><i class="fa fa-location-arrow"></i>&nbsp;四川 - 南充</p>
                    <hr />
                    <div class="blogerinfo-contact">
                        <a target="_blank" title="QQ交流" href="javascript:layer.msg('启动QQ会话窗口')"><i class="fa fa-qq fa-2x"></i></a>
                        <a target="_blank" title="给我写信" href="javascript:layer.msg('antzuhl1998@gmail.com')"><i class="fa fa-envelope fa-2x"></i></a>
                        <a target="_blank" title="新浪微博" href="javascript:layer.msg('转到你的微博主页')"><i class="fa fa-weibo fa-2x"></i></a>
                        <a target="_blank" title="Github" href="javascript:layer.msg('https://github.com/CasterWx')"><i class="fa fa-git fa-2x"></i></a>
                    </div>
                </div>
                <div></div><!--占位-->
                <div class="blog-module shadow" style="height: 50%;">
                    <div class="blog-module-title">热文排行</div>
                    <ul class="fa-ul blog-module-ul">
                        <%
                            for(int i=list.size()-1;i>=0;i--){
                        %>
                        <li><i class="fa-li fa fa-hand-o-right"></i><a href="<%=list.get(i).getLocalurl()%>"><%=list.get(i).getTitle()%></a></li>
                        <%
                            }
                        %>
                    </ul>
                </div>
                <div class="blog-module shadow" style="height: 50%;">
                    <div class="blog-module-title">最近分享</div>
                    <ul class="fa-ul blog-module-ul">
                        <li><i class="fa-li fa fa-hand-o-right"></i><a href="https://github.com/CasterWx/python-girlfriend-mood" target="_blank">女朋友情绪分析</a></li>
                        <li><i class="fa-li fa fa-hand-o-right"></i><a href="https://github.com/CasterWx/c-cPlusPlus-Virus" target="_blank">病毒</a></li>
                        <li><i class="fa-li fa fa-hand-o-right"></i><a href="https://github.com/CasterWx/python-VoiceAssistant" target="_blank">语音管家</a></li>
                        <li><i class="fa-li fa fa-hand-o-right"></i><a href="https://github.com/CasterWx/MFC-FingerPrint" target="_blank">指纹识别</a></li>
                    </ul>
                </div>
                <div class="blog-module shadow" style="height: 120%;">
                    <div class="blog-module-title">一路走来</div>
                    <dl class="footprint">
                        <%
                            LogDataImpl logData1 = new LogDataImpl() ;
                            List<LogData> logData = logData1.listAll();
                            for(int i=0;i<logData.size();i++){
                        %>
                        <dt><%=logData.get(i).getTime()%></dt>
                        <dd><%=logData.get(i).getTitle()%></dd>
                        <%
                            }
                        %>
                    </dl>
                </div>
                <div class="blog-module shadow" style="height: 50%;">
                    <div class="blog-module-title">友链</div>
                    <ul class="blogroll">
                        <li><a target="_blank" href="https://github.com/CasterWx" title="CasterWx">CasterWx</a></li>
                        <li><a target="_blank" href="https://github.com/CasterWxBlog" title="CasterWxBlog">CasterWxBlog</a></li>
                        <li><a target="_blank" href="https://github.com/hhw7080" title="hhw7080">hhw7080</a></li>
                        <li><a target="_blank" href="https://github.com/hibearflag" title="hibearflag">hibearflag</a></li>
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
    const ap2 = new APlayer({
        container: document.getElementById('aplist'),
        listFolded: false,
        listMaxHeight: 200,
        lrcType: 3,
        audio: audiodata
    });
    const ap = new APlayer({
        container: document.getElementById('aplayer'),
        fixed: true,
        listFolded: false,
        listMaxHeight: 90,
        lrcType: 3,
        audio: audiodata
    });
    const dp = new DPlayer({
        container: document.getElementById('dplayer'),
        screenshot: true,
        video: {
            url: '../dplayer/world.execute(me).Mp4',
            pic: '../images/cover/mili.jpg',
            thumbnails: '../images/cover/mili.jpg'
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
<script src="../js/home.js"></script>
</body>
</html>
