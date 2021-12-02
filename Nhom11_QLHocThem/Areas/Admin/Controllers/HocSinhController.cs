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
        public ActionResult Edit(string id)
        {
            ViewBag.MaMienGiam = new List<KeyValuePair<string, int>>() {
                                    new KeyValuePair<string, int>("1", 10),
                                    new KeyValuePair<string, int>("2", 15),
                                    new KeyValuePair<string, int>("3", 20)};
            HocSinh model = HocSinhDao.GetHocSinh(id);

            return View(model);
        }

        [HttpPost]
        public ActionResult Edit(FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here
                HocSinhDao.UpdateHocSinh(collection);

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

       

        // POST: Admin/Student/Delete/5
        [HttpPost]
        public ActionResult Delete(string id)
        {
            try
            {
                HocSinhDao.DeleteHocSinh(id);

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
