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
    public class HocSinhDao
    {
        private static SqlConnection connection;

        public static List<HocSinh> GetAllStudent()
        {
            connection = Connection.GetConnection();
            string queryString = "Select * from HocSinh";
            List <HocSinh> hocsinhs = new List<HocSinh>();
            SqlCommand command = new SqlCommand(queryString, connection);
            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    Type type = typeof(HocSinh);
                    HocSinh obj = (HocSinh)Activator.CreateInstance(type);
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
                    hocsinhs.Add(obj);
                }
                reader.Close();
            }
            catch
            { }

            return hocsinhs;
        }

        public static bool InsertHocSinh(FormCollection collection)
        {
            connection = Connection.GetConnection();
            
            connection.Open();
            SqlCommand command = new SqlCommand("ThemHocSinh", connection);
            command.CommandType = CommandType.StoredProcedure;
            
            command.Parameters.AddWithValue("@MaHocSinh", collection["mahocsinh"]);
            command.Parameters.AddWithValue("@TenHocSinh", collection["tenhocsinh"]);
            command.Parameters.AddWithValue("@NgaySinh", collection["ngaysinh"]);
            command.Parameters.AddWithValue("@GioiTinh", collection["gioitinh"]);
            command.Parameters.AddWithValue("@DiaChi", collection["diachi"]);
            command.Parameters.AddWithValue("@SDT", collection["sdt"]);

            if (collection["mamiengiam"] != "")
                command.Parameters.AddWithValue("@MaMienGiam", collection["mamiengiam"]);

            if (collection["malophoc"] != null)
                command.Parameters.AddWithValue("@MaLopHoc", collection["malophoc"]);
            


            int rs = command.ExecuteNonQuery();
            connection.Close();
            if (rs > 0)
                return false;
            return true;
        }

        public static bool UpdateHocSinh(FormCollection collection)
        {
            connection = Connection.GetConnection();

            connection.Open();
            SqlCommand command = new SqlCommand("SuaHocSinh", connection);
            command.CommandType = CommandType.StoredProcedure;

            command.Parameters.AddWithValue("@MaHocSinh", collection["mahocsinh"]);
            command.Parameters.AddWithValue("@TenHocSinh", collection["tenhocsinh"]);
            command.Parameters.AddWithValue("@NgaySinh", collection["ngaysinh"]);
            command.Parameters.AddWithValue("@GioiTinh", collection["gioitinh"]);
            command.Parameters.AddWithValue("@DiaChi", collection["diachi"]);
            command.Parameters.AddWithValue("@SDT", collection["sdt"]);

            if (collection["mamiengiam"] != "")
                command.Parameters.AddWithValue("@MaMienGiam", collection["mamiengiam"]);

            if (collection["malophoc"] != null)
                command.Parameters.AddWithValue("@MaLopHoc", collection["malophoc"]);

            int rs = command.ExecuteNonQuery();
            connection.Close();
            if (rs > 0)
                return false;
            return true;

        }

        public static void DeleteHocSinh(string mahocsinh)
        {
            connection = Connection.GetConnection();

            connection.Open();
            string query = "Delete HocSinh Where MaHocSinh=@MaHocSinh";

            SqlCommand command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@MaHocSinh", mahocsinh);

            command.ExecuteNonQuery();
            connection.Close();
        }
    }
}