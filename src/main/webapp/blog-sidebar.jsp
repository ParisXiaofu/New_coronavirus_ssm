<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.flh.model.entity.User" %>
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
                        <h2 class="section__title">所有博客</h2>
                    </div>
                </div><!-- end breadcrumb-content -->
            </div><!-- end col-lg-12 -->
        </div><!-- end row -->
    </div><!-- end container -->
    <div class="breadcrumb-list">
        <ul class="list-items">
            <li class="active__list-item"><a href="index.html">主页</a></li>
            <li>所有博客</li>
        </ul>
    </div>
</section><!-- end breadcrumb-area -->
<!-- ================================
    END BREADCRUMB AREA
================================= -->

<!--======================================
        START BLOG AREA
======================================-->
<script src="js/jquery.js" type="text/javascript"></script>
<script>
    blogIndex(1)
    function select(index) {
        var pageIndex=index;
        var sel=$("#sel").val();
        if (sel.length==0||sel==''||sel==' '){
            blogIndex(1)
        }else {
            $.ajax({
                type:"post",
                url:"select.form",
                data:{"pageindex":+pageIndex,"blogtopic":sel,"doctorname":sel},
                dataType:"json",
                success:function (data) {
                    var result=""
                    var blogindex=""
                    $(data.blogListS).each(function () {
                        result+=" <div class=\"col-lg-6 column-td-6\">\n" +
                            "                <div class=\"card-item\">\n" +
                            "                    <div class=\"card-img-box\">\n" +
                            "                        <img src='images/blog/"+this.blogpic+"' alt=\"\">\n" +
                            "                    </div>\n" +
                            "                    <div class=\"card-content\">\n" +
                            "                        <h4 class=\"card-meta\"><i class=\"la la-clock-o\"></i> 4 min read</h4>\n" +
                            "                        <h3 class=\"card-title\"><a href='blogInfo.form?blogid="+this.blogid+"'>"+this.blogtopic+"</a></h3>\n" +
                            "                        <ul class=\"list-items\">\n" +
                            "                            <li class=\"card-dot-active\"><span class=\"la la-user\"></span><a href='doctorInfo.form?doctorid="+this.doctor.doctorid+"'>"+this.doctor.doctorname+"</a></li><br>\n" +
                            "                            <li><span class=\"la la-calendar\"></span>"+this.blogtime+"</li>\n" +
                            "                        </ul>\n" +
                            "                        <a href='blogInfo.form?blogid="+this.blogid+"' class=\"template-btn btn-layout-small\">阅读详情</a>\n" +
                            "                    </div><!-- end blog-content -->\n" +
                            "                </div><!-- end card-item -->\n" +
                            "            </div><!-- end col-lg-4 -->";
                    });
                    blogindex+="  <div class=\"page-navigation mx-auto\">\n" +
                        "                        <a href='javascript:select("+(data.pageindex-1)+")' class=\"page-go page-prev\">\n" +
                        "                            <i class=\"la la-arrow-left\"></i>\n" +
                        "                        </a>\n" +
                        "                        <ul class=\"page-navigation-nav\" id='num'>\n" +
                        "<li id='cl'><a href='javascript:select(1)' class=\"page-go-link\" >主页</a></li>\n" +
                        "<li id='cl'>"+data.pageindex+"/"+data.totalPage+"</li>\n" +
                        "<li id='cl'><a href='javascript:select("+data.totalPage+")' class=\"page-go-link\" >尾页</a></li>\n" +
                        "                        </ul>\n" +
                        "                        <a href='javascript:select("+(data.pageindex+1)+")' class=\"page-go page-next\">\n" +
                        "                            <i class=\"la la-arrow-right\"></i>\n" +
                        "                        </a>\n" +
                        "                    </div>"

                    $("#blogindex").html(blogindex)
                    $("#allBlog").html(result)

                }
            })
        }
    }
    function blogIndex(index) {
        var pageIndex2=index;
        $.ajax({
            type:"post",
            url:"allBlog.form",
            data:{"pageIndex2":pageIndex2},
            dataType:"json",
            success:function (data) {
                var result=""
                var blogindex=""
                $(data.blogList1).each(function () {
                    result+=" <div class=\"col-lg-6 column-td-6\">\n" +
                        "                <div class=\"card-item\">\n" +
                        "                    <div class=\"card-img-box\">\n" +
                        "                        <img src='images/blog/"+this.blogpic+"' alt=\"\">\n" +
                        "                    </div>\n" +
                        "                    <div class=\"card-content\">\n" +
                        "                        <h4 class=\"card-meta\"><i class=\"la la-clock-o\"></i> 4 min read</h4>\n" +
                        "                        <h3 class=\"card-title\"><a href='blogInfo.form?blogid="+this.blogid+"'>"+this.blogtopic+"</a></h3>\n" +
                        "                        <ul class=\"list-items\">\n" +
                        "                            <li class=\"card-dot-active\"><span class=\"la la-user\"></span><a href='doctorInfo.form?doctorid="+this.doctor.doctorid+"'>"+this.doctor.doctorname+"</a></li><br>\n" +
                        "                            <li><span class=\"la la-calendar\"></span>"+this.blogtime+"</li>\n" +
                        "                        </ul>\n" +
                        "                        <a href='blogInfo.form?blogid="+this.blogid+"' class=\"template-btn btn-layout-small\">阅读详情</a>\n" +
                        "                    </div><!-- end blog-content -->\n" +
                        "                </div><!-- end card-item -->\n" +
                        "            </div><!-- end col-lg-4 -->";
                });
                if (${empty totalPageBlogList}){
                    location.href="blog-sidebar.jsp";
                }
                blogindex+="  <div class=\"page-navigation mx-auto\">\n" +
                    "                        <a href='javascript:blogIndex("+(data.pageIndex2-1)+")' class=\"page-go page-prev\">\n" +
                    "                            <i class=\"la la-arrow-left\"></i>\n" +
                    "                        </a>\n" +
                    "                        <ul class=\"page-navigation-nav\" id='num'>\n" +
                    "<c:forEach var="num" items="${sessionScope.totalPageBlogList}">\n " +
                    "<input type=\"hidden\"  id='ok' value='${num}'>\n"+
                    "<li id='cl'><a href='javascript:blogIndex(${num})' class=\"page-go-link\" >${num}</a></li>\n" +
                    "</c:forEach>\n" +
                    "                        </ul>\n" +
                    "                        <a href='javascript:blogIndex("+(data.pageIndex2+1)+")' class=\"page-go page-next\">\n" +
                    "                            <i class=\"la la-arrow-right\"></i>\n" +
                    "                        </a>\n" +
                    "                    </div>"

                $("#blogindex").html(blogindex)
                $("#allBlog").html(result)

            }
        })
    }
</script>
<section class="blog-area padding-top-140px padding-bottom-120px">
    <div class="container">
        <div class="row">
            <script src="js/jquery.js" type="text/javascript"></script>
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
                 * 博客类型
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
                        <h3 class="widget-title">搜索</h3>
                        <div class="section-divider"></div>
                        <div class="contact-form-action mt-4">
                                <div class="form-group mb-0">
                                    <input class="form-control pl-3" type="text" placeholder="搜索此处"  id="sel">
                                    <button class="search-btn" onclick="select(1)"><i class="la la-search"></i></button>
                                </div>
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
            <div class="col-lg-8">
                <div class="blog-sidebar-wrap">
                    <div class="page-navigation-wrap mt-4" id="blogindex" style="padding-bottom: 30px">
                    </div><!-- end page-navigation-wrap -->
                    <div class="row" id="allBlog">


                    </div><!-- end row -->
                </div>
            </div><!-- end col-lg-8 -->
        </div><!-- end row -->
        <div class="row">
            <div class="col-lg-12">

            </div><!-- end col-lg-12 -->
        </div><!-- end row -->
    </div><!-- end container -->
</section><!-- end blog-area -->

<!--======================================
        END BLOG AREA
======================================-->

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