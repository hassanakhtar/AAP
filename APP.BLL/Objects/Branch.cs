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
	}
}
