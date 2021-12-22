using Nhom11_QLHocThem.Areas.Admin.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.Mvc;

namespace Nhom11_QLHocThem.Areas.Admin.Dao
{
    public class LopHocDao
    {
        private static SqlConnection connection;
        public static List<LopHoc_View> GetAllLopHoc()
        {
            connection = Connection.GetConnection();
            string queryString = "SELECT lh.MaLopHoc, lh.TenLopHoc, gv.TenGiaoVien, lh.NgayBatDau, lh.NgayKetThuc," + 
                                    "lh.SoLuongHocSinh, lh.HocPhi1Buoi, mh.TenMonHoc"+
                                  " FROM LopHoc lh"+
                                  " JOIN GiaoVien gv ON lh.MaGiaoVien = gv.MaGiaoVien"+
                                  " JOIN MonHoc mh ON gv.MaMonHoc = mh.MaMonHoc";    
            List<LopHoc_View> lophocs = new List<LopHoc_View>();
            SqlCommand command = new SqlCommand(queryString, connection);
            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    Type type = typeof(LopHoc_View);
                    LopHoc_View obj = (LopHoc_View)Activator.CreateInstance(type);
                    PropertyInfo[] properties = obj.GetType().GetProperties();

                    foreach (PropertyInfo property in properties)
                    {
                        try
                        {
                            var value = reader[property.Name];
                            if (value != null)
                                property.SetValue(obj, Convert.ChangeType(value.ToString(), property.PropertyType));
                        }
                        catch { }
                    }
                    lophocs.Add(obj);
                }
                reader.Close();
            }
            catch
            { }

            return lophocs;
        }

        public static LopHoc GetLopHocByMaLop(string malophoc)
        {
            connection = Connection.GetConnection();
            string queryString = "SELECT * FROM LopHoc WHERE LopHoc.MaLopHoc=@malophoc";
            LopHoc lophoc = new LopHoc();
            SqlCommand command = new SqlCommand(queryString, connection);
            command.Parameters.AddWithValue("@malophoc", malophoc);
            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    Type type = typeof(LopHoc);
                    LopHoc obj = (LopHoc)Activator.CreateInstance(type);
                    PropertyInfo[] properties = obj.GetType().GetProperties();

                    foreach (PropertyInfo property in properties)
                    {
                        try
                        {
                            var value = reader[property.Name];
                            if (value != null)
                                property.SetValue(obj, Convert.ChangeType(value.ToString(), property.PropertyType));
                        }
                        catch { }
                    }
                    lophoc = obj;
                }
                reader.Close();
            }
            catch
            { }

            return lophoc;
        }

    }
}