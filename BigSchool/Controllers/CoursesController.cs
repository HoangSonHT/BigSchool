using BigSchool.Models;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BigSchool.Controllers
{
    public class CoursesController : Controller
    {
        BigSchoolContext context = new BigSchoolContext();
        Course objCourse = new Course();
        // GET: Courses


        public ActionResult Create()
        {
            objCourse.ListCategory = context.Categories.ToList();

            return View(objCourse);
        }

        [Authorize]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(Course objCourse)
        {
            BigSchoolContext context = new BigSchoolContext();
            //khong xet vailid LectureId vi bang user dang nhap
            ModelState.Remove("LecturerId");
            if (!ModelState.IsValid)
            {
                objCourse.ListCategory = context.Categories.ToList();
                return View("Create", objCourse);
            }

            //lay login user ID
            ApplicationUser user = System.Web.HttpContext.Current.GetOwinContext().GetUserManager<ApplicationUserManager>().FindById(System.Web.HttpContext.Current.User.Identity.GetUserId());
            objCourse.LecturerId = user.Id;
            //add vao csdl
            context.Courses.Add(objCourse);
            context.SaveChanges();

            //tro ve home , Action Index
            return RedirectToAction("Index", "Home");
        }
    }


}