using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace APP.BLL.Objects
{
	public class Student
	{
		public long Id { get; set; }
		public string FirstName { get; set; }
		public string LastName { get; set; }
		public string Gender { get; set; }
		public string Religion { get; set; }
		public DateTime DateOfBirth { get; set; }
		public byte[] Picture { get; set; }
		public string Guardian { get; set; }
		public string Relation { get; set; }
		public string Comments { get; set; }
		public long AddressId { get; set; }
		public long ClassId { get; set; }
		public string GuardianCNIC { get; set; }
		public DateTime? LastModified { get; set; }
		public bool? IsArchive { get; set; }

		public static explicit operator AAP.DAL.Student(Student student)
		{
			return new AAP.DAL.Student()
			{
				Id = student.Id,
				FirstName = student.FirstName,
				LastName = student.LastName,
				Gender = student.Gender,
				Religion = student.Religion,
				DateOfBirth = student.DateOfBirth,
				Picture = student.Picture,
				Guardian = student.Guardian,
				Relation = student.Relation,
				Comments = student.Comments,
				AddressId = student.AddressId,
				ClassId = student.ClassId,
				GuardianCNIC = student.GuardianCNIC,
				LastModified = student.LastModified,
				IsArchive = student.IsArchive
			};
		}
	}
}
