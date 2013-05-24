using APP.BLL.Objects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace APP.BLL.Services
{
	public class BranchService : IBranchService
	{
		public AAP.DAL.IDataServices DataService { get; set; }

		public BranchService()
		{
			DataService = new AAP.DAL.DataServices();
		}

		public bool AddBranch(Branch branch)
		{
			return DataService.AddBranch((AAP.DAL.Branch)branch);
		}
	}
}
