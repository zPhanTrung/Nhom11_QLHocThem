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
    public class BuoiHocController : Controller
    {
        // GET: Admin/BuoiHoc
        public ActionResult Index()
        {
            LopHoc lophoc = LopHocDao.GetAllLopHoc().FirstOrDefault();
            List<BuoiHoc> model = BuoiHocDao.GetAllBuoiHoc("T1");
            ViewBag.MaLopHoc = "T1";
            ViewBag.TenGiaoVien = GiaoVienDao.GetGiaoVien(lophoc.MaGiaoVien).TenGiaoVien;
            ViewBag.TenLopHoc = LopHocDao.GetLopHoc("T1").TenLopHoc;
            return View(model);
        }


        public ActionResult Details(int id)
        {

            return View();
        }

        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            BuoiHocDao.InsertBuoiHoc(collection);

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
    }
}