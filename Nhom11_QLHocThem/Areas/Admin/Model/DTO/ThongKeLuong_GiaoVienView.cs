using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Nhom11_QLHocThem.Areas.Admin.Model.DTO
{
    public class ThongKeLuong_GiaoVienView
    {
        public string TenGiaoVien { get; set; }
        public int TyLePhanTram { get; set; }
        public int TongSoLop { get; set; }
        public int TongSoBuoi { get; set; }
        public float thanhtien { get; set; }
    }
}