using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Principal;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BaiTapLon_LTW
{
    public partial class deleteCartItem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
                int productId = int.Parse(Request.QueryString["productId"]);
                List<CartItem> cartItems = (List<CartItem>)Session["Cart"];
            for (int i = 0; i < cartItems.Count; i++)
            {
                if (int.Parse(cartItems[i].SanPham.Id) == productId)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Nội dung thông báo');", true);
                    cartItems.RemoveAt(i);
                    break;
                }
            }
            Session["Cart"] = cartItems;
            Response.Redirect("GioHang.aspx");

        }
    }
}