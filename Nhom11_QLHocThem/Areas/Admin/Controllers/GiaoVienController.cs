using Nhom11_QLHocThem.Areas.Admin.Dao;
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
            var mhs = MonHocDao.GetAllMonHoc();
            ViewBag.ListMonHoc = mhs;
            var mtt = MonHocDao.GetAllMTT();
            ViewBag.ListMTT = mtt;
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
        public ActionResult Edit(string id)
        {
            string ID = id.ToString();
            GiaoVien giaoVien = GiaoVienDao.GetGiaoVien(ID);
            return View(giaoVien);
        }

        // POST: Admin/GiaoVien/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                GiaoVienDao.UpdateGiaoVien(collection);

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }


        // POST: Admin/GiaoVien/Delete/5
        [HttpPost]
        public ActionResult Delete(string id)
        {
            try
            {
                GiaoVienDao.DeleteGiaoVien(id);

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}