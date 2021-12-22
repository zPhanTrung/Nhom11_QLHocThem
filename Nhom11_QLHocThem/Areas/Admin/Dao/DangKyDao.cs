﻿using Nhom11_QLHocThem.Areas.Admin.Model;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection;
using System.Web;

namespace Nhom11_QLHocThem.Areas.Admin.Dao
{
    public class DangKyDao
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
    }
}