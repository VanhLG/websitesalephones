using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BaiTapLon_LTW
{
    public class taikhoan
    {
        string hoten, tentaikhoan, matkhau, sdt, pin;

        public string Hoten
        {
            get { return hoten; }
            set { hoten = value; }
        }
        public string Tentaikhoan
        {
            get { return tentaikhoan; }
            set { tentaikhoan = value; }
        }

        public string Matkhau
        {
            get { return matkhau; }
            set { matkhau = value; }
        }
        public string Sdt
        {
            get { return sdt; }
            set
            {
                sdt = value;
            }
        }
        public string Pin
        {
            get { return pin; }
            set
            {
                pin = value;
            }
        }

    }
}