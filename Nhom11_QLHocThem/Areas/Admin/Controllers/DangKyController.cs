using Nhom11_QLHocThem.Areas.Admin.Dao;
using Nhom11_QLHocThem.Areas.Admin.Model.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Nhom11_QLHocThem.Areas.Admin.Controllers
{
    public class DangKyController : Controller
    {
       public DangKyDAO getDK()
        {
            DangKyDAO dangKy = Session["DangKy"] as DangKyDAO;
            if(dangKy == null || Session["DangKy"] == null)
            {
                dangKy = new DangKyDAO();
                Session["DangKy"] = dangKy;
            }
            return dangKy;
        }

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult List_Class()
        {
            List<LopHocDTO> dao = LopHocDao.List_Class_DTO();
            return View(dao);
        }
        public ActionResult List_DK()
        {
            return View(getDK().getList());
        }
        public ActionResult add_class(string id)
        {
            getDK().add_list(id);
            return RedirectToAction("Index","DangKy");
        }

    }
}