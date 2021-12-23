﻿using Nhom11_QLHocThem.Areas.Admin.Model;
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
    public class BuoiHocDao
    {
        private static SqlConnection connection;
        public static List<BuoiHoc> GetAllBuoiHoc(string malophoc)
        {
            connection = Connection.GetConnection();
            string queryString = "SELECT bh.MaBuoiHoc, bh.NgayHoc, bh.ThoiGian, bh.SoLuongHocSinh, bh.Vang"+
                                  " FROM BuoiHoc bh"+
                                  " WHERE bh.MaLopHoc = @malophoc";

            List<BuoiHoc> buoihoc = new List<BuoiHoc>();
            SqlCommand command = new SqlCommand(queryString, connection);
            command.Parameters.AddWithValue("@malophoc", malophoc);
            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    Type type = typeof(BuoiHoc);
                    BuoiHoc obj = (BuoiHoc)Activator.CreateInstance(type);
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
                    buoihoc.Add(obj);
                }
                reader.Close();
            }
            catch
            { }

            return buoihoc;
        }

        public static bool InsertBuoiHoc(FormCollection collection)
        {
            connection = Connection.GetConnection();

            connection.Open();
            SqlCommand command = new SqlCommand("ThemBuoiHoc", connection);
            command.CommandType = CommandType.StoredProcedure;

            var vang = 0;
            command.Parameters.AddWithValue("@NgayHoc", collection["ngayhoc"]);
            command.Parameters.AddWithValue("@ThoiGian", collection["thoigian"]);
            command.Parameters.AddWithValue("@Vang", vang);
            command.Parameters.AddWithValue("@MaLopHoc", collection["malophoc"]);

            int rs = command.ExecuteNonQuery();
            connection.Close();
            if (rs > 0)
                return false;
            return true;
        }

        public static BuoiHoc FindById(int mabuoihoc)
        {
            connection = Connection.GetConnection();
            string queryString = "SELECT *" +
                                  " FROM BuoiHoc bh" +
                                  " WHERE bh.MaBuoiHoc = @mabuoihoc";

            BuoiHoc buoihoc = new BuoiHoc();
            SqlCommand command = new SqlCommand(queryString, connection);
            command.Parameters.AddWithValue("@mabuoihoc", mabuoihoc);
            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    Type type = typeof(BuoiHoc);
                    BuoiHoc obj = (BuoiHoc)Activator.CreateInstance(type);
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
                    buoihoc = obj;
                }
                reader.Close();
            }
            catch
            { }

            return buoihoc;
        }

        public static List<ThongKeVangDTO> TKV()
        {
            connection = Connection.GetConnection();

            string queryString = "select lh.TenLopHoc, sum(bh.Vang) as HSV " +
                                 "from BuoiHoc bh inner join LopHoc lh on bh.MalopHoc = lh.MaLopHoc"+
                                  "group by lh.TenLopHoc";

            List<ThongKeVangDTO> list = new List<ThongKeVangDTO>();
            SqlCommand command = new SqlCommand(queryString, connection);
            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    Type type = typeof(ThongKeVangDTO);
                    ThongKeVangDTO obj = (ThongKeVangDTO)Activator.CreateInstance(type);
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
                    list.Add(obj);
                }
                reader.Close();
            }
            catch
            { }
            return list;
        }

    }
}