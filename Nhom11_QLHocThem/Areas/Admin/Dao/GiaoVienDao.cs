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
    public class GiaoVienDao
    {
        private static SqlConnection connection;

        public static List<GiaoVien> GetAllTeacher()
        {
            connection = Connection.GetConnection();
            string queryString = "Select * from GiaoVien";
            List<GiaoVien> giaoviens = new List<GiaoVien>();
            SqlCommand command = new SqlCommand(queryString, connection);
            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    Type type = typeof(GiaoVien);
                    GiaoVien obj = (GiaoVien)Activator.CreateInstance(type);
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
                    giaoviens.Add(obj);
                }
                reader.Close();
            }
            catch
            { }

            return giaoviens;
        }


        public static GiaoVien GetGiaoVien(string magiaovien)
        {
            connection = Connection.GetConnection();
            string queryString = "SELECT * FROM GiaoVien WHERE GiaoVien.MaGiaoVien = @magiaovien";
            GiaoVien giaovien = new GiaoVien();
            SqlCommand command = new SqlCommand(queryString, connection);
            command.Parameters.AddWithValue("@magiaovien", magiaovien);
            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    Type type = typeof(GiaoVien);
                    GiaoVien obj = (GiaoVien)Activator.CreateInstance(type);
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
                    giaovien = obj;
                }
                reader.Close();
            }
            catch
            { }
            return giaovien;
        }


        public static bool InsertGiaoVien(FormCollection collection)
        {
            connection = Connection.GetConnection();

            connection.Open();
            SqlCommand command = new SqlCommand("P_AddGiaoVien", connection);
            command.CommandType = CommandType.StoredProcedure;

            command.Parameters.AddWithValue("@MaGiaoVien", collection["magiaovien"]);
            command.Parameters.AddWithValue("@TenGiaoVien", collection["tengiaovien"]);
            command.Parameters.AddWithValue("@NgaySinh", collection["ngaysinh"]);
            command.Parameters.AddWithValue("@GioiTinh", collection["gioitinh"]);
            command.Parameters.AddWithValue("@DiaChi", collection["diachi"]);
            command.Parameters.AddWithValue("@SDT", collection["sdt"]);
            command.Parameters.AddWithValue("@MaMonHoc", collection["mamonhoc"]);
            command.Parameters.AddWithValue("@MaMTT", collection["mamtt"]);

            if (collection["taikhoan"] != "")
                command.Parameters.AddWithValue("@TaiKhoanNganHang", collection["sdt"]);

            int rs = command.ExecuteNonQuery();
            connection.Close();
            if (rs > 0)
                return false;
            return true;
        }

    }


    
}