using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Nhom11_QLHocThem.Areas.Admin.Model.DTO
{
    public class BLTraLuong_GiaoVien
    {
        public int MaBLTraLuong { get; set; }
        public decimal TongLuong { get; set; }
        public DateTime NgayTra { get; set; }
        public string TraChoThangNam { get; set; }
        public bool TrangThai { get; set; }
        public string MaGiaoVien { get; set; }
        public string TenGiaoVien { get; set; }
    }
}