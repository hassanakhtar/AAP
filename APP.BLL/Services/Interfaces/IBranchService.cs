using APP.BLL.Objects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace APP.BLL.Services
{
	public interface IBranchService
	{
		/// <summary>
		/// Adds the branch.
		/// </summary>
		/// <param name="branch">The branch.</param>
		/// <returns></returns>
		bool AddBranch(Branch branch);
	}
}
