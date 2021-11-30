using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Nhom11_QLHocThem.Areas.Admin.Model.DTO
{
    public class BienLaiThuHP_HocSinhView
    {
        public int MaBLThuHP { get; set; }
        public string TenHocSinh { get; set; }
        public DateTime NgaySinh { get; set; }
        public decimal TongHocPhi { get; set; }
        public DateTime NgayThu { get; set; }
        public DateTime ThuChoThangNam { get; set; }
        public bool TrangThai { get; set; }
    }
}