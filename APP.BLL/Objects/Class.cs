using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace APP.BLL.Objects
{
	public class Class
	{
		public long Id { get; set; }
		public string Name { get; set; }
		public string Section { get; set; }
		public int Year { get; set; }
		public long BranchId { get; set; }
	}
}
