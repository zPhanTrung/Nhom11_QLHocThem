using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Nhom11_QLHocThem.Areas.Admin.Model
{
    public class HocSinh
    {
        public string MaHocSinh { get; set; }
        public string TenHocSinh { get; set; }
        public DateTime NgaySinh { get; set; }
        public bool GioiTinh { get; set; }
        public string DiaChi { get; set; }
        public string SDT { get; set; }
        public string MaMienGiam { get; set; }
        public string MaLopHoc { get; set; }
        public int IdNguoiDung { get; set; }
    }
}