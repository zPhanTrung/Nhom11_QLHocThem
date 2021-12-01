using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Nhom11_QLHocThem.Areas.Admin.Model
{
    public class BuoiHoc
    {
        public int MaBuoiHoc { get; set; }
        public DateTime NgayHoc { get; set; }
        public string ThoiGian { get; set; }
        public int SoLuongHocSinh { get; set; }
        public int Vang { get; set; }
        public string MaLopHoc { get; set; }
    }
}