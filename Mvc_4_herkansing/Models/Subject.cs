//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Mvc_4_herkansing.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Subject
    {
        public Subject()
        {
            this.Student_Subject = new HashSet<Student_Subject>();
            this.Student = new HashSet<Student>();
            this.Lesson = new HashSet<Lesson>();
        }
    
        public int ID { get; set; }
        public string name { get; set; }
        public int TeacherID { get; set; }
    
        public virtual ICollection<Student_Subject> Student_Subject { get; set; }
        public virtual ICollection<Student> Student { get; set; }
        public virtual Teacher Teacher { get; set; }
        public virtual ICollection<Lesson> Lesson { get; set; }
    }
}
