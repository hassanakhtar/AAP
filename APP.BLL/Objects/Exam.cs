using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace APP.BLL.Objects
{
	public class Exam
	{
		public long Id { get; set; }
		public decimal TheoryMarksTotal { get; set; }
		public decimal TheoryMarksObtained { get; set; }
		public decimal? PracticalMarksTotal { get; set; }
		public decimal? PracticalMarksObtained { get; set; }
		public decimal TotalMaxMarks { get; set; }
		public decimal TotalMarksObtained { get; set; }
		public DateTime LastDateModified { get; set; }
		public long StudentCourseId { get; set; }

		public static explicit operator AAP.DAL.Exams(Exam exam)
		{
			return new AAP.DAL.Exams()
			{
				Id = exam.Id,
				TheoryMarksTotal = exam.TheoryMarksTotal,
				TheoryMarksObtained = exam.TheoryMarksObtained,
				PracticalMarksObtained = exam.PracticalMarksObtained,
				PracticalMarksTotal = exam.PracticalMarksTotal,
				TotalMarksObtained = exam.TotalMarksObtained,
				TotalMaxMarks = exam.TotalMaxMarks,
				LastDateModified = exam.LastDateModified,
				StudentCourseId = exam.StudentCourseId
			};
		}
	}
}
