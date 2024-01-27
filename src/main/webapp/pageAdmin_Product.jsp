<%@ page import="java.util.List" %>
<%@ page import="model.Product" %>
<%@ page import="service.ProductService" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Locale" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="model.Category" %>
<%@ page import="dao.CategoryDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% List<Product> products = ProductService.getInstance().getAll();
    if(products==null) products = new ArrayList<>();
%>
<% Locale locale = new Locale("vi", "VN");
    NumberFormat numberFormat = NumberFormat.getInstance(locale);
%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Quản lý</title>
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <link rel="stylesheet" href="./css/all.min.css">
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="./css/pageAdmin_product.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        .icon-wrapper {
            margin-top: 2px;
            background-color: #4a90e2;
            display: inline-block;
            margin-right: 10px;
            padding: 5px; /* Điều này tạo khoảng trắng xung quanh biểu tượng */
            border-radius: 50%; /* Để tạo biểu tượng hình tròn */
        }

        .icon-wrapper i {
            color: #ffffff; /* Màu trắng cho biểu tượng */
        }
    </style>
</head>
<body>
<%@include file="headerAdmin.jsp" %>


<section class="home-section">
    <div class="home-content">
        <div class="manager-product">
            <div class="title">Danh Sách Sản Phẩm</div>
            <div class="row element-button">
                <div class="col-sm-2">
                    <a class="btn btn-add btn-sm" href="pageAdmin_addProduct.jsp" title="Thêm">
                        <i class="fas fa-plus"></i>
                        Thêm sản phẩm</a>
                </div>

            </div>
            <div class="row">
                <div class="col-md-12">

                    <table id="table-id" class="table table-hover table-bordered">
                        <thead>
                        <tr>
                            <th scope="col">Mã</th>
                            <th scope="col">Tên sản phẩm</th>

                            <th scope="col">Ảnh</th>
                            <th scope="col">Số lượng</th>
                            <th scope="col">Tình trạng</th>
                            <th scope="col">Giá tiền</th>
                            <th scope="col">Giá giảm</th>
                            <th scope="col">Danh mục</th>
                            <th scope="col">Chức năng</th>
                        </tr>
                        </thead>
                        <tbody>
                        <%
                            for (Product product:
                                 products) {
                            String category_name = CategoryDAO.getCategoryNameById(product.getCategory_id());
                            %>
                        <tr>
                            <th scope="row"><%=product.getId()%></th>
                            <td><%=product.getTitle()%></td>
                            <td><img src="<%=product.getImg()%>"
                                     style="max-width: 100px; max-height: 100px;">
                            </td>
                            <td><%=product.getAvailable()%></td>
                            <%if (product.getAvailable() > 0){%>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <%}else{%>
                            <td><span style="background-color: #efbfbf !important;
    color: #790202 !important;" class="badge bg-failed">Hết hàng</span></td>
                            <%}%>
                            <td><%=numberFormat.format(product.getPrice())%><sup>đ</sup></td>
                            <td><%=numberFormat.format(product.getDiscount_price())%>đ</td>
                            <td><%=category_name%></td>
                            <td>
                                <a title="Xóa" href="remove-product?product_id=<%=product.getId()%>" class="icon-link">
                                    <i class="icon-wrapper">
                                        <i class="fas fa-trash-alt"></i> <!-- Biểu tượng thùng rác -->
                                    </i>
                                </a>
                                <a title="Chỉnh sửa" href="page-admin-edit-product?product_id=<%=product.getId()%>" class="icon-link">
                                    <i class="icon-wrapper">
                                        <i class="fas fa-pen"></i> <!-- Biểu tượng thùng rác -->
                                    </i>
                                </a>


                            </td>
                        </tr>
                        <%}%>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>

<script src="../../../js/jquery.min.js"></script>
<script src="../../../js/jquery.dataTables.js"></script>

<script type="text/javascript" charset="utf8" src="../../../js/bootstrap.bundle.min.js"></script>
<script>$("#table-id").DataTable();
</script>

</body>
</html>
