using Nhom11_QLHocThem.Areas.Admin.Dao;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Nhom11_QLHocThem.Areas.Admin.Controllers
{
    public class HocSinh_LopHocController : Controller
    {
        // GET: Admin/HocSinh_LopHoc
        private static SqlConnection connection;
        public ActionResult Index()
        {
            return View();
        }

        // GET: Admin/HocSinh_LopHoc/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Admin/HocSinh_LopHoc/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/HocSinh_LopHoc/Create
        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                var mahocsinh = collection["mahocsinh"];
                var malophoc = collection["malophoc"];
                var dangky = collection["dangky"];
                int i_dangky = -1;
                if (dangky == "true")
                    i_dangky = 1;
                else
                    i_dangky = 0;
                connection = Connection.GetConnection();

                connection.Open();
                string query = "EXEC dangKyHoc @MaLopHoc @MaHocSinh @DangKy";

                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@MaHocSinh", collection["mahocsinh"]);
                command.Parameters.AddWithValue("@MaLopHoc", collection["malophoc"]);
                command.Parameters.AddWithValue("@DangKy", i_dangky);
                command.ExecuteNonQuery();
                connection.Close();

                return Redirect("/DangKy/");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/HocSinh_LopHoc/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Admin/HocSinh_LopHoc/Edit/5
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

        // GET: Admin/HocSinh_LopHoc/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Admin/HocSinh_LopHoc/Delete/5
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
