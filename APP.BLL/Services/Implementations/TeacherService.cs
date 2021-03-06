﻿using APP.BLL.Objects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace APP.BLL.Services
{
	public class TeacherService : ITeacherService
	{
		public AAP.DAL.IDataServices DataService { get; set; }

		public TeacherService()
		{
			DataService = new AAP.DAL.DataServices();
		}
		public bool AddTeacher(Teacher teacher)
		{
			return DataService.AddTeacher((AAP.DAL.Teacher)teacher);
		}
	}
}
