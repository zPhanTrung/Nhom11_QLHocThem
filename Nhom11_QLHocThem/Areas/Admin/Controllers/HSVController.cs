using Nhom11_QLHocThem.Areas.Admin.Dao;
using Nhom11_QLHocThem.Areas.Admin.Model.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;


namespace Nhom11_QLHocThem.Areas.Admin.Controllers
{
    public class HSVController : Controller
    {
        // GET: Admin/HSV
        public ActionResult Index()
        {
            List<ThongKeVangDTO> model = BuoiHocDao.TKV();
            return View(model);
        }
    }
}