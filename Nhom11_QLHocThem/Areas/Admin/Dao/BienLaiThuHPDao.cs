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
    public class BienLaiThuHPDao
    {
        private static SqlConnection connection;

        public static List<BienLaiThuHP_HocSinhView> GetAllBienLaiThuHP()
        {
            connection = Connection.GetConnection();
            string queryString = "SELECT bl.MaBLThuHP, hs.TenHocSinh, hs.NgaySinh, bl.TongHocPhi, " +
                "                           bl.NgayThu, bl.ThuChoThangNam, bl.TrangThai " +
                "                   FROM BienLaiThuHP bl JOIN HocSinh hs ON bl.MaHocSinh = hs.MaHocSinh";
            List<BienLaiThuHP_HocSinhView> bienlai = new List<BienLaiThuHP_HocSinhView>();
            SqlCommand command = new SqlCommand(queryString, connection);
            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    Type type = typeof(BienLaiThuHP_HocSinhView);
                    BienLaiThuHP_HocSinhView obj = (BienLaiThuHP_HocSinhView)Activator.CreateInstance(type);
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
                    bienlai.Add(obj);
                }
                reader.Close();
            }
            catch
            { }

            return bienlai;
        }

        public static bool CheckExistBienLai(string nam, string thang)
        {
            connection = Connection.GetConnection();
            connection.Open();
            string date = nam + "-" + thang + "-" + "1";
            string query = "SELECT * FROM BienLaiThuHP bl WHERE bl.ThuChoThangNam=@date";

            SqlCommand command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@date", date);

            var rs = command.ExecuteScalar();
            connection.Close();

            if (rs != null)
                return true;
            return false;
        }

        public static bool InsertBienLai(FormCollection collection)
        {
            connection = Connection.GetConnection();

            connection.Open();
            SqlCommand command = new SqlCommand("ThemBLThuHP", connection);
            command.CommandType = CommandType.StoredProcedure;

            string date = collection["nam"] + "/" + collection["thang"] + "/" + "1";
            command.Parameters.AddWithValue("@ThuChoThangNam", date);
           
            int rs = command.ExecuteNonQuery();
            connection.Close();
            if (rs > 0)
                return false;
            return true;
        }

        public static List<CTBienLaiThuHPView> GetCTBienLaiThuHP(int mabienlai)
        {
            connection = Connection.GetConnection();
            string queryString = "SELECT bl.TongHocPhi, ct.MaLopHoc, lh.TenLopHoc, ct.TongSoBuoi, lh.HocPhi1Buoi, ct.ThanhTien"+
                                   " FROM CTBienLaiThuHP ct JOIN BienLaiThuHP bl ON ct.MaBLThuHP = bl.MaBLThuHP AND bl.MaBLThuHP = @mabienlai" +
                                    " JOIN LopHoc lh ON lh.MaLopHoc = ct.MaLopHoc";

            List<CTBienLaiThuHPView> ctbienlai = new List<CTBienLaiThuHPView>();
            SqlCommand command = new SqlCommand(queryString, connection);
            command.Parameters.AddWithValue("@mabienlai", mabienlai);
            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    Type type = typeof(CTBienLaiThuHPView);
                    CTBienLaiThuHPView obj = (CTBienLaiThuHPView)Activator.CreateInstance(type);
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
                    ctbienlai.Add(obj);
                }
                reader.Close();
            }
            catch
            { }

            return ctbienlai;
        }


        public static BienLaiThuHP GetBienLaiThuHP(int mabienlai)
        {
            connection = Connection.GetConnection();
            string queryString = "SELECT * FROM BienLaiThuHP bl WHERE bl.MaBLThuHP=@mabienlai";
            BienLaiThuHP bienlai = new BienLaiThuHP();
            SqlCommand command = new SqlCommand(queryString, connection);
            command.Parameters.AddWithValue("mabienlai", mabienlai);
            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    Type type = typeof(BienLaiThuHP);
                    BienLaiThuHP obj = (BienLaiThuHP)Activator.CreateInstance(type);
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
                    bienlai = obj;
                }
                reader.Close();
            }
            catch
            { }

            return bienlai;
        }
    }
}