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
	}
}
