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
    public static DataSet SelectCoursesPerStudent(int St_Id)
    {
        string s = @"SELECT Course.*
                    FROM Course
                    JOIN St_Ins_Crs ON Course.Crs_Id = St_Ins_Crs.Crs_Id and St_Ins_Crs.Crs_Id is not null and St_Id=" + St_Id.ToString();
        return DataAccessLayer.SelectCommand(s);
    }
    public static DataSet SelectCourse_Id_Name()
    {
        string s = "Select Crs_Id,Crs_Name from Course";
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