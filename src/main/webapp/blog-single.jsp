<%@ page import="com.flh.model.entity.User" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <meta name="author" content="TechyDevs">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,  initial-scale=1.0">
    <meta name="description" content="Costar - Coronavirus Medical Prevention Template">
    <meta name="keywords" content="medical, corona, virus, health, html5 template">

    <title></title>

    <!-- Favicon -->
    <link rel="icon" sizes="16x16" href="images/favicon.png">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,500&display=swap" rel="stylesheet">

    <!-- inject:css -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/line-awesome.css">
    <link rel="stylesheet" href="css/animate.min.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/style.css">
    <!-- end inject -->
</head>
<body>

<!-- page preloader -->
<div id="loading-area">
    <div class="loader-col">
        <div class="loader" id="loader"></div>
    </div>
</div><!-- end loading -->

<!--======================================
        START HEADER AREA
    ======================================-->
<section class="header-menu-area header-menu-area-2">
    <div class="header-menu-fluid">
        <div class="container ">
            <div class="main-menu-content-2">
                <div class="row align-items-center h-100">
                    <div class="col-lg-3">
                        <div class="logo-box">
                            <a href="index.html" class="logo"><img src="images/logo2.png" alt="logo"></a>
                        </div>
                    </div><!-- end col-lg-3 -->
                    <div class="col-lg-9">
                        <div class="menu-wrapper">
                            <nav class="main-menu">
                                <ul>
                                    <li>
                                        <a href="index.jsp">主页</a>
                                    </li>
                                    <li><a href="about.jsp">关于我们</a></li>
                                    <li>
                                        <a href="#">其他</a>
                                        <ul class="dropdown-menu-item">
                                            <li><a href="doctors.jsp">我们的医生</a></li>
                                            <li><a href="contact.jsp">联系我们</a></li>
                                            <li><a href="faq.jsp">常见问题解决</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="prevention.jsp">预防</a></li>
                                    <li>
                                        <a href="blog-sidebar.jsp">博客</a>
                                    </li>
                                    <li>
                                        <%User user=(User) session.getAttribute("user1");%>
                                        <%if (user==null){%>
                                        <a href="login.jsp">登录</a>
                                        <span class="ml-1 mr-1">/</span>
                                        <a href="sign-up.jsp">注册</a>
                                        <%}else {%>
                                        <span>欢迎：<a href="#" ><%=user.getUsername()%></a></span>
                                        <ul class="dropdown-menu-item">
                                            <li><a href="loadDown.form">退出</a></li>
                                            <li><a href="sign-up.jsp">注册</a></li>
                                        </ul>
                                        <%}%>
                                    </li>
                                </ul><!-- end ul -->
                            </nav><!-- end main-menu -->
                            <div class="logo-right-button">
                                <ul>
                                    <li><a href="prevention.jsp" class="template-btn">预防</a></li>
                                </ul>
                                <div class="side-menu-open">
                                    <i class="la la-bars"></i>
                                </div>
                            </div><!-- end logo-right-button -->
                        </div><!-- end menu-wrapper -->
                    </div><!-- end col-lg-9 -->
                </div><!-- end row -->
            </div>
        </div><!-- end container -->
    </div><!-- end header-menu-fluid-->
</section><!-- end header-menu-area -->
<!--======================================
        END HEADER AREA
======================================-->

<!-- ================================
    START BREADCRUMB AREA
================================= -->
<section class="breadcrumb-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb-content text-center">
                    <div class="section-heading">
                        <h2 class="section__title">博客详情</h2>
                    </div>
                </div><!-- end breadcrumb-content -->
            </div><!-- end col-lg-12 -->
        </div><!-- end row -->
    </div><!-- end container -->
    <div class="breadcrumb-list">
        <ul class="list-items">
            <li class="active__list-item"><a href="index.jsp">主页</a></li>
            <li class="active__list-item">博客</li>
            <li>博客详情</li>
        </ul>
    </div>
</section><!-- end breadcrumb-area -->
<!-- ================================
    END BREADCRUMB AREA
================================= -->

<!--======================================
        START BLOG AREA
