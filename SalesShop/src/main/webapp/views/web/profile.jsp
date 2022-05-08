<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Order</title>
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
            crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css"
          integrity="sha512-10/jx2EXwxxWqCLX/hHth/vu2KY3jCF70dCQB8TSgNjbCVAC/8vai53GfMDrO2Emgwccf2pJqxct9ehpzG+MTw=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="../../css/web/profile.css">
    <link rel="stylesheet" href="../../css/web/my-order.css">
</head>

<body>

<div class="main">
    <div class="main-left">
        <ul>
            <li>
                <a href="">
                        <span class="icons">
                            <em class="fas fa-ghost"></em>
                        </span>
                    <span class="content">
                            Admin
                        </span>
                </a>
            </li>
            <li>
                <a href="">
                        <span class="icons">
                            <em class="fas fa-home"></em>
                        </span>
                    <span class="content">
                            Trang chủ
                        </span>
                </a>
            </li>

            <li>
                <a href="">
                        <span class="icons">
                            <em class="far fa-envelope"></em>
                        </span>
                    <span class="content">
                            Tài khoản
                        </span>
                </a>
            </li>
            <li class="active">
                <a href="">
                        <span class="icons">
                            <em class="fas fa-cog"></em>
                        </span>
                    <span class="content">
                            Đơn hàng
                        </span>
                </a>
            </li>
            <li>
                <a href="">
                        <span class="icons">
                            <em class="fas fa-sign-out-alt"></em>
                        </span>
                    <span class="content">
                            Đăng xuất
                        </span>
                </a>
            </li>
        </ul>
    </div>
    <div class="main-right">
        <div class="container rounded bg-white">
            <form id="form" class="row">
                <div class="col-md-3 border-right">
                    <input type="hidden" name="id"
                           value="${customer.ID}">
                    <div
                            class="d-flex flex-column align-items-center text-center p-3 py-5">
                        <img id="avatar" class="rounded-circle mt-5" width="150px"
                             src="../../${customer.avatar}"><span class="font-weight-bold">${customer.name}</span><span
                            class="text-black-50">${customer.email}</span><span> </span>
                    </div>
                </div>
                <input id="address-detail" type="hidden" name="address" value="${customer.address}">
                <div class="col-md-5 border-right">
                    <div class="p-3 py-5">
                        <div class="d-flex justify-content-between align-items-center mb-3">
                            <h2 class="text-right" style="color: #49a2faed">Profile Settings</h2>
                        </div>
                        <div class="row mt-2">
                            <div class="col-md-6">
                                <label class="labels">Name</label><input type="text"
                                                                         class="form-control" name="firstName"
                                                                         placeholder="first name"
                                                                         value="firstname">
                            </div>
                            <div class="col-md-6">
                                <label class="labels">Surname</label><input type="text"
                                                                            class="form-control" name="lastName"
                                                                            value="lastname"
                                                                            placeholder="enter your last name">
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-md-12">
                                <label class="labels">Mobile Number</label><input type="text"
                                                                                  class="form-control" name="phone"
                                                                                  placeholder="enter phone number"
                                                                                  value="${customer.phone}">
                            </div>
                            <div class="col-md-12 mt-3">
                                <label class="labels">Email ID</label><input type="text"
                                                                             class="form-control" name="email"
                                                                             placeholder="enter email id"
                                                                             value="${customer.email}">
                            </div>
                            <div class="col-md-12 mt-3">
                                <label class="labels">Province</label> <select
                                    class="selectpicker show-tick form-control" id="province">

                            </select>
                            </div>
                            <div class="col-md-12 mt-3">
                                <label class="labels">District</label> <select
                                    class="selectpicker show-tick form-control" id="district">

                            </select>
                            </div>
                            <div class="col-md-12 mt-3">
                                <label class="labels">Ward</label> <select
                                    class="selectpicker show-tick form-control" id="ward">

                            </select>
                            </div>
                        </div>
                        <div class="mt-5 text-center">
                            <button class="btn btn-primary profile-button" id="saveProfile"
                                    type="button">Save Profile
                            </button>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="p-3 py-5">
                        <div class="mb-3">
                            <label for="formFileSm" class="form-label">Chose an avatar</label>
                            <input class="form-control form-control-sm" id="formFileSm"
                                   type="file">
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript" src="../../js/web/loadAddress.js"></script>
<script type="text/javascript" src="../../js/web/profile.js"></script>
</body>
</html>