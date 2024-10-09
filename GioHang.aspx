<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GioHang.aspx.cs" Inherits="BaiTapLon_LTW.GioHang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="stylesheet" href="GioHang.css">
      <link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
      <link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" />
    <title></title>
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
            <%  if(check) { %>

                <%if (CartItems != null && CartItems.Count > 0)
                    {%>
            <h1 class="title">GIỎ HÀNG CỦA BẠN</h1>
                    <table>
                        <thead>
                        <tr class="table">
                            <%--<th style="font-size:20px;">STT</th>--%>
                            <th style="font-size:20px;"> Sản phẩm</th>
                            <th style="font-size:20px;"> Tên sản phẩm</th>
                            <th style="font-size:20px;">Số lượng</th>
                            <th style="font-size:20px;">Đơn giá</th>
                            <%--<th style="font-size:20px;">Thành Tiền</th>--%>
                            
                        </tr>
                            </thead>
                       <%
                           //double total = 0;
                           double count =0;
                           // khởi tạo biến lưu trữ tổng tiền

                           foreach (var item in CartItems) {
                               //double itemTotal = Convert.ToDouble(item.SoLuong) * Convert.ToDouble(item.SanPham.Promotion); // tính tổng tiền của sản phẩm hiện tại
                               //total += itemTotal; // cập nhật tổng tiền

                               //count++;
                        %>
                            <tr>
                                <%--<td><%=count  %></td>--%>
                                <td><img src="<%= item.SanPham.Img1 %>" alt="" width="200px" height="200px"></td>
                                <td style="font-size:20px;">
            
                                <div><%= item.SanPham.NameProduct %></div> </td>
                
            
        
                                <td style="font-size:20px;"><%= item.SoLuong %></td>
                                <td style="font-size:20px;"><%= item.SanPham.Promotion %></td>
                               <%-- <td style="font-size:20px;"><%= itemTotal %></td>
                                <td>
                                    <form action="deleteCartItem.aspx" method="get" >
                                        <input type="hidden" name="productId" value="<%= item.SanPham.Id %>">
                                        <button type="submit">Xóa</button>
                                        </form>
                                            </td>--%>
                             </tr>
                            <%
                            }
                    %>


                         
                    </table>
                    <%-- <b> <p  class="bb">Tổng tiền: <%= total %></p></b>--%>
                    <button class="order-button" onclick="placeOrder()">ĐẶT HÀNG</button>
                    <asp:Button   class="button"   runat="server" ID="Xoa" Text="Xoa Gio Hang" />
              
                <%}
               
               
                    else
                    { %>
                
                    <div class="giohang">
                        <div class="Xehang"><img src="xehang.png" width="250px" height="180px"></div>
                    <span> Không có sản phẩm nào trong giỏ hàng </span><br><br>
                        <button> VỀ TRANG CHỦ </button><br><br>
                <span> Khi cần trợ giúp vui lòng gọi <b> 1800.1080</b> hoặc <b> 042617821</b></span>
                <%} %>
<% }    %>           
                        <% else {%>
                        <h1 class="title">CHƯA ĐĂNG NHẬP</h1>
                        
                       <% }%>

                
            </div>
        </div>
    </form>
    <script src="GioHang.js"></script>
</body>
</html>
