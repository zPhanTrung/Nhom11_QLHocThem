using Nhom11_QLHocThem.Areas.Admin.Model;
using Nhom11_QLHocThem.Areas.Admin.Model.DTO;
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
    public class BienLaiTraLuongDao
    {
        private static SqlConnection connection;

        public static List<BLTraLuong_GiaoVien> GetAllBienLaiTraLuong()
        {
            connection = Connection.GetConnection();
            string queryString = "SELECT MaBLTraLuong, TenGiaoVien, NgayTra, " +
                "TraChoThangNam, TrangThai, TongLuong FROM BienLaiTraLuong bl, GiaoVien gv " +
                "WHERE bl.MaGiaoVien = gv.MaGiaoVien";
            List<BLTraLuong_GiaoVien> bienlaitraluongs = new List<BLTraLuong_GiaoVien>();
            SqlCommand command = new SqlCommand(queryString, connection);
            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    Type type = typeof(BLTraLuong_GiaoVien);
                    BLTraLuong_GiaoVien obj = (BLTraLuong_GiaoVien)Activator.CreateInstance(type);
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
                    bienlaitraluongs.Add(obj);
                }
                reader.Close();
            }
            catch
            { }

            return bienlaitraluongs;
        }
        public static bool InsertBienLaiTraLuong(FormCollection collection)
        {
            connection = Connection.GetConnection();

            connection.Open();
            SqlCommand command = new SqlCommand("P_AddBLTraLuong", connection);
            command.CommandType = CommandType.StoredProcedure;

            command.Parameters.AddWithValue("@NgayTra", collection["ngaytra"]);
            command.Parameters.AddWithValue("@Trachothangnam", collection["trachothangnam"].ToString());
            command.Parameters.AddWithValue("@TrangThai", 0);
            command.Parameters.AddWithValue("@MaGiaoVien", collection["magiaovien"]);

            int rs = command.ExecuteNonQuery();
            connection.Close();
            if (rs > 0)
                return false;
            return true;
        }
    }
}