using Nhom11_QLHocThem.Areas.Admin.Model.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Nhom11_QLHocThem.Areas.Admin.Dao
{
    public class DangKyDAO
    {
      
        List<LopHocDTO> list_lop = LopHocDao.List_Class_DTO();
        List<LopHocDTO> list = new List<LopHocDTO>();
        public void add_list(string maLopHoc)
        {
            LopHocDTO lop = list_lop.Find(s => s.MaLopHoc == maLopHoc);
            if (lop != null)
            {
                list.Add(lop);
            }
        }
        public List<LopHocDTO> getList()
        {
            List<LopHocDTO> get_list = new List<LopHocDTO>();
            foreach(var item in list)
            {
                get_list.Add(item);
            }
            return get_list;
        }
        public void delete_list(string maLopHoc)
        {
            LopHocDTO lop = list_lop.Find(s => s.MaLopHoc == maLopHoc);
            if (lop != null)
            {
                list.Remove(lop);
            }
        }
    }
}