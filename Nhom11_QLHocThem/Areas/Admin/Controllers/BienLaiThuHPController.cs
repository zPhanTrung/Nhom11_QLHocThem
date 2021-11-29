using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Nhom11_QLHocThem.Areas.Admin.Controllers
{
    public class BienLaiThuHPController : Controller
    {
        public ActionResult Index()
        {
            

            return View();
        }


        public ActionResult Details(int id)
        {

            return View();
        }


        public ActionResult Create()
        {
            
            return View();
        }


        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
           
            return View();
        }

 
        public ActionResult Edit(int id)
        {
            return View();
        }

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


        [HttpPost]
        public ActionResult Delete(string id)
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
    }
}