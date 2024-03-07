<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<!DOCTYPE html>
<html class="no-js" lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Reid - contact us</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

        <!-- CSS 
        ========================= -->


        <!-- Plugins CSS -->
        <link rel="stylesheet" href="assets/css/plugins.css">

        <!-- Main Style CSS -->
        <link rel="stylesheet" href="assets/css/style.css">

    </head>

    <body>

        <!--Offcanvas menu area start-->
        <div class="off_canvars_overlay"></div>
        <jsp:include page="layout/menu.jsp"/>
        <!--breadcrumbs area start-->
        <div class="breadcrumbs_area other_bread">
            <div class="container">   
                <div class="row">
                    <div class="col-12">
                        <div class="breadcrumb_content">
                            <ul>
                                <li><a href="index.html">Trang chủ</a></li>
                                <li>/</li>
                                <li>Liên hệ</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>         
        </div>
        <!--breadcrumbs area end-->


        <!--contact area start-->
        <div class="contact_area">
            <div class="container">   
                <div class="row">
                    <div class="col-lg-6 col-md-12">
                        <div class="contact_message content">
                            <h3>Liên hệ</h3>
                            <ul>
                                <li><i class="fa fa-fax"></i>  Đội 3, thôn Vĩnh Lộc, xã Thư Phú, huyện Thường Tín, Thành Phố Hà Nội</li>
                                <li><i class="fa fa-phone"></i> (+84) 984868073 </li>
                                <li><i class="fa fa-envelope-o"></i>huyhoanghht2003@gmail.com</li>
                            </ul>             
                        </div> 
                    </div>
                    <div class="col-lg-6 col-md-12">
                        <div class="contact_message form">
                            <h3>Gửi thông tin phản hồi</h3>   
                            <form id="contact-form" method="GET" action="https://script.google.com/macros/s/AKfycby2HoMCJyTeclcs-4VlInS-NG_hs161qiMTiuzUOpNZp_YRsmk/exec">
                                <p>       
                                    <label>  Địa chỉ email</label>
                                    <input name="Email" pattern="[^ @]*@[^ @]*" placeholder="Email *" required="" value="" type="email">
                                </p>
                                <p>          
                                    <label>  Tiêu đề</label>
                                    <input name="Subject" placeholder="Subject *" required="" value="" type="text">
                                </p>    
                                <div class="contact_textarea">
                                    <label>  Thông tin</label>
                                    <input placeholder="Message *" name="Message" required="" value="" class="form-control2" >    
                                </div>
                                <br>
                                <button type="submit"> Send</button>
                            </form> 
                        </div> 
                    </div>
                </div>
            </div>    
        </div>
        <!--contact area end-->


        <jsp:include page="layout/footer.jsp"/>

        <!-- JS
        ============================================ -->

        <!-- Plugins JS -->
        <script src="assets/js/plugins.js"></script>

        <!-- Main JS -->
        <script src="assets/js/main.js"></script>
    </body>

</html>