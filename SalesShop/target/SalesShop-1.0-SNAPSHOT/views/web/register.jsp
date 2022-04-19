<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Đăng Ký</title>
    <link rel="stylesheet" href="../../css/web/grid.css">
    <link rel="stylesheet" href="../../css/web/main.css">
    <link rel="stylesheet" href="../../css/web/base.css">
    <link rel="stylesheet" href="../../css/web/register.css">
    <link rel="stylesheet" href="../../css/web/responsive.css">
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
</head>
<body>
    <c:import url="header.jsp"></c:import>
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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="../../js/web/register.js"></script>
</body>
</html>
