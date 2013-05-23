using APP.BLL.Objects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace APP.BLL.Services
{
	public class CourseService : ICourseService
	{
		public AAP.DAL.IDataServices DataService { get; set; }

		public CourseService()
		{
			DataService = new AAP.DAL.DataServices();
		}

		/// <summary>
		/// Adds the course.
		/// </summary>
		/// <param name="course">The course.</param>
		/// <returns></returns>
		public bool AddCourse(Course course)
		{
			return DataService.AddCourse((AAP.DAL.Course)course);
		}
	}
}
