using APP.BLL.Objects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace APP.BLL.Services
{
	public class StudentService : IStudentService
	{
		public AAP.DAL.IDataServices DataService { get; set; }

		public StudentService()
		{
			DataService = new AAP.DAL.DataServices();
		}

		public bool AddStudent(Student student)
		{
			return DataService.AddStudent((AAP.DAL.Student)student);
		}
	}
}
