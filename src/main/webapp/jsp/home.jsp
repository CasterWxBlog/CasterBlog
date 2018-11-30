<%--
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
        <a class="blog-logo" href="home.html">CasterWx</a>
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
                    <span style="color: #009688">CasterWx &nbsp;—— &nbsp;一个肥宅程序员的个人博客，新版网站采用Layui为前端框架，目前正在建设中！</span>
                </div>
            </div>
            <!--左边文章列表-->
            <div class="blog-main-left">
                <div class="article shadow">
                    <div class="article-left">
                        <img src="../images/cover/201703181909057125.jpg" alt="基于laypage的layui扩展模块（pagesize.js）！" />
                    </div>
                    <div class="article-right">
                        <div class="article-title">
                            <a href="/detail">基于MFC开发的指纹识别系统.</a>
                        </div>
                        <div class="article-abstract">
                            在第12步特征入库中，会对当前指纹的mdl数据与databases中所有的mdl进行对比,然后返回识别结果.
                        </div>
                    </div>
                    <div class="clear"></div>
                    <%-- time --%>
                    <div class="article-footer">
                        <span><i class="fa fa-clock-o"></i>&nbsp;&nbsp;2017-03-18</span>
                        <span class="article-author"><i class="fa fa-user"></i>&nbsp;&nbsp;Absolutely</span>
                        <span><i class="fa fa-tag"></i>&nbsp;&nbsp;<a href="#">Mfc</a></span>
                        <span class="article-viewinfo"><i class="fa fa-eye"></i>&nbsp;0</span>   <%--review--%>
                        <span class="article-viewinfo"><i class="fa fa-commenting"></i>&nbsp;4</span> <%--留言--%>
                    </div>
                </div>
                <div class="article shadow">
                    <div class="article-left">
                        <img src="../images/cover/201703181909057125.jpg" alt="基于laypage的layui扩展模块（pagesize.js）！" />
                    </div>
                    <div class="article-right">
                        <div class="article-title">
                            <a href="detail.html">基于laypage的layui扩展模块（pagesize.js）！</a>
                        </div>
                        <div class="article-abstract">
                            该模块主要是针对当前版本laypage没有页容量控制功能而制作，使用该模块后即可实现每页显示多少条数据的控制！本人原创，但是可能有可能只对本人的分页写法有用！
                        </div>
                    </div>
                    <div class="clear"></div>
                    <div class="article-footer">
                        <span><i class="fa fa-clock-o"></i>&nbsp;&nbsp;2017-03-18</span>
                        <span class="article-author"><i class="fa fa-user"></i>&nbsp;&nbsp;Absolutely</span>
                        <span><i class="fa fa-tag"></i>&nbsp;&nbsp;<a href="#">Web前端</a></span>
                        <span class="article-viewinfo"><i class="fa fa-eye"></i>&nbsp;0</span>
                        <span class="article-viewinfo"><i class="fa fa-commenting"></i>&nbsp;4</span>
                    </div>
                </div>
                <div class="article shadow">
                    <div class="article-left">
                        <img src="../images/cover/201703181909057125.jpg" alt="基于laypage的layui扩展模块（pagesize.js）！" />
                    </div>
                    <div class="article-right">
                        <div class="article-title">
                            <a href="detail.html">基于laypage的layui扩展模块（pagesize.js）！</a>
                        </div>
                        <div class="article-abstract">
                            该模块主要是针对当前版本laypage没有页容量控制功能而制作，使用该模块后即可实现每页显示多少条数据的控制！本人原创，但是可能有可能只对本人的分页写法有用！
                        </div>
                    </div>
                    <div class="clear"></div>
                    <div class="article-footer">
                        <span><i class="fa fa-clock-o"></i>&nbsp;&nbsp;2017-03-18</span>
                        <span class="article-author"><i class="fa fa-user"></i>&nbsp;&nbsp;Absolutely</span>
                        <span><i class="fa fa-tag"></i>&nbsp;&nbsp;<a href="#">Web前端</a></span>
                        <span class="article-viewinfo"><i class="fa fa-eye"></i>&nbsp;0</span>
                        <span class="article-viewinfo"><i class="fa fa-commenting"></i>&nbsp;4</span>
                    </div>
                </div>
            </div>
            <!--右边小栏目-->
            <div class="blog-main-right">
                <div class="blogerinfo shadow">
                    <div class="blogerinfo-figure">
                        <img src="../images/Absolutely.jpg" alt="Absolutely" />
                    </div>
                    <p class="blogerinfo-nickname">AntzUhl</p>
                    <p class="blogerinfo-introduce">河大程序员.</p>
                    <p class="blogerinfo-location"><i class="fa fa-location-arrow"></i>&nbsp;四川 - 南充</p>
                    <hr />
                    <div class="blogerinfo-contact">
                        <a target="_blank" title="QQ交流" href="javascript:layer.msg('启动QQ会话窗口')"><i class="fa fa-qq fa-2x"></i></a>
                        <a target="_blank" title="给我写信" href="javascript:layer.msg('启动邮我窗口')"><i class="fa fa-envelope fa-2x"></i></a>
                        <a target="_blank" title="新浪微博" href="javascript:layer.msg('转到你的微博主页')"><i class="fa fa-weibo fa-2x"></i></a>
                        <a target="_blank" title="码云" href="javascript:layer.msg('转到你的github主页')"><i class="fa fa-git fa-2x"></i></a>
                    </div>
                </div>
                <div></div><!--占位-->
                <div class="blog-module shadow">
                    <div class="blog-module-title">热文排行</div>
                    <ul class="fa-ul blog-module-ul">
                        <li><i class="fa-li fa fa-hand-o-right"></i><a href="detail.html">Maven环境变量配置</a></li>
                        <li><i class="fa-li fa fa-hand-o-right"></i><a href="detail.html">解决猫眼网反爬虫策略的爬虫</a></li>
                        <li><i class="fa-li fa fa-hand-o-right"></i><a href="detail.html">没有对象也要谈恋爱之女朋友的情绪监控</a></li>
                        <li><i class="fa-li fa fa-hand-o-right"></i><a href="detail.html">利用Android-FingerprintManager类实现指纹识别</a></li>
                    </ul>
                </div>
                <div class="blog-module shadow">
                    <div class="blog-module-title">最近分享</div>
                    <ul class="fa-ul blog-module-ul">
                        <li><i class="fa-li fa fa-hand-o-right"></i><a href="http://pan.baidu.com/s/1c1BJ6Qc" target="_blank">Canvas</a></li>
                        <li><i class="fa-li fa fa-hand-o-right"></i><a href="http://pan.baidu.com/s/1kVK8UhT" target="_blank">pagesize.js</a></li>
                        <li><i class="fa-li fa fa-hand-o-right"></i><a href="https://pan.baidu.com/s/1mit2aiW" target="_blank">时光轴</a></li>
                        <li><i class="fa-li fa fa-hand-o-right"></i><a href="https://pan.baidu.com/s/1nuAKF81" target="_blank">图片轮播</a></li>
                    </ul>
                </div>
                <div class="blog-module shadow">
                    <div class="blog-module-title">一路走来</div>
                    <dl class="footprint">
                        <dt>2017年03月12日</dt>
                        <dd>新增留言回复功能！人人都可参与回复！</dd>
                        <dt>2017年03月10日</dt>
                        <dd>不落阁2.0基本功能完成，正式上线！</dd>
                        <dt>2017年03月09日</dt>
                        <dd>新增文章搜索功能！</dd>
                        <dt>2017年02月25日</dt>
                        <dd>QQ互联接入网站，可QQ登陆发表评论与留言！</dd>
                    </dl>
                </div>
                <div class="blog-module shadow">
                    <div class="blog-module-title">后台记录</div>
                    <dl class="footprint">
                        <dt>2017年03月16日</dt>
                        <dd>分页新增页容量控制</dd>
                        <dt>2017年03月12日</dt>
                        <dd>新增管家提醒功能</dd>
                        <dt>2017年03月10日</dt>
                        <dd>新增Win10快捷菜单</dd>
                    </dl>
                </div>
                <div class="blog-module shadow">
                    <div class="blog-module-title">友情链接</div>
                    <ul class="blogroll">
                        <li><a target="_blank" href="http://www.layui.com/" title="Layui">Layui</a></li>
                        <li><a target="_blank" href="http://www.pagemark.cn/" title="页签">页签</a></li>
                    </ul>
                </div>
            </div>
            <div class="clear"></div>
        </div>
    </div>
</div>
<!-- 底部 -->
<footer class="blog-footer">
    <p><span>Copyright</span><span>&copy;</span><span>2017</span><a href="http://www.lyblogs.cn">不落阁</a><span>Design By LY</span></p>
    <p><a href="http://www.github.com/CasterWx" target="_blank">@CasterWx</a></p>
</footer>
<!--侧边导航-->
<ul class="layui-nav layui-nav-tree layui-nav-side blog-nav-left layui-hide" lay-filter="nav">
    <li class="layui-nav-item layui-this">
        <a href="home.html"><i class="fa fa-home fa-fw"></i>&nbsp;网站首页</a>
    </li>
    <li class="layui-nav-item">
        <a href="article.html"><i class="fa fa-file-text fa-fw"></i>&nbsp;文章专栏</a>
    </li>
    <li class="layui-nav-item">
        <a href="resource.html"><i class="fa fa-tags fa-fw"></i>&nbsp;资源分享</a>
    </li>
    <li class="layui-nav-item">
        <a href="timeline.html"><i class="fa fa-road fa-fw"></i>&nbsp;点点滴滴</a>
    </li>
    <li class="layui-nav-item">
        <a href="about.html"><i class="fa fa-info fa-fw"></i>&nbsp;关于本站</a>
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
