using BigSchool.Models;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Net;
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

        public ActionResult Acttending()
        {
            BigSchoolContext context = new BigSchoolContext();
            ApplicationUser currenUser = System.Web.HttpContext.Current.GetOwinContext().GetUserManager<ApplicationUserManager>().FindById(System.Web.HttpContext.Current.User.Identity.GetUserId());
            var listAttendances = context.Attdances.Where(p => p.Attendee == currenUser.Id).ToList();
            var courses = new List<Course>();
            foreach (Attdance temp in listAttendances)
            {
                Course objCourse = temp.Course;
                objCourse.LectureName = System.Web.HttpContext.Current.GetOwinContext().GetUserManager<ApplicationUserManager>().FindById(objCourse.LecturerId).Name;
                courses.Add(objCourse);
            }
            return View(courses);
        }

        public ActionResult Mine()
        {
            ApplicationUser currenUser = System.Web.HttpContext.Current.GetOwinContext().GetUserManager<ApplicationUserManager>().FindById(System.Web.HttpContext.Current.User.Identity.GetUserId());
            BigSchoolContext context = new BigSchoolContext();
            List<Course> courses = context.Courses.Where(c => c.LecturerId == currenUser.Id && c.DateTime > DateTime.Now).ToList();
            foreach (Course i in courses)
            {
                i.LectureName = currenUser.Name;

            }
            return View(courses);
        }

        public ActionResult Edit(int id)
        {


            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Course x = context.Courses.FirstOrDefault(m => m.Id == id);
            x.ListCategory = context.Categories.ToList();
            if (x == null)
            {
                return HttpNotFound();
            }
            return View(x);
        }
        [Authorize]
        [HttpPost, ActionName("Edit")]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(Course course)
        {

            if (!ModelState.IsValid)
            {
                course.ListCategory = context.Categories.ToList();
                return View("Edit", course);

            }

            context.Courses.AddOrUpdate(course);
            context.SaveChanges();
            return RedirectToAction("Mine");
        }


        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Course course = context.Courses.Find(id);
            if (course == null)
            {
                return HttpNotFound();
            }
            return View(course);
        }

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Course course = context.Courses.Find(id);
            context.Courses.Remove(course);
            context.SaveChanges();
            return RedirectToAction("Mine");
        }
    }


}