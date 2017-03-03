using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;

/// <summary>
/// Summary description for CourseLayer
/// </summary>
public static class CourseLayer
{
    public static DataSet SelectAllCourses()
    {
        string s = "Select * from Course";
        return DataAccessLayer.SelectCommand(s);
    }
    public static DataSet SelectCourse_Id_Name()
    {
        string s = "Select Crs_Id,Crs_Name from Course";
        return DataAccessLayer.SelectCommand(s);
    }
    public static DataSet St_Results(int st_id)
    {
        string s = @"select C.Crs_Id,C.Crs_Name,SC.St_Grade
                     from Course C
                     join St_Ins_Crs SC on C.Crs_Id=SC.Crs_Id and SC.St_Id=" + st_id.ToString();
        return DataAccessLayer.SelectCommand(s);
    }
    public static DataSet Course_Avg_GRADE()
    {
        string s = @"select C.Crs_Id ID,Crs_Name Name,avg(St_Grade) as Average_Grade
                     from Course C,St_Ins_Crs S
                     where C.Crs_Id=S.Crs_Id
                     group by C.Crs_Id,C.Crs_Name";
        return DataAccessLayer.SelectCommand(s);
    }
    public static DataSet Corrective_Per_Course(int Crs_Id)
    {
        string s = @"select distinct St_Ex_Q.St_Id ID,St_Name Name
                     from St_Ex_Q ,Exam ,St_Ins_Crs ,Student
                     where St_Ex_Q.St_Id=St_Ins_Crs.St_Id and St_Ex_Q.Ex_Id=Exam.Ex_Id 
                     and Exam.Crs_Id=St_Ins_Crs.Crs_Id and St_Grade<Ex_Grade/2 and Student.St_Id=St_Ins_Crs.St_Id
                     and St_Ins_Crs.Crs_Id=" + Crs_Id;
        return DataAccessLayer.SelectCommand(s);
    }
    public static DataSet SelectCoursesPerStudent(int St_Id)
    {
        string s = @"SELECT Course.*
                    FROM Course
                    JOIN St_Ins_Crs ON Course.Crs_Id = St_Ins_Crs.Crs_Id and St_Ins_Crs.Crs_Id is not null and St_Id=" + St_Id.ToString();
        return DataAccessLayer.SelectCommand(s);
    }

    public static int InsertCourse(string Crs_Name, int? Crs_Duration)
    {
        string s = "Insert_Course";
        SqlParameter[] p = new SqlParameter[] { new SqlParameter("@Crs_Name", Crs_Name),
                         new SqlParameter("@Crs_Duration", Crs_Duration??SqlInt32.Null)
                                              };
        return DataAccessLayer.DMLCommandSP(s, p);
    }
    public static int UpdateCourse(int Crs_Id,string Crs_Name, int? Crs_Duration)
    {
        string s = "Update_Course";
        SqlParameter[] p = new SqlParameter[] { new SqlParameter("@Crs_Id", Crs_Id),
            new SqlParameter("@Crs_Name", Crs_Name),
            new SqlParameter("@Crs_Duration", Crs_Duration??SqlInt32.Null)
        };
        return DataAccessLayer.DMLCommandSP(s, p);
    }
    public static int DeleteCourse(int Crs_Id)
    {
        string s = "Delete_Course";
        SqlParameter[] p = new SqlParameter[] { new SqlParameter("@Crs_Id",Crs_Id) };
        return DataAccessLayer.DMLCommandSP(s, p);
    }
}