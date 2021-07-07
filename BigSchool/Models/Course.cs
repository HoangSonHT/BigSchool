namespace BigSchool.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Course")]
    public partial class Course
    {
        public int Id { get; set; }

        [Required]
        [StringLength(128)]
        public string LecturerId { get; set; }

        [Required(ErrorMessage = "Địa điểm không được để trống")]
        [StringLength(255)]
        public string Place { get; set; }

        //[Required(ErrorMessage = "Chưa nhập ngày tháng năm")]
        //[Range(typeof(DateTime), "7/1/2021", "7/31/2021", ErrorMessage = "Giá trị của {0} phải từ ngày {1} đến ngày {2}")]
        public DateTime DateTime { get; set; }

        [Required]
        public int CategoryId { get; set; }

        public virtual Category Category { get; set; }

        //add List category
        public List<Category> ListCategory = new List<Category>();

        public string Name;
    }
}
