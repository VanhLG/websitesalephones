using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace BaiTapLon_LTW
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            Application["danhsachtaikhoan"] = new List<taikhoan>();
            bool b = false;
            Application["checkdangnhap"] = new bool();
            Application["checkdangnhap"] = b;
            Application["danhsachsanpham"] = new List<SanPhamModel>();
            List<SanPhamModel> sanpham = new List<SanPhamModel>();
            sanpham.Add(new SanPhamModel() { Img1 = "Images/dongho1.jpg", NameProduct = "RE-AV0B01S00B", Price = "25750000", Promotion = "20190000", Id = "1", SoLuong = "1" });
            sanpham.Add(new SanPhamModel() { Img1 = "Images/dongho2.jpg", NameProduct = "OG358.61AMR-GL", Price = "22460000", Promotion = "21190000", Id = "2", SoLuong = "1" });
            sanpham.Add(new SanPhamModel() { Img1 = "Images/dongho3.jpg", NameProduct = "RA-AS0101S10B", Price = "12990000", Promotion = "11390000", Id = "3", SoLuong = "1" });
            sanpham.Add(new SanPhamModel() { Img1 = "Images/dongho4.jpg", NameProduct = "OP99141-71.1AGS-T-LM", Price = "7100000", Promotion = "5990000", Id = "4", SoLuong = "1" });
            sanpham.Add(new SanPhamModel() { Img1 = "Images/dongho5.jpg", NameProduct = "OP990-083AMS-T", Price = "6130000", Promotion = "5600000", Id = "5", SoLuong = "1" });
            sanpham.Add(new SanPhamModel() { Img1 = "Images/dongho6.jpg", NameProduct = "OPA58094MSK-T", Price = "3970000", Promotion = "3510000", Id = "6", SoLuong = "1" });
            sanpham.Add(new SanPhamModel() { Img1 = "Images/dongho7.jpg", NameProduct = "OP5695MSK-T", Price = "4490000", Promotion = "3990000", Id = "7", SoLuong = "1" });
            sanpham.Add(new SanPhamModel() { Img1 = "Images/dongho8.jpg", NameProduct = "SG80051.1102CF", Price = "2150000", Promotion = "1990000", Id = "8", SoLuong = "1" });
            sanpham.Add(new SanPhamModel() { Img1 = "Images/dongho9.jpg", NameProduct = "OG358.53A42GR-GL", Price = "30990000", Promotion = "24990000", Id = "9", SoLuong = "1" });
            sanpham.Add(new SanPhamModel() { Img1 = "Images/dongho10.jpg", NameProduct = "RA-AS0009S10B", Price = "15200000", Promotion = "13890000", Id = "10", SoLuong = "1" });
            sanpham.Add(new SanPhamModel() { Img1 = "Images/Tablet1.PNG", NameProduct = "iPad 9 Wifi", Price = "9990000", Promotion = "7990000", Id = "11", SoLuong = "1" });
            sanpham.Add(new SanPhamModel() { Img1 = "Images/Tablet2.PNG", NameProduct = "iPad 10 Wifi", Price = "12990000", Promotion = "11190000", Id = "12", SoLuong = "1" });
            sanpham.Add(new SanPhamModel() { Img1 = "Images/Tablet3.PNG", NameProduct = "iPad Pro M1 11 inch Wifi", Price = "49990000", Promotion = "44990000", Id = "13", SoLuong = "1" });
            sanpham.Add(new SanPhamModel() { Img1 = "Images/Tablet4.PNG", NameProduct = "iPad Pro M1 5G", Price = "34000000", Promotion = "29290000", Id = "14", SoLuong = "1" });
            sanpham.Add(new SanPhamModel() { Img1 = "Images/Tablet5.PNG", NameProduct = "Samsung Galaxy Tab", Price = "6990000", Promotion = "6300000", Id = "15", SoLuong = "1" });
            sanpham.Add(new SanPhamModel() { Img1 = "Images/Tablet6.PNG", NameProduct = "Lenovo Tab M8", Price = "2490000", Promotion = "2110000", Id = "16", SoLuong = "1" });
            sanpham.Add(new SanPhamModel() { Img1 = "Images/Tablet7.PNG", NameProduct = "Samsung Galaxy Tab A7", Price = "4490000", Promotion = "3990000", Id = "17", SoLuong = "1" });
            sanpham.Add(new SanPhamModel() { Img1 = "Images/Tablet8.PNG", NameProduct = "Samsung Galaxy Tab S8", Price = "3000000", Promotion = "26990000", Id = "18", SoLuong = "1" });
            sanpham.Add(new SanPhamModel() { Img1 = "Images/Tablet9.PNG", NameProduct = "Samsung Galaxy Tab S7", Price = "13990000", Promotion = "10990000", Id = "19", SoLuong = "1" });
            sanpham.Add(new SanPhamModel() { Img1 = "Images/Tablet10.PNG", NameProduct = "Ipad Pro M1", Price = "55000000", Promotion = "50990000", Id = "20", SoLuong = "1" });
            sanpham.Add(new SanPhamModel() { Img1 = "Images/dt1.png", NameProduct = "iPhone 14 Pro Max 256GB", Price = "39990000", Promotion = "32990000", Id = "21", SoLuong = "1" });
            sanpham.Add(new SanPhamModel() { Img1 = "Images/dt2.png", NameProduct = "iPhone 14 Pro 128GB", Price = "35990000", Promotion = "31190000", Id = "22", SoLuong = "1" });
            sanpham.Add(new SanPhamModel() { Img1 = "Images/dt3.png", NameProduct = "iPhone 11 64GB", Price = "13990000", Promotion = "11990000", Id = "23", SoLuong = "1" });
            sanpham.Add(new SanPhamModel() { Img1 = "Images/dt4.png", NameProduct = "iPhone13 128GB", Price = "22000000", Promotion = "19290000", Id = "24", SoLuong = "1" });
            sanpham.Add(new SanPhamModel() { Img1 = "Images/dt5.png", NameProduct = "VIVO Y22", Price = "5990000", Promotion = "5300000", Id = "25", SoLuong = "1" });
            sanpham.Add(new SanPhamModel() { Img1 = "Images/dt6.png", NameProduct = "VIVO Q35", Price = "2490000", Promotion = "2110000", Id = "26", SoLuong = "1" });
            sanpham.Add(new SanPhamModel() { Img1 = "Images/dt7.png", NameProduct = "Oppo Reno 7", Price = "8490000", Promotion = "6990000", Id = "27", SoLuong = "1" });
            sanpham.Add(new SanPhamModel() { Img1 = "Images/dt8.png", NameProduct = "TLC win", Price = "300000", Promotion = "2699000", Id = "28", SoLuong = "1" });
            sanpham.Add(new SanPhamModel() { Img1 = "Images/dt9.png", NameProduct = "Oppo A95", Price = "6990000", Promotion = "5990000", Id = "29", SoLuong = "1" });
            sanpham.Add(new SanPhamModel() { Img1 = "Images/dt10.png", NameProduct = "Realme Q55s", Price = "4000000", Promotion = "3650000", Id = "30", SoLuong = "1" });
            sanpham.Add(new SanPhamModel() { Img1 = "Images/phukien1.jpg", NameProduct = "Cáp sạc", Price = "290000", Promotion = "99000", Id = "31", SoLuong = "1" });
            sanpham.Add(new SanPhamModel() { Img1 = "Images/phukien2.jpg", NameProduct = "Giá đỡ điện thoại Samsung", Price = "30000", Promotion = "19000", Id = "32", SoLuong = "1" });
            sanpham.Add(new SanPhamModel() { Img1 = "Images/phukien3.jpg", NameProduct = "Giá đỡ điện thoại Iphone", Price = "139000", Promotion = "119000", Id = "33", SoLuong = "1" });
            sanpham.Add(new SanPhamModel() { Img1 = "Images/phukien4.jpg", NameProduct = "Chụp từ xa", Price = "220000", Promotion = "192000", Id = "34", SoLuong = "1" });
            sanpham.Add(new SanPhamModel() { Img1 = "Images/phukien5.jpg", NameProduct = "Cáp CC", Price = "59000", Promotion = "53000", Id = "35", SoLuong = "1" });
            sanpham.Add(new SanPhamModel() { Img1 = "Images/phukien6.jpg", NameProduct = "Cáp sạc BTG", Price = "24000", Promotion = "21000", Id = "36", SoLuong = "1" });
            sanpham.Add(new SanPhamModel() { Img1 = "Images/phukien7.jpg", NameProduct = "Cáp BS3", Price = "84000", Promotion = "69000", Id = "37", SoLuong = "1" });
            sanpham.Add(new SanPhamModel() { Img1 = "Images/phukien8.jpg", NameProduct = "Cáp Win 1", Price = "30000", Promotion = "29000", Id = "38", SoLuong = "1" });
            sanpham.Add(new SanPhamModel() { Img1 = "Images/phukien9.jpg", NameProduct = "Cáp Win 2", Price = "69000", Promotion = "59000", Id = "39", SoLuong = "1" });
            sanpham.Add(new SanPhamModel() { Img1 = "Images/phukien10.jpg", NameProduct = "Cáp Win 3", Price = "40000", Promotion = "36500", Id = "40", SoLuong = "1" });
            Application["danhsachsanpham"] = sanpham;

        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}