using System;
using System.Collections.Generic;
using System.EnterpriseServices.CompensatingResourceManager;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BaiTapLon_LTW
{
    public partial class GioHang : System.Web.UI.Page
    {
        public bool check;
        public List<CartItem> CartItems { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            //Xoa.Click += new EventHandler(Xoa_Click);
            CartItems = Session["Cart"] as List<CartItem> ?? new List<CartItem>();
            check = (bool)Application["checkdangnhap"];
        }
        void Xoa_Click(object sender, EventArgs e)
        {

            var carts = Session["Cart"] as List<CartItem> ?? new List<CartItem>();



            carts.Clear();



        }
    }
}