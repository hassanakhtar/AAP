using AAP.Web.Utilities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebMatrix.WebData;

namespace AAP.Web.Security
{
	public class AdminAuthorize : AAP.Web.Security.AuthorizeAttribute
	{
		public AdminAuthorize()
		{
			Roles = "Admin";
		}
	}
	public class ManagementAuthorize : AAP.Web.Security.AuthorizeAttribute
	{
		public ManagementAuthorize()
		{
			Roles = "Management";
		}
	}
	public class TeacherAuthorize : AAP.Web.Security.AuthorizeAttribute
	{
		public TeacherAuthorize()
		{
			Roles = "Teacher";
		}
	}
	public class StudentAuthorize : AAP.Web.Security.AuthorizeAttribute
	{
		public StudentAuthorize()
		{
			Roles = "Student";
		}
	}
}