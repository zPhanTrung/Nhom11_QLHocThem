﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Nhom11_QLHocThem.Areas.Admin.Model.DTO
{
    public class LopHocDTO
    {
        public string MaLopHoc { get; set; }
        public string TenLopHoc { get; set; }
        public decimal HocPhi1Buoi { get; set; }
        public int SoLuongHocSinh { get; set; }
        public int HocPhiMotBuoi { get; set; }
        public string MaGiaoVien { get; set; }
        public string MaMonHoc { get; set; }
        public string MaNienKhoa { get; set; }
        public DateTime NgayBatDau { get; set; }
        public DateTime NgayKetThuc { get; set; }
        public DateTime NgayBatDauDangKy { get; set; }
        public DateTime NgayKetThucDangKy { get; set; }
        public string TenMonHoc { get; set; }
        public int SoLuong { get; set; }
        public string TenNienKhoa { get; set; }
        public string NamHoc { get; set; }
    }
}