using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace APP.BLL.Objects
{
	public class Address
	{
		public long Id { get; set; }
		public string AddressLine1 { get; set; }
		public string AddressLine2 { get; set; }
		public string City { get; set; }
		public string State { get; set; }
		public string Country { get; set; }
		public string Phone1 { get; set; }
		public string Phone2 { get; set; }
		public string ContactPerson { get; set; }
		public DateTime? DateLastModifiedUTC { get; set; }
		public bool IsArchive { get; set; }
	}
}
