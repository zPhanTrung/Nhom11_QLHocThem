using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Nhom11_QLHocThem.Areas.Admin.Model.DTO
{
    public class CTTraLuong_LopHoc
    {
        public int ID { get; set; }
        public int MaBLTraLuong { get; set; }
        public string MaLopHoc { get; set; }
        public string TenLopHoc { get; set; }
        public int TongSoBuoi { get; set; }
        public decimal Luong1Buoi { get; set; }
        public decimal ThanhTien { get; set; }
    }
}