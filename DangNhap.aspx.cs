using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BaiTapLon_LTW
{
    public partial class DangNhap : System.Web.UI.Page
    {
        int count = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            List<taikhoan> danhSachTaiKhoan = Application["danhsachtaikhoan"] as List<taikhoan>;

            // Kiểm tra nếu danh sách tài khoản chưa được khởi tạo thì tạo mới danh sách
            if (danhSachTaiKhoan == null)
            {
                danhSachTaiKhoan = new List<taikhoan>();
                Application["danhsachtaikhoan"] = danhSachTaiKhoan;
            }
            if (IsPostBack)
            {
                
                var email = Request.Form["User"];
                var Pasworld = Request.Form["passwordInput"];
                var pin = Request.Form["pinInput"];
                bool ck = false;
                if (email == "" && (Pasworld == "" || pin == ""))
                {
                    // ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Cần nhập đủ thông tin');", true);
                    success.InnerText = "Cần nhập đủ thông tin";
                    ck = false;
                }
                else
                {
                    ck = true;
                }
                List<taikhoan> listtaikhoan = (List<taikhoan>)Application["danhsachtaikhoan"];
                if (ck)
                {
                    bool checkSignin = false;
                    foreach (taikhoan item in listtaikhoan)
                    {
                        if (email == item.Tentaikhoan && Pasworld == item.Matkhau)
                        {
                            checkSignin = true;
                            count = 0;
                            break;
                        }
                        else if (email == item.Tentaikhoan && pin == item.Pin)
                        {
                            checkSignin = true;
                            count = 0;
                            break;
                        }
                        else
                        {
                            //ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Nhập sai tên tài khoản hoặc mật khẩu');", true);
                            
                            count++;
                            if(count <2)
                                success.InnerText = "Nhập sai thông tin tài khoản lần" + count;
                            checkSignin = false;
                            if (count >= 3)
                            {
                                success.InnerText="Bạn đã nhập sai quá nhiều lần. Vui lòng thử lại sau.";
                                // Thêm mã giả lập việc khóa tài khoản ở đây
                                
                            }
                        }
                    }
                    if (checkSignin == true)
                    {
                        Application["checkdangnhap"] = true;
                        Response.Redirect("TrangChu.aspx");

                    }
                }
            }
        }
    }
    }
