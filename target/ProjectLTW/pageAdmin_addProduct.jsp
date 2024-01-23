<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Quản lí - Thêm sản phẩm</title>
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <link rel="stylesheet" href="./css/all.min.css">
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="./css/pageAdmin_product.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <script src="./js/pageAdmin_main.js"></script>
    <script src="./js/jquery.dataTables.js"></script>
    <script src="./js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div class="sidebar">
    <div class="logo-details">
        <a href="../../../html/pageAdmin_Index.html"><img src="https://th.bing.com/th/id/OIP.ZpscpAS7kf2k2s_W_YdeuQHaHa?pid=ImgDet&rs=1" width="240px" height="150px"></a>
    </div>
    <ul class="nav-links">
        <li>
            <a href="../../../html/pageAdmin_Index.html" class="active">
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
            <a href="../../../html/pageAdmin_Product.html">
                <i class="fa-solid fa-box-archive"></i>
                <span class="links_name">Quản Lý Sản Phẩm</span>
            </a>
        </li>
        <li>
            <a href="../../../html/pageAdmin_Checkout.html">
                <i class="fa-solid fa-note-sticky"></i>
                <span class="links_name">Quản Lý Đơn Hàng</span>
            </a>
        </li>
        <li>
            <a href="../../../html/pageAdmin_User.html">
                <i class="fa-solid fa-user"></i>
                <span class="links_name">Quản Lý Tài Khoản</span>
            </a>
        </li>

        <li class="log_out">
            <a href="../../../html/pageAdmin_login.html">
                <i class="fa-solid fa-right-from-bracket"></i>
                <span class="links_name">Đăng xuất</span>
            </a>
        </li>
    </ul>
</div>
<section class="home-section">
    <div class="home-content">
        <div class="manager-product">
            <div class="title">Thêm Sản Phẩm</div>
            <form class="row">
                <div class="form-group col-md-3">
                    <label class="control-label">Mã sản phẩm </label>
                    <input class="form-control" type="number" placeholder="">
                </div>
                <div class="form-group col-md-3">
                    <label class="control-label">Tên sản phẩm</label>
                    <input class="form-control" type="text">
                </div>

                <div class="form-group  col-md-3">
                    <label class="control-label">Số lượng</label>
                    <input class="form-control" type="number">
                </div>

                <div class="form-group col-md-3">
                    <label class="control-label">Danh mục</label>
                    <select class="form-control">
                        <option>--- Chọn danh mục ---</option>
                        <option>Lọc nước RO</option>
                        <option>Lọc nước nóng lạnh</option>
                        <option>Âm tủ, để bàn</option>
                        <option>Lọc nước Nano, UF, MF</option>
                        <option>Lọc nước không điện</option>
                    </select>
                </div>
                <div class="form-group col-md-3">
                    <label class="control-label">Giá bán</label>
                    <input class="form-control" type="text">
                </div>
                <div class="form-group col-md-3">
                    <label class="control-label">Giảm giá</label>
                    <input class="form-control" type="number">
                </div>
                <div class="form-group col-md-12">
                    <label class="control-label">Ảnh sản phẩm</label>
                    <div id="myfileupload">
                        <input type="file" id="uploadfile" name="ImageUpload" onchange="readURL(this);">
                    </div>
<!--                    <div id="thumbbox">-->
<!--                        <img height="450" width="400" alt="Thumb image" id="thumbimage" style="display: none">-->
<!--                                         <a class="removeimg" href="javascript:"></a>-->
<!--                    </div>-->
                </div>
                <div class="form-group col-md-12">
                    <label class="control-label">Mô tả sản phẩm</label>
                    <textarea class="form-control" name="mota" id="mota"></textarea>
                </div>
            </form>
            <button class="btn btn-save" type="button">Lưu lại</button>
            <a class="btn btn-cancel" href="../../../html/pageAdmin_Product.html">Hủy bỏ</a>
        </div>
    </div>
</section>
</body>
</html>