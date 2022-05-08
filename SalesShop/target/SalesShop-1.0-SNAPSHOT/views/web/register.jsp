<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Đăng Ký</title>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="stylesheet" href="../../css/web/bootstrap.css">
    <link rel="stylesheet" href="../../css/web/header.css">
    <link rel="stylesheet" href="../../css/web/register.css">
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
    <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300;400;500;600;700&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" integrity="sha512-10/jx2EXwxxWqCLX/hHth/vu2KY3jCF70dCQB8TSgNjbCVAC/8vai53GfMDrO2Emgwccf2pJqxct9ehpzG+MTw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    <c:import url="header.jsp"></c:import>
    <div class="form-register">
        <div class="wrapper">
            <form id="form" class="form" action="" method="post">
                <div class="inputfield">
                    <label>Họ</label>
                    <input id="firstname" name="firstname" type="text" class="input">
                </div>

                <div class="inputfield">
                    <label>Tên </label>
                    <input id="lastname" name="lastname" type="text" class="input">
                </div>

                <div class="inputfield">
                    <label>Tên tài khoản </label>
                    <input id="username" name="username" type="text" class="input">
                </div>

                <div class="inputfield">
                    <label>Mật Khẩu</label>
                    <input id="pass" name="password" type="password" class="input">
                </div>

                <div class="inputfield">
                    <label>Xác Nhận Mật Khẩu</label>
                    <input type="password" class="input">
                </div>

                <div class="inputfield">
                    <label>Giới Tính</label>
                    <div class="custom_select">
                        <select id="gender" name="gender">
                            <option value="">Lựa Chọn</option>
                            <option value="0">Nam</option>
                            <option value="1">Nữ</option>
                        </select>
                    </div>
                </div>

                <div class="inputfield">
                    <label>Địa Chỉ Email</label>
                    <input id="email" name="email" type="text" class="input">
                </div>

                <div class="inputfield terms">
                    <label class="check">
                        <input type="checkbox">
                        <span class="checkmark"></span>
                    </label>
                    <p>Tôi đồng ý với điều khoản </p>
                </div>

                <div class="inputfield">
                    <input id="submit" type="submit" value="Đăng Kí" class="btn">
                </div>
            </form>
        </div>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="../../js/web/register.js"></script>
</body>
</html>
