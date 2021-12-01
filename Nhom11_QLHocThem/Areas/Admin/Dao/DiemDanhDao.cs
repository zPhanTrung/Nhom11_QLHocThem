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
    public class DiemDanhDao
    {
        private static SqlConnection connection;
        public static List<BuoiHoc_DiemDanhView> GetAllBuoiHoc(string malophoc)
        {
            connection = Connection.GetConnection();
            string queryString = "SELECT * FROM BuoiHoc bh WHERE bh.MaLopHoc=@malophoc";
            List<BuoiHoc_DiemDanhView> diemdanh = new List<BuoiHoc_DiemDanhView>();
            SqlCommand command = new SqlCommand(queryString, connection);
            command.Parameters.AddWithValue("@malophoc", malophoc);
            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    Type type = typeof(BuoiHoc_DiemDanhView);
                    BuoiHoc_DiemDanhView obj = (BuoiHoc_DiemDanhView)Activator.CreateInstance(type);
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
                    diemdanh.Add(obj);
                }
                reader.Close();
            }
            catch
            { }

            return diemdanh;
        }

        public static List<DiemDanhView> GetBangDiemDanh(int mabuoihoc)
        {
            connection = Connection.GetConnection();
            string queryString = "SELECT bh.NgayHoc, bh.ThoiGian, bh.SoLuongHocSinh, hs.MaHocSinh, hs.TenHocSinh, hs.NgaySinh, dd.TichVang, dd.GhiChu"+
                                   " FROM BuoiHoc bh JOIN DiemDanh dd ON bh.MaBuoiHoc = dd.MaBuoiHoc AND bh.MaBuoiHoc = @mabuoihoc"+
                                                    " JOIN HocSinh hs ON hs.MaHocSinh = dd.MaHocSinh";
            List<DiemDanhView> diemdanh = new List<DiemDanhView>();
            SqlCommand command = new SqlCommand(queryString, connection);
            command.Parameters.AddWithValue("@mabuoihoc", mabuoihoc);
            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    Type type = typeof(DiemDanhView);
                    DiemDanhView obj = (DiemDanhView)Activator.CreateInstance(type);
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
                    diemdanh.Add(obj);
                }
                reader.Close();
            }
            catch
            { }

            return diemdanh;
        }

        public static bool UpdateDiemDanh(int id, FormCollection collection)
        {
            connection = Connection.GetConnection();

            connection.Open();

            int length = collection.Count;
            for (int i = 0; i < length; i = i + 2)
            {
                SqlCommand command = new SqlCommand("SuaDiemDanh", connection);
                command.CommandType = CommandType.StoredProcedure;

                if (collection[i+1]=="true")
                    command.Parameters.AddWithValue("@TichVang", true);
                else
                    command.Parameters.AddWithValue("@TichVang", false);
                command.Parameters.AddWithValue("@GhiChu", collection[i]);

                string mahocsinh = collection.GetKey(i).Split('-')[1];
                command.Parameters.AddWithValue("@MaHocSinh", mahocsinh);
                command.Parameters.AddWithValue("@MaBuoiHoc", id);

                command.ExecuteNonQuery();

            }

            connection.Close();
            return true;

        }

    }
}