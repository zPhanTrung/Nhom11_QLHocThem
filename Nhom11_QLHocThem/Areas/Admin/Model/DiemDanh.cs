using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Nhom11_QLHocThem.Areas.Admin.Model
{
    public class DiemDanh
    {
        public int ID { get; set; }
        public int MaBuoiHoc { get; set; }
        public string MaLopHoc { get; set; }
        public string MaHocSinh { get; set; }
        public bool TichVang { get; set; }
        public string GhiChu { get; set; }
    }
}