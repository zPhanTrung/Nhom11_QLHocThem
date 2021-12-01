using Nhom11_QLHocThem.Areas.Admin.Model.DTO;
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
        public static List<LopHoc> GetAllLopHoc()
        {
            connection = Connection.GetConnection();
            string queryString = "SELECT * FROM LopHoc";
            List<LopHoc> lophocs = new List<LopHoc>();
            SqlCommand command = new SqlCommand(queryString, connection);
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
                    lophocs.Add(obj);
                }
                reader.Close();
            }
            catch
            { }

            return lophocs;
        }

        public static LopHoc GetLopHoc(string malophoc)
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
        public static List<LopHocDTO> List_Class_DTO()
        {
            connection = Connection.GetConnection();
            string queryString = "Select * from LopHoc lh join GiaoVien gv " +
                                           " on lh.MaGiaoVien = gv.MaGiaoVien" +
                                            "join NienKhoa nk on lh.MaNienKhoa = nk.MaNienKhoa " +
                                            "join MonHoc mh on lh.MaMonHoc = mh.MaMonHoc";

            List<LopHocDTO> lophocs = new List<LopHocDTO>();
            SqlCommand command = new SqlCommand(queryString, connection);
            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    Type type = typeof(HocSinh);
                    LopHocDTO obj = (LopHocDTO)Activator.CreateInstance(type);
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
    }
}