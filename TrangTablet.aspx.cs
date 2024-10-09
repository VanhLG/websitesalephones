using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BaiTapLon_LTW
{
    public partial class TrangTablet : System.Web.UI.Page
    {
        public List<SanPhamModel> san_pham { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            san_pham = (List<SanPhamModel>)Application["danhsachsanpham"];
        }
        protected void click(object sender, EventArgs e)
        {
            List<SanPhamModel> products = new List<SanPhamModel>();
            Application["danhsachlienquan"] = products;
            List<SanPhamModel> productsAll = new List<SanPhamModel>();
            productsAll = (List<SanPhamModel>)Application["danhsachtablet"];

            // Lấy tiêu chí tìm kiếm từ CommandArgument của nút được click
            string searchCriteria = ((LinkButton)sender).CommandArgument;
            foreach (SanPhamModel i in productsAll)
            {
                if (i.NameProduct.Contains(searchCriteria))
                {
                    products.Add(i);
                }
            }
            Application["danhsachlienquan"] = products;
            Response.Redirect("ChiTietSanPham.aspx");
        }
    }
}