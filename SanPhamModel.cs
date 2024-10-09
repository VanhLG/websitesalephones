using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BaiTapLon_LTW
{
    public class SanPhamModel
    {
        string Img;
        string nameProduct;
        string price;
        string soluong;
        string id;
        String promotion;
        public SanPhamModel()
        {

        }
        public SanPhamModel(string Img, string nameProduct, string price, string id, string soluong, string promotion)
        {
            this.Img1 = Img;
            this.NameProduct = nameProduct;
            this.Price = price;
            this.id = id;
            this.soluong = soluong;
            this.promotion = promotion;
        }

        public string Img1 { get => Img; set => Img = value; }
        public string NameProduct { get => nameProduct; set => nameProduct = value; }
        public string Price { get => price; set => price = value; }
        public string Id { get => id; set => id = value; }
        public string SoLuong { get => soluong; set => soluong = value; }
        public string Promotion { get => promotion; set => promotion = value; }
    }
}