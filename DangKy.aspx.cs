using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BaiTapLon_LTW
{
    public partial class DangKy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            success.InnerText = "";
            if (IsPostBack)
            {
                var Hoten = Request.Form["hoten"];
                var tentaikhoan = Request.Form["taikhoan"];
                var Matkhau = Request.Form["matkhau"];
                var pin = Request.Form["pin"];
                var sdt = Request.Form["sdt"];
                List<taikhoan> listtaikhoan = (List<taikhoan>)Application["danhsachtaikhoan"];
                taikhoan CheckTaiKhoan = new taikhoan();
                int check = 0;
                foreach (taikhoan i in listtaikhoan)
                {
                    if (i.Hoten == Hoten && i.Tentaikhoan == tentaikhoan)
                    {
                        check = 1;

                        success.InnerText = "Tài khoản đã tồn tại";
                        break;
                    }
                    else success.InnerText = check.ToString();
                }
                if (check == 0)
                {
                    CheckTaiKhoan.Hoten = Hoten;
                    CheckTaiKhoan.Tentaikhoan = tentaikhoan;
                    CheckTaiKhoan.Matkhau = Matkhau;
                    CheckTaiKhoan.Pin = pin;
                    CheckTaiKhoan.Sdt = sdt;
                    listtaikhoan.Add(CheckTaiKhoan);
                    Application["danhsachtaikhoan"] = listtaikhoan;
                    success.InnerText = $"Chúc mừng bạn đã đăng kí thành công";

                }
                List<taikhoan> danhSachTaiKhoan = (List<taikhoan>)Application["danhsachtaikhoan"];
                lblThongBao.Visible = true;
            }
        }
    }
}