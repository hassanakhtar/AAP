using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace APP.BLL.Objects
{
	public class Teacher
	{
		public long Id { get; set; }
		public string FirstName { get; set; }
		public string LastName { get; set; }
		public string Gender { get; set; }
		public string Religion { get; set; }
		public DateTime? DateOfBirth { get; set; }
		public byte[] Picture { get; set; }
		public string CNIC { get; set; }
		public string Comments { get; set; }
		public long AddressId { get; set; }
		public long ClassId { get; set; }

		public static explicit operator AAP.DAL.Teacher(Teacher teacher)
		{
			return new AAP.DAL.Teacher()
			{
				Id = teacher.Id,
				FirstName = teacher.FirstName,
				LastName = teacher.LastName,
				Gender = teacher.Gender,
				Religion = teacher.Religion,
				DateOfBirth = teacher.DateOfBirth,
				Picture = teacher.Picture,
				CNIC = teacher.CNIC,
				Comments = teacher.Comments,
				AddressId = teacher.AddressId,
				ClassId = teacher.ClassId
			};
		}
	}
}
