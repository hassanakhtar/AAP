using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace AAP.DAL
{
	interface IDataServices
	{
		/// <summary>
		/// Gets the branch by code.
		/// </summary>
		/// <param name="branchCode">The branch code.</param>
		/// <returns></returns>
		Branch GetBranchByCode(string branchCode);
	}
}
