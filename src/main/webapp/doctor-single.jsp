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
<script src="js/jquery.js" type="text/javascript"></script>
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
                        <h2 class="section__title">${doctor.doctorname}</h2>
                    </div>
                </div><!-- end breadcrumb-content -->
            </div><!-- end col-lg-12 -->
        </div><!-- end row -->
    </div><!-- end container -->
    <div class="breadcrumb-list">
        <ul class="list-items">
            <li class="active__list-item"><a href="index.html">主页</a></li>
            <li class="active__list-item">其他</li>
            <li>${doctor.doctorname}</li>
        </ul>
    </div>
</section><!-- end breadcrumb-area -->
<!-- ================================
    END BREADCRUMB AREA
================================= -->

<!--======================================
        START TEAM AREA
======================================-->
<section class="team-detail-area padding-top-140px padding-bottom-120px">
    <div class="container">
        <div class="row">
            <div class="col-lg-4">
                <div class="team-single-img">
                    <img src="images/doctor/${doctor.doctoremail}" alt="team image" class="team__img" style="border: whitesmoke 10px double">
                </div><!-- end team-single-img -->
            </div><!-- end col-lg-4 -->
            <div class="col-lg-8">
                <div class="team-single-content">
                    <div class="team-title-box">
                        <h3 class="widget-title font-size-26">${doctor.doctorname}</h3>
                        <span class="team-single__meta">呼吸与危重症医学科专家</span>
                    </div>
                    <div class="row mt-4">
                        <div class="col-lg-6">
                            <div class="author-content">
                                <h3 class="widget-title font-size-16 pb-3">职称</h3>
                                <ul class="list-items">
                                    <c:forEach var="education" items="${sessionScope.doctor.educationList}">
                                        <li><span class="la la-dot-circle-o text-color-2"></span>${education.educationname}</li>
                                    </c:forEach>
                                </ul>
                            </div><!-- end author-content -->
                        </div><!-- end col-lg-6 -->
                        <div class="col-lg-6">
                            <div class="author-content">
                                <h3 class="widget-title font-size-16 pb-3">专业专长</h3>
                                <ul class="list-items">
                                    <c:forEach var="porfessional" items="${sessionScope.doctor.porfessionalList}">
                                        <li><span class="la la-dot-circle-o text-color-2"></span>${porfessional.porfessionalname} </li>
                                    </c:forEach>
                                </ul>
                            </div><!-- end author-content -->
                        </div><!-- end col-lg-6 -->
                    </div><!-- end row -->
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="author-content author-box-social padding-top-20px">
                                <h3 class="widget-title font-size-16 pb-3">所在科室</h3>
                                <ul class="list-items">
                                    <li><span class="la la-dot-circle-o text-color-2"></span>呼吸与危重症医学科</li>
                                </ul>
                            </div>
                        </div><!-- end col-lg-6 -->
                        <div class="col-lg-6">
                            <div class="author-content author-box-social padding-top-20px">
                                <h3 class="widget-title font-size-16 pb-3">社交概况</h3>
                                <ul class="social-links">
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                </ul>
                            </div>
                        </div><!-- end col-lg-6 -->
                    </div><!-- end row -->
                </div><!-- end team-single-content -->
            </div><!-- end col-lg-8 -->
        </div><!-- end row -->
        <div class="row">
            <div class="col-lg-8">
                <div class="author-about-content padding-top-45px">
                    <h3 class="widget-title font-size-26">关于${doctor.doctorname}医生</h3>
                    <div class="section-description pt-2">
                        <p class="section__desc">
                        ${doctor.doctorinfo}
                    </div>
                    <h3 class="widget-title font-size-26">${doctor.doctorname}医生的文章</h3>
                    <div class="team-post-wrap mt-4">
                        <div class="row">
                            <c:forEach var="blog1" items="${sessionScope.BlogDocList}" end="1">
                                <div class="col-lg-6">
                                    <div class="card-item">
                                        <div class="card-img-box">
                                            <img src="images/blog/${blog1.blogpic}" alt="">
                                        </div>
                                        <div class="card-content">
                                            <h4 class="card-meta"><i class="la la-clock-o"></i> 4 min read</h4>
                                            <h3 class="card-title"><a href="blog-single.jsp">${blog1.blogtopic}</a></h3>
                                            <ul class="list-items">
                                                <li class="card-dot-active"><span class="la la-user"></span><a href="#">${doctor.doctorname}</a></li>
                                                <li><span class="la la-calendar"></span>${blog1.blogtime}</li>
                                            </ul>
                                            <a href='blogInfo.form?blogid=${blog1.blogid}' class="template-btn btn-layout-small">阅读详情</a>
                                        </div><!-- end blog-content -->
                                    </div>
                                </div>
                            </c:forEach>
                        </div><!-- end row -->
                    </div>
                </div><!-- end author-about-content -->
            </div><!-- end col-lg-8 -->
            <script>
                // 咨询问题
                $(function () {
                    $("#goto").click(function () {
                        var email=$("#email").val();
                        var question=$("#question").val();
                        var doctorid=$("#doctorid").val()
                        if (email.length==0||question.length==0){
                            alert("邮件地址和问题不能为空！")
                        } else {
                            if (email.length != 0) {
                                var reg = /^\w+@qq\.+com$/;
                                if (reg.test(email)) {
                                    $.ajax({
                                        type: "POST",
                                        url: "getuser.form",
                                        data: {"email":email},
                                        success: function (data) {
                                            if (data == "success") {
                                                $.ajax({
                                                    type:"Post",
                                                    url:"addDocQue.form",
                                                    data:{"que":+question,"doctorid":+doctorid},
                                                    success:function (data) {
                                                        alert("问题提交成功")
                                                        $("#email").val("");
                                                        $("#question").val("");
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
                    });
                })
            </script>
            <input type="hidden" id="doctorid" value="${doctor.doctorid}">
            <div class="col-lg-4">
                <div class="team-form padding-top-45px">
                    <div class="user-form">
                        <div class="section-heading">
                            <h5 class="section__meta">取得联系</h5>
                            <h2 class="section__title font-size-20 font-weight-medium">和他(她)联系！寻求帮助</h2>
                        </div><!-- end section-heading -->
                        <div class="contact-form-action mt-4">
                            <form method="POST" name="contactform" >
                                <div class="input-box">
                                    <div class="form-group">
                                        <input class="form-control" type="email" name="email" placeholder="电子邮件地址" id="email" <%if (user==null){%> value="" <%}else {%> value="<%=user.getUseremail()%>"<%}%>>
                                        <span class="la la-envelope-o input-icon"></span>
                                    </div><!-- end form-group -->
                                </div>
                                <div class="input-box">
                                    <div class="form-group">
                                        <textarea class="message-control form-control" name="message" placeholder="在这里写下你的问题" id="question"></textarea>
                                        <span class="la la-pencil input-icon"></span>
                                    </div><!-- end form-group -->
                                </div>
                                <div class="btn-box">
                                    <div class="form-group text-center mb-0">
                                        <button class="template-btn border-0 w-100" type="button" id="goto">提交问题</button>
                                    </div><!-- end form-group -->
                                </div>
                            </form>
                        </div><!-- end contact-form-action -->
                    </div>
                </div>
            </div><!-- end col-lg-4 -->
        </div><!-- end row -->
    </div><!-- end container -->
</section>
<!--======================================
        END TEAM AREA
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