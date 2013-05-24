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


		public static explicit operator Address(AAP.DAL.Address address)
		{
			return new Address()
			{
				Id = address.Id,
				AddressLine1 = address.AddressLine1,
				AddressLine2 = address.AddressLine2,
				City = address.City,
				State = address.State,
				Country = address.Country,
				Phone1 = address.Phone1,
				Phone2 = address.Phone2,
				ContactPerson = address.ContactPerson,
				DateLastModifiedUTC = address.DateLastModifiedUTC,
				IsArchive = address.IsArchive
			};
		}

		public static explicit operator AAP.DAL.Address(Address address)
		{
			return new AAP.DAL.Address()
			{
				Id = address.Id,
				AddressLine1 = address.AddressLine1,
				AddressLine2 = address.AddressLine2,
				City = address.City,
				State = address.State,
				Country = address.Country,
				Phone1 = address.Phone1,
				Phone2 = address.Phone2,
				ContactPerson = address.ContactPerson,
				DateLastModifiedUTC = address.DateLastModifiedUTC,
				IsArchive = address.IsArchive
			};
		}
	}
}
