using Nhom11_QLHocThem.Areas.Admin.Model.DTO;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.Mvc;

namespace Nhom11_QLHocThem.Areas.Admin.Dao
{
    public class ThongKeDao
    {
        private static SqlConnection connection;
        public static List<ThongKeLuong_GiaoVienView> GetThongKeLuong_GiaoVienView(FormCollection collection)
        {
            connection = Connection.GetConnection();
            /*string queryString = "EXEC ThongKe '2021-12-09', '2021-12-18'";*/
            string queryString = "EXEC ThongKe @NgayBatDau, @NgayKetThuc";
            List<ThongKeLuong_GiaoVienView> thongkeluong = new List<ThongKeLuong_GiaoVienView>();
            SqlCommand command = new SqlCommand(queryString, connection);
            command.Parameters.AddWithValue("@NgayBatDau", collection["ngaybatdau"]);
            string ts = collection["ngayketthuc"].ToString();

            if (ts == "")
            {
                command.Parameters.AddWithValue("@NgayKetThuc", DateTime.Now);
            }
            else
            {
                command.Parameters.AddWithValue("@NgayKetThuc", collection["ngayketthuc"]);
            }
            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    Type type = typeof(ThongKeLuong_GiaoVienView);
                    ThongKeLuong_GiaoVienView obj = (ThongKeLuong_GiaoVienView)Activator.CreateInstance(type);
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
                    thongkeluong.Add(obj);
                }
                reader.Close();
            }
            catch
            { }
            return thongkeluong;
        }
    }
}