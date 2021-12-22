using Nhom11_QLHocThem.Areas.Admin.Dao;
using Nhom11_QLHocThem.Areas.Admin.Model.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Nhom11_QLHocThem.Areas.Admin.Controllers
{
    public class ThongKeLuongGiaoVienController : Controller
    {
        // GET: Admin/ThongKeLuongGiaoVien
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Index2()
        {
            return View();
        }
        public ActionResult ThongKeLuong()
        {
            return View();
        }
        [HttpPost]
        public ActionResult ThongKeLuong(FormCollection collection)
        {
            try
            {
                List<ThongKeLuong_GiaoVienView> thongkeluong = ThongKeDao.GetThongKeLuong_GiaoVienView(collection);

                return View(thongkeluong);
            }
            catch
            {
                return RedirectToAction("Index");
            }
        }

        // GET: Admin/ThongKeLuongGiaoVien/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Admin/ThongKeLuongGiaoVien/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/ThongKeLuongGiaoVien/Create
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

        // GET: Admin/ThongKeLuongGiaoVien/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Admin/ThongKeLuongGiaoVien/Edit/5
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

        // GET: Admin/ThongKeLuongGiaoVien/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Admin/ThongKeLuongGiaoVien/Delete/5
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
