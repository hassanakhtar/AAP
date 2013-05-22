using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Linq.Dynamic;

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


		/// <summary>
		/// Gets all students.
		/// </summary>
		/// <param name="showArchived">if set to <c>true</c> [show archived].</param>
		/// <param name="startIndex">The start index.</param>
		/// <param name="pageSize">Size of the page.</param>
		/// <param name="orderBy">The order by.</param>
		/// <param name="isAsc">if set to <c>true</c> [is asc].</param>
		/// <returns></returns>
		public List<Student> GetAllStudents(bool showArchived = false, int startIndex = 0, int pageSize = 10, string orderBy = "ID", bool isAsc = true)
		{
			return db.Student.Where( stu => stu.IsArchive != showArchived)
				.OrderBy(string.Format("{0} {1}", orderBy, isAsc ? "asc" : "desc"))
				.Skip(startIndex)
				.Take(pageSize)
				.ToList();
		}

	}
}
