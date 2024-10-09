<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChiTietSanPham.aspx.cs" Inherits="BaiTapLon_LTW.ChiTietSanPham" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
            <div class="body" style="display:flex">
                
                
                <div class="body1" style="width:50%;margin-left:10px;margin-top:10px;padding:10px;">
                    <ul class="img-block-1" runat="server" id="block1">
                    </ul>
                    <div style="margin-top:30px;">
                    <h2>MÔ TẢ</h2>
                    <p style="font-size: 20px; margin-left: 10px; margin-bottom: 20px;">
                        Là mẫu điện thoại thông minh
                            tầm trung mới của Samsung được ra
                            mắt vào tháng 03/2023.
                            Thiết bị hứa hẹn sẽ cung cấp kết nối 5G hiện đại và một hiệu suất ổn định để mang lại trải
                            nghiệm mượt mà cho người dùng.
                    </p>
                        </div>

                    <ul style="list-style:none;" class="tt">
                        <h2>CẤU HÌNH</h2>
                        <div style="margin-left:10px;">
                        <li style="border: 1px solid whitesmoke; background-color: rgb(215, 212, 212);">Màn hình:

                                Super AMOLED6.6"Full HD+
                        </li>
                        <li>Hệ điều hành:

                                Android 13
                        </li>
                        <li style="border: 1px solid whitesmoke; background-color: rgb(215, 212, 212);">Camera sau:

                                Chính 48 MP & Phụ 8 MP, 5 MP
                                Camera trước:

                                13 MP
                        </li>
                        <li>Chip:

                                MediaTek Dimensity 1080 8 nhân
                                RAM:

                                8 GB
                                Dung lượng lưu trữ:

                                256 GB
                        </li>
                            </div>
                    </ul>
                </div>
                <div class="body2" style="width:50%;padding:5px;">
                    <div class="gia">
                        <br>
                        <br>
                        <div class="img-block-1" runat="server" id="block2">
                        </div>
                        <p style="margin-bottom: 5px;">Không áp dụng chung với khuyến mãi khác</p>
                        <p style="margin-bottom: 5px;">Khuyến mãi không bao gồm phí vận chuyển</p>
                        <div class="soluong" style="margin-bottom:20px;">
                            <div>
                                Số Lượng:
                            </div>
                            <form runat="server">
                                <asp:Label ID="ProductDetailsLabel" runat="server"></asp:Label>
                                <asp:Button ID="DecreaseButton" runat="server" Style="width: 30px; height: 30px;" Text="-" OnClick="DecreaseButton_Click" />
                                <asp:TextBox ID="QuantityTextBox" runat="server" Style="width: 30px; height: 30px;" Text="1"></asp:TextBox>
                                <asp:Button ID="IncreaseButton" runat="server" Style="width: 30px; height: 30px;" Text="+" OnClick="IncreaseButton_Click" />
                                <asp:Button class="button"  style="width: 200px; height: 40px; background-color: red; margin-bottom: 5px; color: white; " runat ="server" ID="ThemVaoGioHang" Text="MUA NGAY" />
                            </form>
                        </div>

                        <%--<button
                            style="width: 200px; height: 40px; background-color: red; margin-bottom: 5px; color: white; ">
                            MUA NGAY 
                        </button>--%>

                    </div>
                </div>
            </div>
</body>
</html>
