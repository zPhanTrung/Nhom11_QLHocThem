using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Nhom11_QLHocThem.Areas.Admin.Model;
using Nhom11_QLHocThem.Areas.Admin.Dao;

namespace Nhom11_QLHocThem.Areas.Admin.Controllers
{
    public class LopHocController : Controller
    {
        // GET: Admin/LopHoc
        public ActionResult Index()
        {
            List<LopHoc_View> model = LopHocDao.GetAllLopHoc();
            return View(model);
        }

        public ActionResult Create()
        {
            
            return View();
        }

        public ActionResult Edit(int? id)
        {

            return View();
        }
    }
}