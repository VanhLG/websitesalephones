using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BaiTapLon_LTW
{
    public partial class ChiTietSanPham : System.Web.UI.Page
    {
        int quantity = 1;
        public String productId { get; set; }
        public List<SanPhamModel> Products { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            productId = Request.QueryString["id"].ToString() ?? "";

            ThemVaoGioHang.Click += new EventHandler(ThemVaoGioHang_Click);
            Products = new List<SanPhamModel>();
            Products = (List<SanPhamModel>)Application["danhsachsanpham"];
           
            SanPhamModel newProducts = new SanPhamModel();
            
            //foreach (SanPhamModel p in products)
            //{
            //html += $"<li style=\"font-size:30px;list-style:none;\"  class=\"tensp\" >{p.NameProduct}</li>\r\n";
            //html += $"<li style=\"list-style:none;\"  class=\"img\"><img src={p.Img1} width=\"200px\"></li>\r\n";
            //html += $"\r\n";
            //html += $"\r\n";
            //block1.InnerHtml = html;
            //html1 += $"<p style=\"margin-bottom: 5px; margin-top: 10px;\">Online giá rẻ quá</p>\r\n";
            //html1 += $"<h2 style=\"margin-bottom: 5px;\">{p.Promotion}<sup>đ</sup></h2>\r\n";
            //html1 += $"<p style=\"margin-bottom: 5px;\">Giá gốc</p>\r\n";
            //html1 += $"<h2 style=\"margin-bottom: 5px;\"><del>{p.Price}</del><sup>đ</sup></h2>\r\n";

            ////html1 += $"<p style=\"font-size: 20px;margin-left: 10px; margin-bottom: 10px;\">{p.SoLuong}</p>\r\n";

            //block2.InnerHtml = html1;
            //break;
        //}
               
             
               
                string html = "";
                string html1 = "";
                int Increast = 0;
                var p = Products.FirstOrDefault(x => x.Id.Equals(productId));
                html += $"<nav class=\"bodychitiet\">";
                html += $"<li style=\"font-size:30px;list-style:none;\"  class=\"tensp\" >{p.NameProduct}</li>\r\n";
                html += $"<li style=\"list-style:none;\"  class=\"img\"><img src={p.Img1} width=\"200px\"></li>\r\n";
                html += $"\r\n";
                html += $"\r\n";
                block1.InnerHtml = html;
                html1 += $"<p style=\"margin-bottom: 5px; margin-top: 10px;\">Online giá rẻ quá</p>\r\n";
                html1 += $"<h2 style=\"margin-bottom: 5px;\">{p.Promotion}<sup>đ</sup></h2>\r\n";
                html1 += $"<p style=\"margin-bottom: 5px;\">Giá gốc</p>\r\n";
                html1 += $"<h2 style=\"margin-bottom: 5px;\"><del>{p.Price}</del><sup>đ</sup></h2>\r\n";
                block2.InnerHtml = html1;
            
        }
        protected void IncreaseButton_Click(object sender, EventArgs e)
        {
            // Tăng giá trị số lượng lên 1
            quantity = int.Parse(QuantityTextBox.Text);
            quantity++;
            QuantityTextBox.Text = quantity.ToString();
        }

        protected void DecreaseButton_Click(object sender, EventArgs e)
        {
            // Giảm giá trị số lượng đi 1, nhưng không được nhỏ hơn 1
            quantity = int.Parse(QuantityTextBox.Text);
            if (quantity > 1)
            {
                quantity--;
                QuantityTextBox.Text = quantity.ToString();
            }
        }
        void ThemVaoGioHang_Click(object sender, EventArgs e)
        {
            var name = Request.QueryString.Get("NameProduct");
            var carts = Session["Cart"] as List<CartItem> ?? new List<CartItem>();
            CartItem cartItem = null;
            foreach (var item in carts)
            {
                if (item.SanPham.Id.Equals(productId))
                {
                    cartItem = item;
                    break;
                }
            }
            //if (cartItem != null)
            //{
            //    cartItem.SoLuong = cartItem.SoLuong + int.Parse(QuantityTextBox.Text);
            //}
            //else
            //if (cartItem == null)
            //{
                cartItem = new CartItem();
                cartItem.SanPham = Products.FirstOrDefault(x => x.Id.Equals(productId));
                cartItem.SoLuong = int.Parse(QuantityTextBox.Text);
                carts.Add(cartItem);
           // }
            Session["Cart"] = carts;


            Response.Redirect("GioHang.aspx");
        }
    }
}