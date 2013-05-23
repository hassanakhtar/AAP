using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace AAP.DAL
{
	public interface IDataServices
	{
		/// <summary>
		/// Gets the branch by code.
		/// </summary>
		/// <param name="branchCode">The branch code.</param>
		/// <returns></returns>
		Branch GetBranchByCode(string branchCode);

		/// <summary>
		/// Gets all students.
		/// </summary>
		/// <param name="showArchived">if set to <c>true</c> [show archived].</param>
		/// <param name="startIndex">The start index.</param>
		/// <param name="pageSize">Size of the page.</param>
		/// <param name="orderBy">The order by.</param>
		/// <param name="isAsc">if set to <c>true</c> [is asc].</param>
		/// <returns></returns>
		List<Student> GetAllStudents(bool showArchived = false, int startIndex = 0, int pageSize = 10, string orderBy = "ID", bool isAsc = true);

		/// <summary>
		/// Adds the student.
		/// </summary>
		/// <param name="stu">The student.</param>
		/// <returns></returns>
		bool AddStudent(Student stu);

		/// <summary>
		/// Adds the course.
		/// </summary>
		/// <param name="course">The course.</param>
		/// <returns></returns>
		bool AddCourse(Course course);

		/// <summary>
		/// Adds the teacher.
		/// </summary>
		/// <param name="teacher">The teacher.</param>
		/// <returns></returns>
		bool AddTeacher(Teacher teacher);

		/// <summary>
		/// Adds the branch.
		/// </summary>
		/// <param name="branch">The branch.</param>
		/// <returns></returns>
		bool AddBranch(Branch branch);

	}
}
