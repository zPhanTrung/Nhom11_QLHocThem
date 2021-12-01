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
    public class BienLaiTraLuongController : Controller
    {
        // GET: Admin/BienLaiTraLuong
        public ActionResult Index()
        {
            List<BLTraLuong_GiaoVien> ds_bienlaitraluong = BienLaiTraLuongDao.GetAllBienLaiTraLuong();
            return View(ds_bienlaitraluong);
        }

        // GET: Admin/BienLaiTraLuong/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Admin/BienLaiTraLuong/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/BienLaiTraLuong/Create
        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                BienLaiTraLuongDao.InsertBienLaiTraLuong(collection);

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/BienLaiTraLuong/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Admin/BienLaiTraLuong/Edit/5
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

        // GET: Admin/BienLaiTraLuong/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Admin/BienLaiTraLuong/Delete/5
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
