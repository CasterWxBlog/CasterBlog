<%@ page import="blog.dao.impl.CommentImpl" %>
<%@ page import="blog.domain.Comment" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.net.URLDecoder" %><%--
  Created by IntelliJ IDEA.
  User: 13252
  Date: 2018/11/30
  Time: 22:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    String url = request.getParameter("url");
    String content = request.getParameter("content");
    CommentImpl comment = new CommentImpl() ;
    Comment c = new Comment() ;
    c.setContent(content);
    c.setUrl("/list/"+url+".jsp");
    c.setImgurl("../images/Absolutely.jpg");
    c.setName("游客");
    c.setTime(df.format(new Date()));
    comment.save(c);
    System.out.println(c.toString());
%>
</body>
</html>
