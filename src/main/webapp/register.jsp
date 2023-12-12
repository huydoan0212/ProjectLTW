<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String name = (String) request.getParameter("name"); %>
<% String username = (String) request.getParameter("username"); %>
<% String phone = (String) request.getParameter("phone"); %>
<% String email = (String) request.getParameter("email"); %>
<% String password = (String) request.getParameter("password"); %>
<% String error = (String) request.getAttribute("error");%>
<%--<% String success = (String) request.getAttribute("success");%>--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Đăng kí ngay</title>
    <link rel="stylesheet" href="./css/register.css">
    <script src="https://kit.fontawesome.com/3e135170bd.js" crossorigin="anonymous"></script>
</head>
<body>
<div id="header">
  <div class="container">
    <ul>
      <li class="logo">
        <img src="./img/logo-removebg-preview.png" alt="logo">
      </li>
      <li class="label">
        <h2>Đăng ký</h2>
      </li>
      <li class="help">
        <a href="contact.jsp">Bạn cần giúp đỡ?</a>
      </li>
    </ul>
  </div>
</div>
<div class="slider">
  <div class="container">
    <div class="slider-logo">
      <img src="./img/logo-removebg-preview.png" alt="">
    </div>
    <div class="slider-form">
      <form action="./userController" method="post">
        <h1>Đăng ký</h1>
        <div class="input-box">
          <input type="text" value="<%=(name!=null && name!="")? name:""%>" placeholder="Họ và tên" name="name">
        </div>
        <div class="input-box">
          <input type="email" value="<%=(email!=null && email!="")? email:""%>" placeholder="Email" name="email">
        </div>
        <div class="input-box">
          <input type="text" value="<%=(phone!=null && phone!="")? phone:""%>" placeholder="Số điện thoại" name="phone">
        </div>
        <div class="input-box">
          <input type="text" value="<%=(username!=null && username!="")? username:""%>" placeholder="Tên đăng nhập" name="username">
        </div>
        <div class="input-box">
          <input type="password" id="password" placeholder="Mật khẩu" name="password">
        </div>
        <div class="input-box">
          <input type="password" id="repassword" placeholder="Lặp lại mật khẩu" name="repassword">
        </div>
        <div class="check">
          <input type="checkbox">
          <p>Tôi đồng  với các điều khoản bảo mật</p>
        </div>
        <span style="color: red; font-size: 14px;padding-left: 20px;"><%=(error != null && error != "") ? error : ""%></span>
        <div class="signin-btn">
          <button type="submit" class="btn">Đăng Ký</button>
        </div>
<%--        <span style="color: green; font-size: 18px;"><%=(success != null && success != "") ? success : ""%>--%>
      </form>
    </div>
  </div>
</div>
<%@include file="footer.jsp"%>
</div>
</body>
</html>