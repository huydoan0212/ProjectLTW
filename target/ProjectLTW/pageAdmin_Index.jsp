<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
  <title>Quản lý</title>
  <link rel="stylesheet" href="../src/main/webapp/css/bootstrap.min.css">
  <link rel="stylesheet" href="../src/main/webapp/css/all.min.css">
  <link rel="stylesheet" href="../src/main/webapp/css/style.css">
  <link rel="stylesheet" href="../src/main/webapp/css/home.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

</head>
<body>
<div class="sidebar">
  <div class="logo-details">
    <a href="pageAdmin_Index.jsp"><img src="https://th.bing.com/th/id/OIP.ZpscpAS7kf2k2s_W_YdeuQHaHa?pid=ImgDet&rs=1" width="100px" height="100px"></a>
  </div>
  <ul class="nav-links">
    <li>
      <a href="pageAdmin_Index.html" class="active">
        <i class="fa-solid fa-border-all"></i>
        <span class="links_name">Trang chủ</span>
      </a>
    </li>
    <li>
      <a href="pageAdmin_Storage.html" class="active">
        <i class="fa-solid fa-box-open"></i>
        <span class="links_name">Quản lý kho</span>
      </a>
    </li>
    <li>
      <a href="pageAdmin_Product.html">
        <i class="fa-solid fa-box-archive"></i>
        <span class="links_name">Quản Lý Sản Phẩm</span>
      </a>
    </li>
    <li>
      <a href="pageAdmin_Checkout.html">
        <i class="fa-solid fa-note-sticky"></i>
        <span class="links_name">Quản Lý Đơn Hàng</span>
      </a>
    </li>
    <li>
      <a href="pageAdmin_User.html">
        <i class="fa-solid fa-user"></i>
        <span class="links_name">Quản Lý Tài Khoản</span>
      </a>
    </li>
    <li class="log_out">
      <a href="pageAdmin_login.html">
        <i class="fa-solid fa-right-from-bracket"></i>
        <span class="links_name">Đăng xuất</span>
      </a>
    </li>
  </ul>
</div>
<section class="home-section">
  <div class="home-content">
    <div class="view-box">
      <div class="header-box">
        <div class="title">Thống kê</div>
        <div>
          <select>
            <option value="0">Hôm nay</option>
            <option value="1">Tuần</option>
            <option value="2">Tháng</option>
          </select>
        </div>
      </div>
      <div class="overview-boxes">
        <div class="box">
          <div class="right-side">
            <div class="box-topic">Tổng Đơn Hàng</div>
            <div class="number">800 đơn hàng</div>
          </div>
          <i class="fa-solid fa-cart-plus cart"></i>
        </div>
        <div class="box">
          <div class="right-side">
            <div class="box-topic">Hết Hàng</div>
            <div class="number">4 sản phẩm</div>
          </div>
          <i class="fa-solid fa-xmark cart two"></i>
        </div>
        <div class="box">
          <div class="right-side">
            <div class="box-topic">Doanh Thu</div>
            <div class="number">532.000.000<sup>đ</sup></div>
          </div>
          <i class="fa-solid fa-dollar-sign cart three"></i>
        </div>
        <div class="box">
          <div class="right-side">
            <div class="box-topic">Đơn Hàng Hủy</div>
            <div class="number">5 đơn hàng</div>
          </div>
          <i class="fa-solid fa-scroll cart four"></i>
        </div>
      </div>
    </div>
    <div class="sales-boxes">
      <div class="recent-sales box">
        <div class="title">Đơn Hàng Gần Đây</div>
        <div class="sales-details">
          <table class="table table-hover table-bordered">
            <thead>
            <tr>
              <th scope="col">Mã đơn hàng</th>
              <th scope="col">Tên khách hàng</th>
              <th scope="col">Ngày đặt</th>
              <th scope="col">Số điện thoại</th>
              <th scope="col">Tổng tiền</th>
            </tr>
            </thead>
            <tbody>
            <tr>
              <th scope="row">000001</th>
              <td>Nguyễn Quốc Bình</td>
              <td>27/11/2023</td>
              <td>0786191721</td>
              <td>9.000.000<sup>đ</sup></td>
            </tr>
            <tr>
              <th scope="row">000002</th>
              <td>Nguyễn Thanh Hoài</td>
              <td>27/10/2023</td>
              <td>0486191721</td>
              <td>10.000.000<sup>đ</sup></td>
            </tr>
            <tr>
              <th scope="row">000003</th>
              <td>Đoàn Quốc Huy</td>
              <td>27/10/2023</td>
              <td>0786193721</td>
              <td>11.000.000<sup>đ</sup></td>
            </tr>

            </tbody>
          </table>
        </div>
        <div class="button">
          <a href="pageAdmin_Checkout.html">Xem tất cả</a>
        </div>
      </div>
      <div class="top-sales box">
        <div class="title">Sản Phẩm Bán Chạy</div>
        <ul class="top-sales-details">
          <li>
            <a href="#">

              <span title="Máy lọc nước nóng lạnh Sanaky" class="product">Máy lọc nước nóng lạnh Sanaky</span>
            </a>
            <span class="price">3.000.000<sup>đ</sup></span>
          </li>
          <li>
            <a href="#">

              <span title="Máy lọc nước RO Karofi" class="product">Máy lọc nước RO Karofi</span>
            </a>
            <span class="price">5.335.000<sup>đ</sup></span>
          </li>
          <li>
            <a href="#">

              <span title="Máy lọc nước RO Kangaroo" class="product">Máy lọc nước RO Kangaroo</span>
            </a>
            <span class="price">6.300.000<sup>đ</sup></span>
          </li>
          <li>
            <a href="#">

              <span title="Máy lọc nước không vỏ RO Karofi" class="product">Máy lọc nước không vỏ RO Karofi</span>
            </a>
            <span class="price">4.590.000<sup>đ</sup></span>
          </li>
          <li>
            <a href="#">

              <span title="Máy lọc nước không vỏ RO Kangaroo" class="product">Máy lọc nước không vỏ RO Kangaroo</span>
            </a>
            <span class="price">6.325.000<sup>đ</sup></span>
          </li>
          <li>
            <a href="#">

              <span title="Máy lọc nước không vỏ RO Sanaky" class="product">Máy lọc nước không vỏ RO Sanaky</span>
            </a>
            <span class="price">5.280.000<sup>đ</sup></span>
          <li>
            <a href="#">

              <span title="Máy lọc Nano Sanaky" class="product">Máy lọc Nano Sanaky</span>
            </a>
            <span class="price">9.150.000<sup>đ</sup></span>
          </li>
        </ul>
      </div>
    </div>
  </div>
</section>
</body>
</html>
