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
    
    public partial class Lesson
    {
        public Lesson()
        {
            this.Student_Lesson = new HashSet<Student_Lesson>();
        }
    
        public int ID { get; set; }
        public string name { get; set; }
        public int SubjectID { get; set; }
    
        public virtual Subject Class { get; set; }
        public virtual ICollection<Student_Lesson> Student_Lesson { get; set; }
    }
}