======================================-->
<input type="hidden" id="idcom" value="${blogInfo.blogid}">
<section class="blog-area padding-top-140px padding-bottom-120px">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="card-item blog-card-detail">
                    <div class="card-img-box">
                        <img src="images/blog/${blogInfo.blogpic}" alt="">
                    </div>
                    <div class="card-content">
                        <h4 class="card-meta"><i class="la la-clock-o"></i> 4 min read</h4>
                        <h3 class="card-title"><a href="blog-single.jsp">${blogInfo.blogtopic}</a></h3>
                        <ul class="list-items">
                            <li class="card-dot-active"><span class="la la-user"></span><a href='doctorInfo.form?doctorid=${blogInfo.doctor.doctorid}'>${blogInfo.doctor.doctorname}</a></li>
                            <li><span class="la la-calendar"></span>${blogInfo.blogtime}</li>
                        </ul>
                        <p class="card-desc mb-3">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${blogInfo.bloginfo}
                        </p>
                        <div class="tag-items mt-4">
                            <ul class="tag-list">
                                <li class="font-weight-medium text-color mr-2">标签:</li>
                                <c:forEach var="bloglabel" items="${sessionScope.blogLableList1}">
                                    <li><a href="#" class="rounded-radius">${bloglabel.labelname}</a></li>
                                </c:forEach>
                            </ul>
                            <ul class="social-links mt-4">
                                <li class="font-weight-medium text-color mr-2">Share post:</li>
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                            </ul>
                        </div>
                    </div><!-- end blog-content -->
                </div><!-- end card-item -->
                <script src="js/jquery.js" type="text/javascript"></script>
                <script>
                    //相关博客
                    $(function () {
                        var blogtypeid=$("#related").val();
                        var blogid=$("#bid").val();
                        $.ajax({
                            type:"post",
                            url:"relatedBlog.form",
                            data:{"blogtypeid":blogtypeid},
                            dataType:"json",
                            success:function (data) {
                                var result="";
                                $(data).each(function (i) {
                                    if (i>1) {
                                        return false
                                    }
                                    if (this.blogid!=blogid){
                                        result+=" <div class=\"col-lg-6\">\n" +
                                            "                                <div class=\"card-item\">\n" +
                                            "                                    <div class=\"card-img-box\">\n" +
                                            "                                        <img src='images/blog/"+this.blogpic+"' alt=\"\">\n" +
                                            "                                    </div>\n" +
                                            "                                    <div class=\"card-content\">\n" +
                                            "                                        <h4 class=\"card-meta\"><i class=\"la la-clock-o\"></i> 4 min read</h4>\n" +
                                            "                                        <h3 class=\"card-title\"><a href='blogInfo.form?blogid="+this.blogid+"'>"+this.blogtopic+"</a></h3>\n" +
                                            "                                        <ul class=\"list-items\">\n" +
                                            "                                            <li class=\"card-dot-active\"><span class=\"la la-user\"></span>By <a href='doctorInfo.form?doctorid="+this.doctor.doctorid+"'>"+this.doctor.doctorname+"</a></li>\n" +
                                            "                                            <li><span class=\"la la-calendar\"></span> "+this.blogtime+"</li>\n" +
                                            "                                        </ul>\n" +
                                            "                                        <a href='blogInfo.form?blogid="+this.blogid+"' class=\"template-btn btn-layout-small\">查看博客详情</a>\n" +
                                            "                                    </div><!-- end blog-content -->\n" +
                                            "                                </div>\n" +
                                            "                            </div>"
                                    }
                                });
                                $("#relatedBlog").html(result);
                            }
                        })
                    })
                </script>
                <div class="related-post padding-top-45px">
                    <h3 class="widget-title font-size-22">相关博客</h3>
                    <input type="hidden" value="${blogInfo.blogid}" id="bid">
                    <input type="hidden" value="${blogInfo.blogtypeid}" id="related">
                    <div class="related-post-inner mt-4">
                        <div class="row" id="relatedBlog">

                            <div class="col-lg-6">
                                <div class="card-item">
                                    <div class="card-img-box">
                                        <img src="images/img1.jpg" alt="">
                                    </div>
                                    <div class="card-content">
                                        <h4 class="card-meta"><i class="la la-clock-o"></i> 4 min read</h4>
                                        <h3 class="card-title"><a href="blog-single.jsp">How we can tak care of our health against Virus</a></h3>
                                        <ul class="list-items">
                                            <li class="card-dot-active"><span class="la la-user"></span>By <a href="#">TechyDevs </a></li>
                                            <li><span class="la la-calendar"></span> Jan 8, 2019</li>
                                        </ul>
                                        <a href="blog-single.jsp" class="template-btn btn-layout-small">read more</a>
                                    </div><!-- end blog-content -->
                                </div>
                            </div>

                        </div><!-- end row -->
                    </div>
                </div><!-- end related-post -->
            </div><!-- end col-lg-8 -->
            <script>
                /**
                 * 最近博客
                 */
                $(function () {
                    $.ajax({
                        type:"post",
                        url:"newBlog.form",
                        dataType:"json",
                        success:function (data) {
                            var result="";
                            $(data).each(function () {
                                result+=" <div class=\"recent-item align-items-center\">\n" +
                                    "                                <div class=\"recent-img\">\n" +
                                    "                                    <a href='blogInfo.form?blogid="+this.blogid+"'>\n" +
                                    "                                        <img src='images/blog/"+this.blogpic+"' alt=\"blog image\">\n" +
                                    "                                    </a>\n" +
                                    "                                </div><!-- end recent-img -->\n" +
                                    "                                <div class=\"recent-post-body\">\n" +
                                    "                                    <h4 class=\"widget-title\">\n" +
                                    "                                        <a href='blogInfo.form?blogid="+this.blogid+"'>"+this.blogtopic+"</a>\n" +
                                    "                                    </h4>\n" +
                                    "                                    <p class=\"recent__meta\"><span class=\"la la-user\"></span>By <a href='doctorInfo.form?doctorid="+this.doctor.doctorid+"'>"+this.doctor.doctorname+"</a> <br/><span class=\"la la-calendar\"></span>"+this.blogtime+"</p>\n" +
                                    "                                </div><!-- end recent-img -->\n" +
                                    "                            </div><!-- end recent-item -->";
                            })
                            $("#newBlog").html(result);
                        }
                    })
                })
                /**
                 * 博客类型
                 */
                $(function () {
                    $.ajax({
                        type:"post",
                        url:"alltype.form",
                        dataType:"json",
                        success:function (data) {
                            var result="";
                            $(data).each(function () {
                                result+="  <li><a href=\"#\"><i class=\"la la-angle-right mr-1\"></i>"+this.blogtypename+"</a>"
                            });
                            $("#alltype").html(result)
                        }
                    })
                })
                /**
                 * 博客标签
                 */
                $(function () {
                    $.ajax({
                        type:"post",
                        url:"alllabel.form",
                        dataType:"json",
                        success:function (data) {
                            var result="";
                            $(data).each(function () {
                                result+=" <li><a href='#'>"+this.labelname+"</a></li>"
                            });
                            $("#alllabel").html(result)
                        }
                    })
                })
            </script>
            <div class="col-lg-4">
                <div class="sidebar">
                    <div class="sidebar-widget">
                        <h3 class="widget-title">返回所有博客</h3>
                        <div class="section-divider"></div>
                        <div class="contact-form-action mt-4">
                            <script>
                                $(function () {
                                    $("#go").mouseover(function () {
                                        $("#go").css("b+ackground-color","#005cbf")
                                    })
                                    $("#go").mouseout(function () {
                                        $("#go").css("background-color","#3aaae1")
                                    })
                                })
                            </script>
                            <form action="/blog-sidebar.jsp">
                                <div class="form-group mb-0" style="">
                                    <input class="form-control pl-3" id="go" type="submit" value="返回所有博客" style="background-color:#3aaae1;color:white;font-size: 18px">
                                </div>
                            </form>
                        </div>
                    </div><!-- end sidebar-widget -->
                    <div class="sidebar-widget">
                        <h3 class="widget-title">博客类型</h3>
                        <div class="section-divider"></div>
                        <ul class="list-items mt-4" id="alltype">


                        </ul>
                    </div><!-- end sidebar-widget -->
                    <div class="sidebar-widget">
                        <h3 class="widget-title">最近博客</h3>
                        <div class="section-divider"></div>
                        <div class="sidebar-posts mt-4" id="newBlog">

                        </div><!-- end sidebar-posts -->
                    </div><!-- end sidebar-widget -->
                    <div class="sidebar-widget">
                        <h3 class="widget-title">标签</h3>
                        <div class="section-divider"></div>
                        <ul class="tag-list mt-4" id="alllabel">


                        </ul>
                    </div><!-- end sidebar-widget -->
                    <div class="sidebar-widget">
                        <h3 class="widget-title">关注并连接</h3>
                        <div class="section-divider"></div>
                        <ul class="social-links mt-4">
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                            <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                            <li><a href="#"><i class="fa fa-behance"></i></a></li>
                        </ul>
                    </div>
                </div><!-- end col-lg-4 -->
            </div><!-- end col-lg-4 -->
        </div><!-- end row -->
    </div><!-- end container -->
