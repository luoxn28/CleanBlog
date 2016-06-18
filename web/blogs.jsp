<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Clean Blog - 骆向南个人博客</title>

    <!-- me.ico -->
    <link rel="icon" href="img/me.ico" type="image/x-ico"/>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/clean-blog.min.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='http://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

</head>
<body>
    <!-- header 导航栏 -->
    <%@ include file="header.html" %>
    <!-- Page Header -->
    <!-- Set your background image for this header on the line below. -->
    <header class="intro-header" style="background-image: url('img/about-bg.jpg')">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                    <div class="text-center">
                        <h1>Clean Blog</h1>
                        <hr class="small">
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- Main Content -->
    <div class="container">
        <div class="row">
            <!--
                添加style="word-break:break-all;"为了解决BootStrap中div内容如果是英文的话，无法自动换行
                参考连接：http://www.jb51.net/css/22839.html
            -->
            <!-- 标签云 -->
            <div class="col-lg-2 col-md-2" style="word-break:break-all;">
                <div>
                    <div id='tag-cloud'>
                        左侧导航栏
                        <!--
                        <form class="navbar-form navbar-left" role="search">
                          <div class="form-group">
                            <input type="text" class="form-control" placeholder="Search">
                          </div>
                          <button type="submit" class="btn btn-default">Submit</button>
                        </form> -->
                    </div>
                </div>
            </div>

            <div class="col-lg-8 col-md-10">

                <c:forEach var="blog" items="${blogs}">
                    <div class="post-preview">
                        <a href="/blog?p=${blog.id}">
                            <h2 class="post-title">
                                    ${blog.title}
                            </h2>
                        </a>
                        <p class="post-preview">
                                ${blog.preview}
                        </p>
                        <p class="post-meta">Posted by <a href="#">${blog.author}</a> on ${blog.date}</p>
                    </div>
                    <hr>
                </c:forEach>

                <!-- Pager -->
                <ul class="pager">
                    <li class="next">
                        <a href="/blog?p=0">More Blogs &rarr;</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>

    <hr>

    <!-- Footer 网页底部 -->
    <%@ include file="footer.html" %>

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="js/clean-blog.min.js"></script>

</body>
</html>
