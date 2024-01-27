<% Integer idParam = null; %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <meta charset="UTF-8">
  <title>Quản lí - Cập nhập Blog</title>
  <link rel="stylesheet" href="./css/bootstrap.min.css">
  <link rel="stylesheet" href="./css/all.min.css">
  <link rel="stylesheet" href="./css/style.css">
  <link rel="stylesheet" href="./css/pageAdmin_product.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <script src="./js/pageAdmin_main.js"></script>
  <script src="./js/jquery.dataTables.js"></script>
  <script src="./js/bootstrap.bundle.min.js"></script></head>
<body>
<div class="sidebar">
  <div class="logo-details">
    <a href="pageAdmin_Index.jsp"><img src="https://th.bing.com/th/id/OIP.ZpscpAS7kf2k2s_W_YdeuQHaHa?pid=ImgDet&rs=1" width="240px" height="150px"></a>
  </div>
  <ul class="nav-links">
    <li>
      <a href="pageAdmin_Index.jsp" class="active">
        <i class="fa-solid fa-border-all"></i>
        <span class="links_name">Trang chủ</span>
      </a>
    </li>
    <li>
      <a href="pageAdmin_Storage.jsp" class="active">
        <i class="fa-solid fa-box-open"></i>
        <span class="links_name">Quản lý kho</span>
      </a>
    </li>
    <li>
      <a href="pageAdmin_Product.jsp">
        <i class="fa-solid fa-box-archive"></i>
        <span class="links_name">Quản Lý Sản Phẩm</span>
      </a>
    </li>
    <li>
      <a href="pageAdmin_Checkout.jsp">
        <i class="fa-solid fa-note-sticky"></i>
        <span class="links_name">Quản Lý Đơn Hàng</span>
      </a>
    </li>
    <li>
      <a href="pageAdmin_User.jsp">
        <i class="fa-solid fa-user"></i>
        <span class="links_name">Quản Lý Tài Khoản</span>
      </a>
    </li>
    <li>
      <a href="pageAdmin_Blog.jsp">
        <i class="fa-solid fa-blog"></i>
        <span class="links_name">Quản Lý Blog</span>
      </a>
    </li>

    <li class="log_out">
      <a href="pageAdmin_login.jsp">
        <i class="fa-solid fa-right-from-bracket"></i>
        <span class="links_name">Đăng xuất</span>
      </a>
    </li>
  </ul>
</div>
<section class="home-section">
  <div class="home-content">
    <div class="manager-product">
      <div class="title">Chỉnh sửa thông tin bài viết</div>
      <form id="myForm" action="UpdateBlogAdmin?Blogid=<%=idParam%>" method="post" class="row">
        <%
            idParam = (Integer) request.getAttribute("idParam");
            if (idParam == null) {
                idParam = 1;
            } else {
                idParam++;
            }
            request.setAttribute("idParam", idParam);

            String title = (String) request.getAttribute("newTitle");
            String content = (String) request.getAttribute("newContent");
            String author = (String) request.getAttribute("newAuthor");
            String img = (String) request.getAttribute("newImg");


        %>
        <div class="form-group col-md-3">
          <label class="control-label">Mã</label>
          <input name="idP" class="form-control" type="number" value="<%=idParam%>" placeholder="" readonly>
        </div>
        <div class="form-group col-md-3">
          <label class="control-label">Tiêu đề</label>
          <input name="name" class="form-control" type="text" value="<%=title%>">
        </div>


        <div class="form-group col-md-3">
          <label class="control-label">Tác giả</label>
          <select name="type" class="form-control"  >
            <option value="<%=author%>"></option>
            <option value="1">Nguyễn Thanh Hoài</option>
            <option value="2">Đoàn Quốc Huy</option>
            <option value="3">Nguyễn Quốc Bình</option>
          </select>
        </div>
        <div>
          <div class="form-group col-md-12">
            <label class="control-label" <%=img%>>Ảnh minh họa</label>
          </div>
          <div id="myfileupload" style="padding-left: 15px;
  padding-bottom: 20px;">
            <input type="file" id="uploadfile" name="ImageUpload" onchange="readURL(this);">
          </div>
        </div>

        <div class="form-group col-md-12">
          <label class="control-label">Nội dung</label>
          <textarea  class="form-control" name="describe" id="mota"><%=content%></textarea>
        </div>
      </form>
      <button id="externalButton" class="btn btn-save" type="button">Lưu lại</button>
      <a class="btn btn-cancel" href="pageAdmin_Blog.jsp">Hủy bỏ</a>
    </div>
  </div>
</section>
<script src="../js/jquery.min.js"></script>
<script type="text/javascript" charset="utf8" src="../js/bootstrap.bundle.min.js"></script>
<script src="../js/main.js"></script>
<script>
  document.addEventListener("DOMContentLoaded", function () {
    // Bắt sự kiện click cho nút ở ngoài form
    document.getElementById("externalButton").addEventListener("click", function () {
      // Gọi hàm submitForm() khi nút được nhấn
      submitForm();
    });
  });

  // Hàm để gửi form
  function submitForm() {
    // Lấy đối tượng form bằng ID
    var form = document.getElementById("myForm");

    // Gửi form
    form.submit();
  }


    document.addEventListener("DOMContentLoaded", function() {
    var idParam = <%=request.getAttribute("idParam")%>;
    document.querySelector('input[name="idP"]').value = idParam;
  });
</script>
</body>
</html>
