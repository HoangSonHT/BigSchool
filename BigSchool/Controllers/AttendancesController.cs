using BigSchool.Models;
using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace BigSchool.Controllers
{
    public class AttendancesController : ApiController
    {
        [HttpPost]
        public IHttpActionResult Attend(Course attendanceDto)
        {
            var userId = User.Identity.GetUserId();
            BigSchoolContext context = new BigSchoolContext();
            if (context.Attdances.Any(p => p.Attendee == userId && p.CourseId == attendanceDto.Id))
            {
                //xoa thong tin khoa hoc da dky
                context.Attdances.Remove(context.Attdances.SingleOrDefault(p => p.Attendee == userId && p.CourseId == attendanceDto.Id));
                context.SaveChanges();
                return Ok("cancel");
            }
            var attendance = new Attdance() { CourseId = attendanceDto.Id, Attendee = User.Identity.GetUserId() };
            context.Attdances.Add(attendance);
            context.SaveChanges();
            return Ok();
        }


    }
}
