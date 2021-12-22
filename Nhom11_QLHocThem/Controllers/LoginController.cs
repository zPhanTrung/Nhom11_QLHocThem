using Nhom11_QLHocThem.Areas.Admin.Dao;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Nhom11_QLHocThem.Controllers
{
    public class LoginController : Controller
    {
        private static SqlConnection connection;
        // GET: Login
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult checklogin(FormCollection collection)
        {
            connection = Connection.GetConnection();

            connection.Open();
            string query = "SELECT * FROM NguoiDung WHERE TenDangNhap = @TenDangNhap AND MatKhau = @MatKhau";

            SqlCommand command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@TenDangNhap", collection["username"]);
            command.Parameters.AddWithValue("@MatKhau", collection["password"]);
            
            var rs = command.ExecuteReader();
            if(rs.HasRows)
            {
                if(rs.Read())
                {
                    var idnd = rs.GetInt32(0);
                    string role = rs["VaiTro"].ToString();
                    if (role == "user")
                    {
                        Session["hocsinhID"] = HocSinhDao.GetAllStudent().Where(s => s.IdNguoiDung.Equals(idnd)).FirstOrDefault().MaHocSinh;

                        connection.Close();
                        return Redirect("/DangKy/Index");
                    }
                    else if(role=="admin")
                    {
                        connection.Close();
                        return Redirect("/Admin/LopHoc");
                    }
                    
                }
            }
            connection.Close();
            return Redirect("/Login/Index");
        }
        // GET: Login/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Login/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Login/Create
        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Login/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Login/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Login/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Login/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
