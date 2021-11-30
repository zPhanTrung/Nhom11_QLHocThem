﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection;
using System.Web;

namespace Nhom11_QLHocThem.Areas.Admin.Dao
{
    public class BienLaiThuHPDao
    {
        private static SqlConnection connection;

        public static List<BienLaiThuhHP_HocSinhView> GetAllBienLaiThuHP()
        {
            connection = Connection.GetConnection();
            string queryString = "SELECT bl.MaBLThuHP, hs.TenHocSinh, hs.NgaySinh, bl.TongHocPhi, " +
                "                           bl.NgayThu, bl.ThuChoThangNam, bl.TrangThai " +
                "                   FROM BienLaiThuHP bl JOIN HocSinh hs ON bl.MaHocSinh = hs.MaHocSinh";
            List<BienLaiThuhHP_HocSinhView> bienlai = new List<BienLaiThuhHP_HocSinhView>();
            SqlCommand command = new SqlCommand(queryString, connection);
            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    Type type = typeof(BienLaiThuhHP_HocSinhView);
                    BienLaiThuhHP_HocSinhView obj = (BienLaiThuhHP_HocSinhView)Activator.CreateInstance(type);
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
    }
}