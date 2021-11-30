using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Nhom11_QLHocThem.Areas.Admin.Model
{
    public class GiaoVien
    {
        public string MaGiaoVien { get; set; }
        public string TenGiaoVien { get; set; }
        public DateTime NgaySinh{ get;set; }
        public string GioiTinh{ get;set; }
        public string DiaChi{ get;set; }
        public string SDT{ get;set; }
        public string TaiKhoanNganHang{ get;set; }
        public string MaMonHoc{ get;set; }
        public string MaMTT{ get;set; }
    }
}