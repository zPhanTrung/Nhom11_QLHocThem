using Nhom11_QLHocThem.Areas.Admin.Model;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection;
using System.Web;

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
    }
}