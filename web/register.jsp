<%-- 
    Document   : register
    Created on : Mar 8, 2024, 12:35:53 AM
    Author     : huyho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <!--register area start-->
                    <div class="col-lg-6 col-md-6">
                        <div class="account_form register">
                            <h2>Đăng ký</h2>
                            <form action="user?action=signup" method="POST">
                                <p style="color: red; align-content: center;">
                                        ${requestScope.error_pass}
                                </p>
                                <p style="color: blue; align-content: center;">
                                        ${requestScope.done}
                                </p>
                                <p style="color: red; align-content: center;">
                                        ${requestScope.emailavailable}
                                </p>
                                <p>   
                                    <label>Email <span>*</span></label>
                                    <input type="email" name="user_email">
                                </p>
                                <p>   
                                    <label>Mật khẩu <span>*</span></label>
                                    <input type="password" name="user_pass">
                                </p>
                                <p>   
                                    <label>Nhập lại mật khẩu <span>*</span></label>
                                    <input type="password" name="re_pass">
                                </p>
                                <div class="login_submit">
                                    <button type="submit">Đăng ký</button>
                                </div>
                            </form>
                        </div>    
                    </div>
                    <!--register area end-->
    </body>
</html>
