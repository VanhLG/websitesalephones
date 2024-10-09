<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrangTablet.aspx.cs" Inherits="BaiTapLon_LTW.TrangTablet" %>

<!DOCTYPE html>
<html>
    <head>
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="stylesheet" href="TrangTablet.css">
      <link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
      <link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" />
    </head>
    <body>
        <form id="form1" runat="server">

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
        <div class="bodytrangtablet">
        <section class="product-gallery-one">
          <div class="container1">
            <div class="product-gallery-one-content-product" runat="server" ID="TABlETList">
                 
                  <% foreach (var item in san_pham) { 
                          if (int.Parse(item.Id) >= 11 && int.Parse(item.Id) <= 20) { %>
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
                
                
                <%--<div class="product-gallery-one-content-product-item">

               

                 <img src="Images/Tablet1.png" alt="">
                 <div class="product-one-content-text">
                    <li><asp:LinkButton ID="LinkButton1" runat="server" Text="iPad 9 Wifi" OnClick="click" CommandArgument="iPad 9 Wifi"/></li>
                    <li><a href="">9.990.000<sup>đ</sup></a> <span>-20%</span></li>
                    <li>7.990.000<sup>đ</sup></li>
                 </div>
                    <a href="ChiTietSanPham.aspx?id=<%= "1" %>">   </a>
                 </div>
              <div class="product-gallery-one-content-product-item">
                <img src="Images/Tablet2.PNG" alt="">
                <div class="product-one-content-text">
                  <li><asp:LinkButton ID="LinkButton2" runat="server" Text="iPad 10 Wifi" OnClick="click" CommandArgument="iPad 10 Wifi"/></li>
                  <li><a href="">12.990.000<sup>đ</sup></a> <span>-13%</span></li>
                  <li>11.190.000<sup>đ</sup></li>
                </div>
              </div>
              <div class="product-gallery-one-content-product-item">
                <img src="Images/Tablet3.PNG" alt="">
                <div class="product-one-content-text">
                  <li><asp:LinkButton ID="LinkButton3" runat="server" Text="iPad Pro M1 11 inch Wifi" OnClick="click" CommandArgument="iPad Pro M1 11 inch Wifi"/></li>
                  <li><a href="">49.990.000<sup>đ</sup></a> <span>-10%</span></li>
                  <li>44.990.000<sup>đ</sup></li>
                </div>
              </div>
              <div class="product-gallery-one-content-product-item">
                <img src="Images/Tablet4.PNG" alt="">
                <div class="product-one-content-text">
                  <li><asp:LinkButton ID="LinkButton4" runat="server" Text="iPad Pro M1 5G" OnClick="click" CommandArgument="iPad Pro M1 5G"/></li>
                  <li><a href="">34.000.000<sup>đ</sup></a> <span>-16%</span></li>
                  <li>29.290.000<sup>đ</sup></li>
                </div>
              </div>
              <div class="product-gallery-one-content-product-item">
                <img src="Images/Tablet5.PNG" alt="">
                <div class="product-one-content-text">
                  <li><asp:LinkButton ID="LinkButton5" runat="server" Text="Samsung Galaxy Tab" OnClick="click" CommandArgument="Samsung Galaxy Tab"/></li>
                  <li><a href="">6.990.000<sup>đ</sup></a> <span>-10%</span></li>
                  <li>6.300.000<sup>đ</sup></li>
                </div>
              </div>
              <div class="product-gallery-one-content-product-item">
                <img src="Images/Tablet6.PNG" alt="">
                <div class="product-one-content-text">
                  <li><asp:LinkButton ID="LinkButton6" runat="server" Text="Lenovo Tab M8" OnClick="click" CommandArgument="Lenovo Tab M8"/></li>
                  <li><a href="">2.490.000<sup>đ</sup></a> <span>-10%</span></li>
                  <li>2.110.000<sup>đ</sup></li>
                </div>
              </div>
              <div class="product-gallery-one-content-product-item">
                <img src="Images/Tablet7.PNG" alt="">
                <div class="product-one-content-text">
                  <li><asp:LinkButton ID="LinkButton7" runat="server" Text="Samsung Galaxy Tab A7" OnClick="click" CommandArgument="Samsung Galaxy Tab A7"/></li>
                  <li><a href="">4.490.000<sup>đ</sup></a> <span>-11%</span></li>
                  <li>3.990.000<sup>đ</sup></li>
                </div>
              </div>
              <div class="product-gallery-one-content-product-item">
                <img src="Images/Tablet8.PNG" alt="">
                <div class="product-one-content-text">
                  <li><asp:LinkButton ID="LinkButton8" runat="server" Text="Samsung Galaxy Tab S8" OnClick="click" CommandArgument="Samsung Galaxy Tab S8"/></li>
                  <li><a href="">30.000.000<sup>đ</sup></a> <span>-12%</span></li>
                  <li>26.990.000<sup>đ</sup></li>
                </div>
              </div>
              <div class="product-gallery-one-content-product-item">
                <img src="Images/Tablet9.PNG" alt="">
                <div class="product-one-content-text">
                  <li><asp:LinkButton ID="LinkButton9" runat="server" Text="Samsung Galaxy Tab S7" OnClick="click" CommandArgument="Samsung Galaxy Tab S7"/></li>
                  <li><a href="">13.990.000<sup>đ</sup></a> <span>-21%</span></li>
                  <li>10.990.000<sup>đ</sup></li>
                </div>
              </div>
              <div class="product-gallery-one-content-product-item">
                <img src="Images/Tablet10.PNG" alt="">
                <div class="product-one-content-text">
                  <li><asp:LinkButton ID="LinkButton10" runat="server" Text="iPad Pro M1" OnClick="click" CommandArgument="iPad Pro M1" Class="no-underline"/></li>
                  <li><a href="">55.000.000<sup>đ</sup></a> <span>-8%</span></li>
                  <li>50.990.000<sup>đ</sup></li>
                </div>
              </div>--%>


            </div>
          </div>
        </section>
        <br>
        <div style="text-align: center;"><button type="button" style="padding: 10px 16px;">Xem Thêm</button></div>
        </div>
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
            </form>
    </body>

</html>
