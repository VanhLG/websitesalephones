using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BaiTapLon_LTW
{
    public partial class TrangChu : System.Web.UI.Page
    {
        public List<SanPhamModel> san_pham { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            san_pham = (List<SanPhamModel>)Application["danhsachsanpham"];
        }
    }
}