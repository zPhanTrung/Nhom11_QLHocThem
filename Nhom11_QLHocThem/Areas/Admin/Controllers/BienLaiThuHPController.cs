using Nhom11_QLHocThem.Areas.Admin.Dao;
using Nhom11_QLHocThem.Areas.Admin.Model;
using Nhom11_QLHocThem.Areas.Admin.Model.DTO;
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

            List<BienLaiThuHP_HocSinhView> model = BienLaiThuHPDao.GetAllBienLaiThuHP();
            return View(model);
        }


        public ActionResult Details(int id)
        {
            BienLaiThuHP bienlai = BienLaiThuHPDao.GetBienLaiThuHP(id);
            ViewBag.MaHocSinh = bienlai.MaHocSinh;
            HocSinh hocsinh = HocSinhDao.GetHocSinh(ViewBag.MaHocSinh);
            ViewBag.TenHocSinh = hocsinh.TenHocSinh;
            ViewBag.NgaySinh = hocsinh.NgaySinh.ToShortDateString();
            ViewBag.TongHocPhi = bienlai.TongHocPhi;
            List<CTBienLaiThuHPView> model = BienLaiThuHPDao.GetCTBienLaiThuHP(id);
            return View(model);
        }


        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            BienLaiThuHPDao.InsertBienLai(collection);
            return RedirectToAction("Index");
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

        [HttpPost]
        public ActionResult Check(string nam, string thang)
        {
            if(BienLaiThuHPDao.CheckExistBienLai(nam, thang))
                return Json(new { result = "Đã tạo" }, JsonRequestBehavior.AllowGet);
            return Json(new { result ="Chưa tạo" }, JsonRequestBehavior.AllowGet);
        }
    }
}