using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Nhom11_QLHocThem.Areas.Admin.Model.DTO
{
    public class DiemDanhView
    {
        public DateTime NgayHoc { get; set; }
        public string ThoiGian { get; set; }
        public int SoLuongHocSinh { get; set; }
        public string MaHocSinh { get; set; }
        public string TenHocSinh { get; set; }
        public DateTime NgaySinh { get; set; }
        public bool TichVang { get; set; }
        public string GhiChu { get; set; }
    }
}