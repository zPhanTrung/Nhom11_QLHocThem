using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Nhom11_QLHocThem.Areas.Admin.Dao
{
    public class Connection
    {
        private static string ConnectionString =
            "Data Source=LAPTOP-EU12CATM\\SQLEXPRESS;Initial Catalog=QL_HocThem;Integrated Security=True;";
                                                    
        private static SqlConnection connection;

        public static SqlConnection GetConnection()
        {
            connection = new SqlConnection(ConnectionString);
            return connection;
        }
    }
}