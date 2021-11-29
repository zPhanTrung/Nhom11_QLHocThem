using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Nhom11_QLHocThem.Areas.Admin.Model
{
    public class CTBienLaiThuHP
    {
        public int ID { get; set; }
        public string MaBLThuHP { get; set; }
        public string MaLopHoc { get; set; }
        public int TongSoBuoi { get; set; }
        public decimal HocPhi1Buoi { get; set; }
        public decimal ThanhTien { get; set; }
    }
}