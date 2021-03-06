﻿using APP.BLL.Objects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace APP.BLL.Services
{
	public interface ICourseService
	{
		/// <summary>
		/// Adds the course.
		/// </summary>
		/// <param name="course">The course.</param>
		/// <returns></returns>
		bool AddCourse(Course course);
	}
}
