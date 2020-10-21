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
<script src="js/jquery.js" type="text/javascript"></script>
<script>
    $(function () {
        $("#useremail").blur(function () {
            var useremail=$("#useremail").val();
            if (useremail.length!=0){
                var reg=/^\w+@qq\.+com$/;
                if (reg.test(useremail)){

                }else {
                    alert("“"+$("#useremail").val()+"”格式不正确 \n正确格式：xxxxxx@qq.com")

                }
            }else {
                alert("邮箱为空！")
            }
        })
    })
        function login() {
            var useremail=$("#useremail").val();
            var userpwd=$("#userpwd").val();
            if (useremail.length==0|| userpwd.length==0 ){
                alert("邮件地址或密码不能为空！！")
            } else {
                $.ajax({
                    type: "POST",
                    url: "login.form",
                    data: {"useremail": useremail, "userpwd": userpwd},
                    dataType:"json",
                    success: function (data) {
                        if (data==null){
                            alert("邮件地址或密码输入错误！！");
                        }else {
                            alert("登录成功！")
                            location.href="index.jsp"
                        }
                    },error:function () {
                        alert("账号或密码错误")
                    }
                })
            }
        }

</script>
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
                        <h2 class="section__title">Login</h2>
                    </div>
                </div><!-- end breadcrumb-content -->
            </div><!-- end col-lg-12 -->
        </div><!-- end row -->
    </div><!-- end container -->
    <div class="breadcrumb-list">
        <ul class="list-items">
            <li class="active__list-item"><a href="index.html">home</a></li>
            <li>Login</li>
        </ul>
    </div>
</section><!-- end breadcrumb-area -->
<!-- ================================
    END BREADCRUMB AREA
================================= -->

<!-- ================================
       START CONTACT AREA
================================= -->
<section class="contact-area padding-top-140px padding-bottom-120px">
    <div class="container">
        <div class="row">
            <div class="col-lg-7 mx-auto">
                <div class="login-form">
                    <div class="user-form">
                        <div class="section-heading text-center">
                            <h5 class="section__meta">登录帐户</h5>
                            <h2 class="section__title font-size-30">登录您的帐户</h2>
                            <p class="font-size-16 mt-2">
                                使用您的社交网络，注意：Costar 绝不会将 <br>
                                内容发布到您的社交页面。
                            </p>
                        </div><!-- end section-heading -->
                        <div class="contact-form-action mt-4">
                            <form method="post">
                                <div class="row">
                                    <div class="col-lg-4">
                                        <div class="form-group">
                                            <button class="template-btn btn-bg-1 border-0 w-100" type="submit">
                                                <i class="fa fa-google mr-2"></i> Google
                                            </button>
                                        </div>
                                    </div><!-- end col-lg-4 -->
                                    <div class="col-lg-4">
                                        <div class="form-group">
                                            <button class="template-btn btn-bg-2 border-0 w-100" type="submit">
                                                <i class="fa fa-facebook mr-2"></i> Facebook
                                            </button>
                                        </div>
                                    </div><!-- end col-lg-4 -->
                                    <div class="col-lg-4">
                                        <div class="form-group">
                                            <button class="template-btn btn-bg-3 border-0 w-100" type="submit">
                                                <i class="fa fa-twitter mr-2"></i> Twitter
                                            </button>
                                        </div>
                                    </div><!-- end col-lg-4 -->
                                    <div class="col-lg-12">
                                        <div class="account-assist mt-4 mb-4 text-center">
                                            <p class="account__desc">或</p>
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="input-box">
                                            <div class="form-group">
                                                <input class="form-control" type="email" name="email" id="useremail" placeholder="电子邮件地址">
                                                <span class="la la-envelope-o input-icon"></span>
                                            </div><!-- end form-group -->
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="input-box">
                                            <div class="form-group">
                                                <input class="form-control" type="text" name="text" id="userpwd" placeholder="密码">
                                                <span class="la la-lock input-icon"></span>
                                            </div><!-- end form-group -->
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="form-group">
                                            <div class="custom-checkbox mr-0 d-flex align-items-center justify-content-between">
                                                <div>
                                                    <input type="checkbox" id="chb1" checked>
                                                    <label for="chb1" class="mb-0">保持我登录
                                                    </label>
                                                </div>
                                                <div>
                                                    <a href="recover.jsp" class="text-color-2 font-weight-medium ">忘记密码？</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="btn-box">
                                            <div class="form-group text-center mb-0">
                                                <button class="template-btn border-0 w-100" type="button" onclick="login()">登录我的账户</button>
                                            </div><!-- end form-group -->
                                        </div>
                                    </div>
                                </div><!-- end row -->
                            </form>
                        </div><!-- end contact-form-action -->
                    </div>
                </div>
            </div><!-- end col-lg-7 -->
        </div><!-- end row -->
    </div><!-- end container -->
</section><!-- end contact-area -->
<!-- ================================
       START CONTACT AREA
================================= -->

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