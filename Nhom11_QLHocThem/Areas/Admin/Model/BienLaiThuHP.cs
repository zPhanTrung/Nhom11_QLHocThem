using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Nhom11_QLHocThem.Areas.Admin.Model
{
    public class BienLaiThuHP
    {
        public string MaBLThuHP { get; set; }
        public decimal TongHocPhi { get; set; }
        public DateTime NgayThu { get; set; }
        public bool TrangThai { get; set; }
        public string MaHocSinh { get; set; }
    }
}