</section><!-- end blog-area -->
<!--======================================
        END BLOG AREA
======================================-->

<script>
    //查询评论
    pageIndex(1);
    function pageIndex(num) {
        var blogid=$("#idcom").val();
        var pageIndex=num;
        $.ajax({
            type:"post",
            url:"allComment.form",
            data:{"pageIndexCom":+pageIndex,"blogid":+blogid},
            dataType:"json",
            success:function (data) {
                var result="";
                var but="";
                var nb=""
                nb+="<h2 class=\"widget-title font-size-22\">评论（"+data.numCom+"）</h2>"
                $(data.blogcommentList).each(function () {
                    result+=" <li>\n" +
                        "                <div class=\"comment\">\n" +
                        "                    <div class=\"comment-body\">\n" +
                        "                        <div class=\"meta-data\">\n" +
                        "                            <span class=\"comment__author\">"+this.user.username+"</span>\n" +
                        "                            <span class=\"comment__date\">"+this.commenttime+"</span>\n" +
                        "                        </div>\n" +
                        "                        <p class=\"comment-content\">\n" +
                        "                            "+this.commentinfo+"\n" +
                        "                        </p>\n" +
                        "                      <div class=\"comment-reply d-flex justify-content-between align-items-center\">\n" +
                        "                            <a class=\"template-btn comment__btn\" href='javascript:deleteComment("+this.commentid+","+this.user.userid+")'>\n" +
                        "                               <i class=\"la la-reply\"></i> 删除\n" +
                        "                            </a>\n" +
                        "                        </div>\n" +
                        "                    </div>\n" +
                        "                </div><!-- end comment -->\n" +
                        "            </li>"
                })
                    but+=" <div class=\"col-lg-12\">\n" +
                        "                <div class=\"page-navigation-wrap mt-4\">\n" +
                        "                    <div class=\"page-navigation mx-auto\">\n" +
                        "                        <a href='javascript:pageIndex("+(data.pageIndexCom-1)+")' class=\"page-go page-prev\">\n" +
                        "                            <i class=\"la la-arrow-left\"></i>\n" +
                        "                        </a>\n" +
                        "                        <ul class=\"page-navigation-nav\" style='width: '>\n" +
                        "                            <li ><a href='javascript:pageIndex(1)' class=\"page-go-link\">首页</a></li>\n" +
                        "                             <li class=\"active\">"+data.pageIndexCom+"/"+data.totalPage+"</li>" +
                        "                            <li ><a href='javascript:pageIndex("+data.totalPage+")' class=\"page-go-link\">尾页</a></li>\n"+
                        "                        </ul>\n" +
                        "                        <a href='javascript:pageIndex("+(data.pageIndexCom-1)+")' class=\"page-go page-next\">\n" +
                        "                            <i class=\"la la-arrow-right\"></i>\n" +
                        "                        </a>\n" +
                        "                    </div>\n" +
                        "                </div><!-- end page-navigation-wrap -->\n" +
                        "            </div><!-- end col-lg-12 -->"
                $("#nb").html(nb);
                $("#comindex").html(but);
                $("#allComment").html(result);
            }
        })
    }
    //删除评论
    function deleteComment(id,user){
        var commentid=id;
        var userid=user;
if (${empty user1}){
    alert("请先登录！")
} else {
        $.ajax({
            type:"post",
            url:"deleteComment.form",
            data:{"commentid":commentid,"userid":userid},
            success:function (data) {
                if (data=="success"){
                    pageIndex(1)
                }
                else if (data=="error") {
                    alert("这不是你发表的评论噢，无法删除")
                }
            }
        })
}
    }
    // 添加评论
    function addCom() {
            var blogidadd=$("#idcom").val();
            var email=$("#email").val();
            var comment=$("#comment").val();
            if (email.length==0||comment.length==0){
                alert("邮件地址和问题不能为空！")
            } else {
                var useremail = $("#email").val();
                if (useremail.length != 0) {
                    var reg = /^\w+@qq\.+com$/;
                    if (reg.test(useremail)) {
                        $.ajax({
                            type: "POST",
                            url: "getuser.form",
                            data: {"email": email},
                            success: function (data) {
                                if (data == "success") {
                                    $.ajax({
                                        type:"POST",
                                        url:"addComment.form",
                                        data:{"comment":comment,"blogidadd":+blogidadd},
                                        success:function (data) {
                                            pageIndex(1);
                                            $("#email").val("");
                                            $("#comment").val("");

                                        }
                                    })
                                } else {
                                    var con = confirm("“" + email + "”不是会员！\n是否注册会员？")
                                    if (con == true) {
                                        location.href = "sign-up.jsp"
                                    }
                                }
                            }
                        })
                    } else {
                        alert("“" + $("#email").val() + "”格式不正确 \n正确格式：xxxxxx@qq.com")
                        return false
                    }

                }
            }
    }
