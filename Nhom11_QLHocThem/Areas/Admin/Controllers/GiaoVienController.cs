﻿using Nhom11_QLHocThem.Areas.Admin.Dao;
using Nhom11_QLHocThem.Areas.Admin.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Nhom11_QLHocThem.Areas.Admin.Controllers
{
    public class GiaoVienController : Controller
    {
        // GET: Admin/GiaoVien
        public ActionResult Index()
        {
            List<GiaoVien> ds_giaovien = GiaoVienDao.GetAllTeacher();
            return View(ds_giaovien);
        }

        // GET: Admin/GiaoVien/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Admin/GiaoVien/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/GiaoVien/Create
        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                GiaoVienDao.InsertGiaoVien(collection);

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/GiaoVien/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Admin/GiaoVien/Edit/5
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

        // GET: Admin/GiaoVien/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Admin/GiaoVien/Delete/5
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