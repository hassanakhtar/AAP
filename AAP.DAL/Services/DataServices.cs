using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace AAP.DAL
{
	public class DataServices : IDataServices
	{
		AapDataEntities db;

		public DataServices()
		{
			db = new AapDataEntities();
		}

		/// <summary>
		/// Gets the branch by code.
		/// </summary>
		/// <param name="branchCode">The branch code.</param>
		/// <returns></returns>
		public Branch GetBranchByCode(string branchCode)
		{
			return db.Branch.FirstOrDefault(b => b.Code == branchCode);
		}

	}
}