</script>
<section class="blog-area  padding-bottom-120px">
    <div class="container">
<div class="comments-wrap mt-5">
    <div id="nb">

    </div>
    <div class="title-shape"></div>
    <ul class="comments-list padding-top-40px" style="width: 700px;float: left">
        <div id="allComment">
            <li>
                <div class="comment">
                    <div class="comment-body">
                        <div class="meta-data">
                            <span class="comment__author">Matt Derry</span>
                            <span class="comment__date">17 Dec, 2018 - 4:00 PM</span>
                        </div>
                        <p class="comment-content">
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                            sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                            Ut enim ad minim veniam, quis nostrud exercitation.
                            Curabitur non nulla sit amet nisl tempus
                        </p>
                        <div class="comment-reply d-flex justify-content-between align-items-center">
                            <a class="template-btn comment__btn" href="#">
                                <i class="la la-reply"></i> 删除
                            </a>
                        </div>
                    </div>
                </div><!-- end comment -->
            </li>
        </div>

    </ul>
    <div class="comment-form padding-top-55px" style="width: 400px;float: right">
        <div class="user-form">
            <div class="section-heading">
                <h2 class="section__title font-size-22">发表评论</h2>
            </div><!-- end section-heading -->
            <div class="contact-form-action mt-4">
                <form method="post">
                    <div class="input-box">
                        <div class="form-group">
                            <input class="form-control" type="email" name="email" id="email" placeholder="电子邮件地址" <%if (user==null){%> value="" <%}else {%> value="<%=user.getUseremail()%>"<%}%>>
                            <span class="la la-envelope-o input-icon"></span>
                        </div><!-- end form-group -->
                    </div>
                    <div class="input-box">
                        <div class="form-group">
                            <textarea class="message-control form-control" name="message" id="comment" placeholder="在这里写下你的评论"></textarea>
                            <span class="la la-pencil input-icon"></span>
                        </div><!-- end form-group -->
                    </div>
                    <div class="btn-box">
                        <div class="form-group text-center mb-0">
                            <button class="template-btn border-0 w-100" type="button" onclick="addCom()">发表</button>
                        </div><!-- end form-group -->
                    </div>
                </form>
            </div><!-- end contact-form-action -->

        </div>
    </div>
