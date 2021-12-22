using Nhom11_QLHocThem.Areas.Admin.Dao;
using Nhom11_QLHocThem.Areas.Admin.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Nhom11_QLHocThem.Controllers
{
    public class DangKyController : Controller
    {
        // GET: DangKy
        public ActionResult Index()
        {
            List<LopHoc> lst = LopHocDao.GetAllLopHoc();
            return View(lst);
        }

        // GET: DangKy/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: DangKy/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: DangKy/Create
        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: DangKy/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: DangKy/Edit/5
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

        // GET: DangKy/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: DangKy/Delete/5
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
