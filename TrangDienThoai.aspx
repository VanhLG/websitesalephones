<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrangDienThoai.aspx.cs" Inherits="BaiTapLon_LTW.TrangDienThoai" %>

<!DOCTYPE html>
<html>
    <head>
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="stylesheet" href="TrangKhuyenMai.css">
      <link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
      <link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" />
    </head>
    <body>
      <div class="app">
        <div class="container">
            <div class="headers">
            <div class="logo" > <img src="Images/logobtl.png " width="150px" height="70px"></div>
            <div class="search">
                <input class="searchInput" placeholder="Tìm kiếm sản phẩm" />
                <div class="searchIcon"><i class="fa fa-search"></i></div>
            </div>
            <div class="info">
                <div class="infoCart"><a href ="GioHang.aspx"><img src="Images/GIỎ HÀNG.png"  width="138px" height="55px"></a></div>
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
        <div class="bodytrangchu">
        <section class="product-gallery-one">
          <div class="container1">
            <div class="product-gallery-one-content-product">
                 <% foreach (var item in san_pham) { 
                          if (int.Parse(item.Id) >= 21 && int.Parse(item.Id) <= 30) { %>
                                <div class="product-gallery-one-content-product-item">
                                    <a href="ChiTietSanPham.aspx?id=<%= item.Id %>">
                                    <img src="<%= item.Img1  %>" alt="" >
                                    <div class="product-one-content-text">
                                        <li><%= item.NameProduct %></li>
                                        <li><a href=""><%= item.Price %><sup>đ</sup></a> <span>-<%= String.Format("{0:#,##}", (Convert.ToDouble(item.Price) - Convert.ToDouble(item.Promotion)) / Convert.ToDouble(item.Price) * 100) %>%</span></li>
                                        <li><%= item.Promotion %><sup>đ</sup></li>
                                    </div>
                                    </a>
                                <%--  <asp:Button  class="button" runat="server" ID="btnChiTietSP" Text="Xem Chi Tiết" />--%>
                                </div>
                            <% } %>
                 <% } %>
