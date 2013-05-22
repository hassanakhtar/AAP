using APP.BLL.Objects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace APP.BLL.Services
{
	public interface ICourseService
	{
		bool AddCourse(Course course);
	}
}
