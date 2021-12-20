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
    public class DiemDanhController : Controller
    {
        // GET: Admin/DiemDanh
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Details(int id)
        {

            return View();
        }

        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            return RedirectToAction("Index");
        }


        public ActionResult Edit(int id)
        {
            List<DiemDanhView> model = DiemDanhDao.GetBangDiemDanh(id);
            ViewBag.MaLopHoc = BuoiHocDao.FindById(id).MaLopHoc;
            LopHoc lophoc = LopHocDao.GetLopHoc(ViewBag.MaLopHoc);
            ViewBag.TenLopHoc = lophoc.TenLopHoc;
            ViewBag.TenGiaoVien = GiaoVienDao.GetGiaoVien(lophoc.MaGiaoVien).TenGiaoVien;
            ViewBag.MaBuoiHoc = id;
            return View(model);
        }


        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            DiemDanhDao.UpdateDiemDanh(id, collection);

            return RedirectPermanent("/Admin/BuoiHoc");
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