﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace AAP.DAL
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class AapDataEntities : DbContext
    {
        public AapDataEntities()
            : base("name=AapDataEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<Address> Address { get; set; }
        public DbSet<Branch> Branch { get; set; }
        public DbSet<Class> Class { get; set; }
        public DbSet<Course> Course { get; set; }
        public DbSet<Exams> Exams { get; set; }
        public DbSet<Student> Student { get; set; }
        public DbSet<StudentAttendance> StudentAttendance { get; set; }
        public DbSet<StudentCourses> StudentCourses { get; set; }
        public DbSet<sysdiagrams> sysdiagrams { get; set; }
        public DbSet<Teacher> Teacher { get; set; }
        public DbSet<TeacherAttendance> TeacherAttendance { get; set; }
        public DbSet<TeacherCourses> TeacherCourses { get; set; }
    }
}