<%--              <div class="product-gallery-one-content-product-item">
                <a href="trang_khuyen_mai.html">
                <img src="Images/dt1.png" alt="">
                <div class="product-one-content-text">
                  <li>Iphone 14 Pro Max 256GB</li>
                  <li><a href="">39.990.000<sup>đ</sup></a><span>-20%</span></li>
                  <li>32.990.000<sup>đ</sup></li></a>
                </div>
              </div>
              <div class="product-gallery-one-content-product-item">
                <img src="Images/dt2.png" alt="">
                <div class="product-one-content-text">
                  <li>iPhone 14 Pro 128GB</li>
                  <li><a href="">35.990.000<sup>đ</sup></a> <span>-13%</span></li>
                  <li>31.190.000<sup>đ</sup></li>
                </div>
              </div>
              <div class="product-gallery-one-content-product-item">
                <img src="Images/dt3.png" alt="">
                <div class="product-one-content-text">
                  <li>iPhone 11 64GB</li>
                  <li><a href="">13.990.000<sup>đ</sup></a> <span>-10%</span></li>
                  <li>11.990.000<sup>đ</sup></li>
                </div>
              </div>
              <div class="product-gallery-one-content-product-item">
                <img src="Images/dt4.png" alt="">
                <div class="product-one-content-text">
                  <li>iPhone 13 128GB</li>
                  <li><a href="">22.000.000<sup>đ</sup></a> <span>-16%</span></li>
                  <li>19.290.000<sup>đ</sup></li>
                </div>
              </div>
              <div class="product-gallery-one-content-product-item">
                <img src="Images/dt5.png" alt="">
                <div class="product-one-content-text">
                  <li>VIVO Y22</li>
                  <li><a href="">5.990.000<sup>đ</sup></a> <span>-10%</span></li>
                  <li>5.300.000<sup>đ</sup></li>
                </div>
              </div>
              <div class="product-gallery-one-content-product-item">
                <img src="Images/dt6.png" alt="">
                <div class="product-one-content-text">
                  <li>VIVO Q35</li>
                  <li><a href="">2.490.000<sup>đ</sup></a> <span>-10%</span></li>
                  <li>2.110.000<sup>đ</sup></li>
                </div>
              </div>
              <div class="product-gallery-one-content-product-item">
                <img src="Images/dt7.png" alt="">
                <div class="product-one-content-text">
                  <li>Oppo Reno 7</li>
                  <li><a href="">8.490.000<sup>đ</sup></a> <span>-11%</span></li>
                  <li>6.990.000<sup>đ</sup></li>
                </div>
              </div>
              <div class="product-gallery-one-content-product-item">
                <img src="Images/dt8.png" alt="">
                <div class="product-one-content-text">
                  <li>TLC win</li>
                  <li><a href="">3.000.000<sup>đ</sup></a> <span>-12%</span></li>
                  <li>2.690.000<sup>đ</sup></li>
                </div>
              </div>
              <div class="product-gallery-one-content-product-item">
                <img src="Images/dt9.png" alt="">
                <div class="product-one-content-text">
                  <li>Oppo A95</li>
                  <li><a href="">6.990.000<sup>đ</sup></a> <span>-21%</span></li>
                  <li>5.990.000<sup>đ</sup></li>
                </div>
              </div>
              <div class="product-gallery-one-content-product-item">
                <img src="Images/dt10.png" alt="">
                <div class="product-one-content-text">
                  <li>Realme Q55s</li>
                  <li><a href="">4.000.000<sup>đ</sup></a> <span>-8%</span></li>
                  <li>3.650.000<sup>đ</sup></li>
                </div>
              </div>
              <div class="product-gallery-one-content-product-item1">
                <img src="Images/dt6.png" alt="">
                <div class="product-one-content-text">
                  <li>VIVO Q35</li>
                  <li><a href="">2.490.000<sup>đ</sup></a> <span>-10%</span></li>
                  <li>2.110.000<sup>đ</sup></li>
                </div>
              </div>
              <div class="product-gallery-one-content-product-item1">
                <img src="Images/dt7.png" alt="">
                <div class="product-one-content-text">
                  <li>Oppo Reno 7</li>
                  <li><a href="">8.490.000<sup>đ</sup></a> <span>-11%</span></li>
                  <li>6.990.000<sup>đ</sup></li>
                </div>
              </div>
              <div class="product-gallery-one-content-product-item1">
                <img src="Images/dt8.png" alt="">
                <div class="product-one-content-text">
                  <li>TLC win</li>
                  <li><a href="">3.000.000<sup>đ</sup></a> <span>-12%</span></li>
                  <li>2.690.000<sup>đ</sup></li>
                </div>
              </div>
              <div class="product-gallery-one-content-product-item1">
                <img src="Images/dt9.png" alt="">
                <div class="product-one-content-text">
                  <li>Oppo A95</li>
                  <li><a href="">6.990.000<sup>đ</sup></a> <span>-21%</span></li>
                  <li>5.990.000<sup>đ</sup></li>
                </div>
              </div>
              <div class="product-gallery-one-content-product-item1">
                <img src="Images/dt10.png" alt="">
                <div class="product-one-content-text">
                  <li>Realme Q55s</li>
                  <li><a href="">4.000.000<sup>đ</sup></a> <span>-8%</span></li>
                  <li>3.650.000<sup>đ</sup></li>
                </div>
              </div>--%>
            </div>
            

            </div>
          </div>
          <br>
       
        </section>
        <br><br> <div style="text-align:center;margin-top: 1cm;margin-left: 17.2cm;margin-bottom: 1cm;" ><button id="btxemthem" type="button" style="padding: 7px 26px;" onclick="xemthem()">Xem Thêm</button></div>
       
        
      
        
      
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
    </body>
    <script type="text/javascript"  src="TrangDienThoai.js"> </script>

</html>