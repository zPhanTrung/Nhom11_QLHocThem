using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Nhom11_QLHocThem.Areas.Admin.Model.DTO
{
    public class BuoiHoc_DiemDanhView
    {
        public string MaLopHoc { get; set; }
        public string TenLopHoc { get; set; }
        public string TenMonHoc { get; set; }
        public string TenGiaoVien { get; set; }
        public int SoLuongHocSinh { get; set; }
        public int Vang { get; set; }
    }
}