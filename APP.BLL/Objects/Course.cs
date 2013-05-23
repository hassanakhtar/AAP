using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace APP.BLL.Objects
{
	public class Course
	{
		public long Id { get; set; }
		public string Title { get; set; }
		public string Description { get; set; }
		public long ClassId { get; set; }

		public static explicit operator AAP.DAL.Course(Course course)
		{
			return new AAP.DAL.Course()
			{
				Id = course.Id,
				Title = course.Title,
				Description = course.Description,
				ClassId = course.ClassId
			};
		}
	}
}
