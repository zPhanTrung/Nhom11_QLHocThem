using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Nhom11_QLHocThem.Areas.Admin.Model
{
    public class CTBienLaiTraLuong
    {
        public int ID { get; set; }
        public int MaBLTraLuong{ get; set; }
        public string MaLopHoc { get; set; }
        public int TongSoBuoi { get; set; }
        public decimal Luong1Buoi { get; set; }
    }
}