</div>
        <div class="row" id="comindex" style="position: absolute;padding-top: 400px;padding-left: 150px">

        </div><!-- end row -->
    </div>
</section>
<!-- ================================
         END FOOTER AREA
================================= -->
<section class="footer-area padding-top-90px">
    <div id="particles-bg"></div>
    <div class="container">
        <div class="row">
            <div class="col-lg-3 column-td-6">
                <div class="footer-widget">
                    <a href="/about.jsp">
                        <img src="images/logo2.png" alt="footer logo" class="footer__logo">
                    </a>
                    <p class="padding-top-30px padding-bottom-20px">
                        ${hospital.hospitalinfo}
                    </p>
                    <span class="la la-dot-circle-o text-color-2">&nbsp;</span><a href="/contact.jsp" class="widget-title font-size-16 font-weight-medium pb-3 mb-0">遇到问题？联系我们！</a>
                </div><!-- end footer-widget -->
            </div><!-- end col-lg-3 -->
            <div class="col-lg-3 column-td-6">
                <div class="footer-widget">
                    <h3 class="widget-title">隐私与协议</h3>
                    <div class="section-divider"></div>
                    <ul class="list-items">
                        <li><a href="https://support.btcwinex.com/hc/zh-cn/articles/360031458571-%E5%B9%BF%E5%91%8A%E5%95%86%E5%8D%8F%E8%AE%AE">广告商协议</a></li>
                        <li><a href="https://www.66law.cn/contractmodel/26279.aspx">开发者协议</a></li>
                        <li><a href="https://www.jianshu.com/p/23097ab32d2f">隐私政策</a></li>
                        <li><a href="https://www.jianshu.com/p/23097ab32d2f">技术隐私</a></li>
                        <li><a href="https://www.mozilla.org/zh-CN/about/legal/acceptable-use/">可接受的用户策略</a></li>
                    </ul>
                </div><!-- end footer-widget -->
            </div><!-- end col-lg-3 -->
            <div class="col-lg-3 column-td-6">
                <div class="footer-widget">
                    <h3 class="widget-title">有用的连接</h3>
                    <div class="section-divider"></div>
                    <ul class="list-items">
                        <li><a href="/prevention.jsp">预防</a></li>
                        <li><a href="/about.jsp">关于我们</a></li>
                        <li><a href="http://www.whuh.com/">医院官网</a></li>
                        <li><a href="https://www.hust.edu.cn/">华中科技大学</a></li>
                        <li><a href="http://www.nhc.gov.cn/">中华人民共和国国家卫生健康委员会</a></li>
                    </ul>
                </div><!-- end footer-widget -->
            </div><!-- end col-lg-3 -->
            <div class="col-lg-3 column-td-6">
                <div class="footer-widget">
                    <h3 class="widget-title">联系我们</h3>
                    <div class="section-divider"></div>
                    <ul class="list-items">
                        <li><span class="mr-1 font-weight-medium text-color">地址:</span>${hospital.hospitaladdress}</li>
                        <li><span class="mr-1 font-weight-medium text-color">邮件:</span><a href="#">${hospital.hospitalemail}</a></li>
                        <li><span class="mr-1 font-weight-medium text-color">电话:</span><a href="#">027-${hospital.hospitaltel}</a></li>
                        <li><span class="mr-1 font-weight-medium text-color">Fax:</span><a href="#">当前暂无传真</a></li>
                    </ul>
                </div><!-- end footer-widget -->
            </div><!-- end col-lg-3 -->
        </div><!-- end row -->
        <div class="row">
            <div class="col-lg-12">
                <div class="copyright-content text-center">
                    <p class="copy__desc">Copyrights © 2002-2015 All Rights Reserved.</p>
                </div>
            </div><!-- end col-lg-12 -->
        </div><!-- end copyright-content -->
    </div><!-- end container -->
</section><!-- end footer-area -->
<!-- ================================
          END FOOTER AREA
================================= -->

<!-- start scroll top -->
<div id="scroll-top">
    <i class="fa fa-angle-up" title="Go top"></i>
</div>
<!-- end scroll top -->


<!-- template js files -->
<script src="js/jquery-3.4.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/magnific-popup.min.js"></script>
<script src="js/purecounter.js"></script>
<script src="js/particles.min.js"></script>
<script src="js/particlesRun.js"></script>
<script src="js/smooth-scrolling.js"></script>
<script src="js/main.js"></script>
</body>
</html>