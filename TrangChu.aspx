<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="BaiTapLon_LTW.TrangChu" %>

<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="TrangChu.css">
        <link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
        <link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" />
        <style>
            .anh1:hover{
    display:none;
}
.anh2:hover{
    display:none;
}


.anh4:hover {
    display: none;
}
.noidung:hover{
    display:none;
}
.noidung1:hover{
    display:none;
}
.noidung2:hover{
    display:none
}
            @media screen and (max-width: 768px) {
    .search {
        height: 60px;
    }

    .searchInput {
        margin-top: 15px;
        height: 40px;
        width: 100%;
        padding-right: 44px;
    }

    .searchIcon {
        margin-top: 35px;
    }
    .option-promo {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
    }

    .option-promo li {
        width: 40%;
        text-align: center;
        max-width: 300px;
    }

    .option-promo li a {
        display: block;
        padding: 10px;
    }

    .option-promo li img {
        margin-bottom: 5px;
    }
    .container {
        height: 290px;
    }

    .headers {
        width: 100%;
    }

    .infoCart img {
        margin-top: 15px;
        width: 100px;
        height: 43px;
    }

    .infoPerson img {
        margin-top: 17px;
        width: 37px;
        height: 37px;
    }
    .product-gallery-two-content-right img{
        display:none;
    }
    .slider-product-one-content-items-content{
        height:300px;
    }
    .logo img {
        padding: 10px;
        width: 130px;
    }

    .dropdown-content {
        width: 100%;
    }

    .listHeader {
        display: block;
        width: 100%;
    }

    .a, .a2 {
        width: 100%;
    }

    .product-gallery-one-content-product-item {
        width: 50%;
        padding: 50px 12px 12px;
        border: 1px solid rgb(235, 233, 233);
        cursor: pointer;
    }

    .no-underline {
        text-decoration: none;
    }

    .ttCuaHang {
        grid-column: 1/13;
    }

    .ttLienLac {
        grid-column: 1/13;
    }

    .fanpage {
        grid-column: 1/13;
    }

    footer {
        height: 23cm;
    }
   
    .product-galery-two-content-left-bottom {
        display: flex;
        flex-wrap: wrap;
    }
    .product-gallery-two-content-left-bottom-item {
        width: calc(50% - 10px);
        margin-right: 20px;
        margin-bottom: 20px;
    }
    .product-gallery-two-content-left-bottom-item:nth-child(2) {
        margin-right: 0;
    }
    .product-gallery-two-content-left-bottom-item:last-child {
        margin-right: 0;
    }

}


        </style>
    </head>
    <body>
        <div class="app">
            <div class="container">
              <div class="headers">
                <div class="logo" > <img src="Images/logobtl.png " width="150px" height="70px"></div>
                 <%--<form class="search" action="TimKiem.aspx" method="get">
    <input id="searchBox" name="search" class="searchInput" placeholder="Tìm kiếm sản phẩm" />
    <button id="searchButton" type="button" name="btnsearch" class="searchIcon" onclick="searchProduct()"><i class="fa fa-search"></i></button>
</form>--%>
                  <div class="search">
                <input class="searchInput" placeholder="Tìm kiếm sản phẩm" />
                <div class="searchIcon"><i class="fa fa-search"></i></div>
            </div>
                
                <div class="info">
                    <div class="infoCart"><a href="GioHang.aspx"><img src="Images/GIỎ HÀNG.png"  width="138px" height="55px"></a></div>
                    <div class="infoPerson"><a href="DangNhap.aspx"><img src="Images/User.png" width="55px" height="55px"></a></div>
                </div>
              </div>
              <div>
                <ul class="listHeader">
                  <li class="a"><a href="TrangChu.aspx" style="text-decoration: none;color: #ffffff;" > TRANG CHỦ </a></li>
                  <li class="a2">SẢN PHẨM
                    <div class="dropdown-content">
                      <a href="TrangDienThoai.aspx">ĐIỆN THOẠI</a>
                      <a href="TrangTablet.aspx">TABLET</a>
                      <a href="TrangDongHo.aspx">ĐỒNG HỒ</a></div></li>
                  <li class="a"><a href="TrangPhuKien.aspx" style="text-decoration: none;color: #ffffff;">PHỤ KIỆN</a></li>
                  <li class="a"><a href="TrangKhuyenMai.aspx" style="text-decoration: none;color: #ffffff;">KHUYẾN MÃI</a></li>
                </ul>
              </div>
            </div>
            <div class="bodytrangchu">
                <div class="banner" id="anh3" onclick="click()"  >
                    <img class="anh3"  src = "Images/TGDD-banner-big--Desk--1920x450.png" alt="">
                </div>
                <ul class="option-promo">
                    <li>
                        <a href="#dienthoai">
                            <img width="50" class="anh1" height="50" src="Images/dien-thoai-120x120-7.png" alt="" onclick="click()">
                           
                        </a>
                    </li>
                    <li>
                        <a href="#tablet">
                            <img width="50" class="anh2" height="50" src="Images/icon-xakho-120x120-2png.png" alt="">
                            
                        </a>
                    </li>
                   
                </ul>
               <section class="noidung">
                   Đây là trang chủ. Vui lòng truy cập vào các trang khác để xem sản phẩm
               </section>
                <br>
                <section class="noidung1">
                   <button>Trang Chủ</button>
                 </section>
                <br>
                <section class="noidung2">
                    Trang web thuộc quyền sở hữu của Vanh.
                </section>

            <br>
            <footer>
              <footer>
                <section class="ttLienLac">
                    <h3>THÔNG TIN LIÊN LẠC</h3><br>
                    <p>Hotline bán hàng:<br>
                    <p>038 212 7429<br>
                    <p>097 554 2663</p><br>    
                    <p>Hotline bảo hành kỹ thuật:</p>
                    <p>1900 2626</p><br>
                    <p>Hotline phản ánh chất lượng dịch vụ</p>
                    <p>1800 2626</p>
                </section>
                <section class="ttCuaHang">
                    <h3>THÔNG TIN CỬA HÀNG</h3><br>
                    <p>Chi nhánh 1: <br>
                    <p>96 Định Công<p><br><br>
                    <p>Chi nhánh 2: </p>    
                    <p>111 Trần Đăng Ninh, Cầu Giấy, Hà Nội</p><br><br>
                    <p>Chi nhánh 3: </p>
                    <p>46 Xã Đàn, Đống Đa, Hà Nội</p><pb>
                </section>
                <div class="fanpage">
                  <figure class="figure" >
                    <figcaption><b>HỖ TRỢ THANH TOÁN</b></figcaption>
                    <img class="img" src="Images/6017danh-sach-dien-thoai-cac-ngan-hang-viet-nam.jpg" width="75%">
                </figure> 
                </div>
                <hr style="background-color: #ffffff;grid-column: 1/13; width: 50%;height: 1px;margin-left: auto;margin-right: auto;">
                <h5 style=" text-align: center;color: #ffffff;grid-column: 1/13;">© 2023. Địa chỉ: 96 Định Công, Hoàng Mai, Hà Nội. Điện thoại: 028 38125967. Email: cskh@ninhhoanganhtuan.com.</h5>
              </footer> 
          </footer> 
        </div>
        <script src="TrangChu.js"></script>
        <script>
function searchProduct() {
    var searchBox = document.getElementById("searchBox");
    if (searchBox.value.trim() == "") {
        alert("Vui lòng nhập từ khóa tìm kiếm.");
        return;
    }
    window.location.href = "TimKiem.aspx?search=" + searchBox.value.trim();
}
        </script>
    </body>
</html>


