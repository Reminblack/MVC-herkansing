﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class SchoolModelContainer : DbContext
    {
        public SchoolModelContainer()
            : base("name=SchoolModelContainer")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<User> UsersSet { get; set; }
        public DbSet<Student> Student { get; set; }
        public DbSet<Student_Subject> groupAssignSet { get; set; }
        public DbSet<Subject> GroupSet { get; set; }
        public DbSet<Teacher> TeacherSet { get; set; }
        public DbSet<Lesson> LessonSet { get; set; }
        public DbSet<Student_Lesson> Student_LessonSet { get; set; }
    }
}
