using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Nhom11_QLHocThem.Areas.Admin.Model
{
    public class LopHoc_View
    {
        public string MaLopHoc { get; set; }
        public string TenLopHoc { get; set; }
        public string TenGiaoVien { get; set; }
        public DateTime NgayBatDau{ get; set; }
        public DateTime NgayKetThuc { get; set; }
        public int SoLuongHocSinh { get; set; }
        public decimal HocPhi1Buoi { get; set; }
        public string MonHoc { get; set; }

    }
}
