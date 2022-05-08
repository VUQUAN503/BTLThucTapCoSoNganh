<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Login</title>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="stylesheet" href="../../css/web/header.css">
    <link rel="stylesheet" href="../../css/web/login.css">
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
    <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300;400;500;600;700&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" integrity="sha512-10/jx2EXwxxWqCLX/hHth/vu2KY3jCF70dCQB8TSgNjbCVAC/8vai53GfMDrO2Emgwccf2pJqxct9ehpzG+MTw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    <c:import url="header.jsp"></c:import>
    <div class="form-login">
        <div class="form-container">
            <div class="forms">
                <div class="form login">
                    <span class="title">Login</span>

                    <form action="../../login" method="post">
                        <div class="input-field">
                            <input id="username" name="name" type="text" placeholder="Tên Đăng Nhập" required>
                            <i class="uil uil-envelope icon"></i>
                        </div>
                        <div class="input-field">
                            <input id="password" name="pass" type="password" class="password" placeholder="Mật Khẩu" required>
                            <i class="uil uil-lock icon"></i>
                            <i class="uil uil-eye-slash showHidePw"></i>
                        </div>

                        <div class="checkbox-text">
                            <div class="checkbox-content">
                                <input type="checkbox" id="logCheck">
                                <label for="logCheck" class="text">Lưu mật khẩu</label>
                            </div>

                            <a href="#" class="text">Quên mật khẩu?</a>
                        </div>

                        <div class="input-field button">
                            <input type="submit" value="Login Now">
                        </div>
                    </form>

                    <div class="login-signup">
                    <span class="text">Bạn chưa có tài khoản ?
                        <a href="register.jsp" class="text signup-link">Đăng Kí </a>
                    </span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="../../js/web/login.js"></script>
</body>
</html>
