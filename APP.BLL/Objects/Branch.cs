using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace APP.BLL.Objects
{
	public class Branch
	{
		public long Id { get; set; }
		public string Code { get; set; }
		public string Name { get; set; }
		public long AddressId { get; set; }
		public Address Address { get; set; }

		public static explicit operator AAP.DAL.Branch(Branch branch)
		{
			return new AAP.DAL.Branch()
			{
				Id = branch.Id,
				Code = branch.Code,
				Name = branch.Name,
				AddressId = branch.AddressId,
				Address = (AAP.DAL.Address)branch.Address
			};
		}
	}
}
