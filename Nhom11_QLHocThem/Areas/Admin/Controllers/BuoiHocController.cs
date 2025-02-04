﻿using Nhom11_QLHocThem.Areas.Admin.Dao;
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
        public ActionResult Index(FormCollection collection, int Page = 1)
        {
            var lophoc = LopHocDao.GetLopHocByMaLop(collection["malophoc"]);
            ViewBag.MaLopHoc = lophoc.MaLopHoc;
            ViewBag.TenGiaoVien = GiaoVienDao.GetGiaoVien(lophoc.MaGiaoVien).TenGiaoVien;
            ViewBag.TenLopHoc = lophoc.TenLopHoc;
            ViewBag.MaLopHoc_Search = collection["malophoc"];
            ViewBag.TenGiaoVien_Search = collection["tengiaovien"];
            var rs = BuoiHocDao.SearchBuoiHoc(collection);
            int lenght = rs.ToList().Count;
            if (lenght % 10 > 0)
                ViewBag.PageNumber = lenght / 10 + 1;
            else
                ViewBag.PageNumber = lenght / 10;
            ViewBag.CurrentPage = Page;
            var model = rs.ToList().Skip((Page - 1) * 10);
            model = model.Take(10);
            return View(model.ToList());
        }


        public ActionResult Details(int id)
        {

            return View();
        }

        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            var luachon = collection["luachon"];
            if(luachon=="1")
                BuoiHocDao.InsertBuoiHoc(collection);
            else if(luachon=="2")
                BuoiHocDao.InsertNhieuBuoiHoc(collection);

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