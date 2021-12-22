using Nhom11_QLHocThem.Areas.Admin.Model;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection;
using System.Web;

namespace Nhom11_QLHocThem.Areas.Admin.Dao
{
    public class MonHocDao
    {
        private static SqlConnection connection;
        public static List<MonHoc> GetAllMonHoc()
        {
            connection = Connection.GetConnection();
            string queryString = "Select * from MonHoc";
            List<MonHoc> monHocs = new List<MonHoc>();
            SqlCommand command = new SqlCommand(queryString, connection);
            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    Type type = typeof(MonHoc);
                    MonHoc obj = (MonHoc)Activator.CreateInstance(type);
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
                    monHocs.Add(obj);
                }
                reader.Close();
            }
            catch
            { }

            return monHocs;
        }


        public static List<MucThanhToan> GetAllMTT()
        {
            connection = Connection.GetConnection();
            string queryString = "Select * from MucThanhToan";
            List<MucThanhToan> MucThanhToans = new List<MucThanhToan>();
            SqlCommand command = new SqlCommand(queryString, connection);
            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    Type type = typeof(MucThanhToan);
                    MucThanhToan obj = (MucThanhToan)Activator.CreateInstance(type);
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
                    MucThanhToans.Add(obj);
                }
                reader.Close();
            }
            catch
            { }

            return MucThanhToans;
        }
    }
}