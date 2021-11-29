using Nhom11_QLHocThem.Areas.Admin.Dao;
using Nhom11_QLHocThem.Areas.Admin.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Nhom11_QLHocThem.Areas.Admin.Controllers
{

    public class HocSinhController : Controller
    {

        public ActionResult Index()
        {
            List<HocSinh> model = HocSinhDao.GetAllStudent();

            return View(model);
        }

        
        [Route("chitiet")]
        public ActionResult Details(int id)
        {
            return View();
        }

        
        public ActionResult Create()
        {
            ViewBag.MaMienGiam = new List<KeyValuePair<string, int>>() {
                                    new KeyValuePair<string, int>("1", 10),
                                    new KeyValuePair<string, int>("2", 15),
                                    new KeyValuePair<string, int>("3", 20)};
            return View();
        }

  
        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            HocSinhDao.InsertHocSinh(collection);
            ViewBag.MaMienGiam = new List<KeyValuePair<string, int>>() {
                                    new KeyValuePair<string, int>("1", 10),
                                    new KeyValuePair<string, int>("2", 15),
                                    new KeyValuePair<string, int>("3", 20)};
            return View();
        }

        // GET: Admin/Student/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Admin/Student/Edit/5
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

        // GET: Admin/Student/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Admin/Student/Delete/5
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
