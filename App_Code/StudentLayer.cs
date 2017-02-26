using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;

/// <summary>
/// Summary description for BussinessLayer
/// </summary>
public static class StudentLayer
{
    public static DataSet SelectAllStudents()
    {
        string s = @"SELECT Student.*,Department.Dept_Name
                    FROM Student
                    JOIN Department ON Student.Dept_Id = Department.Dept_Id";
        return DataAccessLayer.SelectCommand(s);
    }
    public static DataSet SelectStudentsIdAndName()
    {
        string s = @"Select St_Id,St_Name From Student";
        return DataAccessLayer.SelectCommand(s);
    }
    public static int InsertStudent(string St_Name, int? St_Age, string St_Address,int? Dept_Id)
    {
        string s = "Insert_Student";
        SqlParameter[] p = new SqlParameter[] { new SqlParameter("@St_Name", St_Name),
            new SqlParameter("@St_Age", St_Age??SqlInt32.Null),
            new SqlParameter("@St_Address", St_Address??SqlString.Null) ,
            new SqlParameter("@Dept_Id", Dept_Id??SqlInt32.Null) ,
        };
        return DataAccessLayer.DMLCommandSP(s, p);
    }
    public static int UpdateStudent(int St_Id, string St_Name, int? St_Age, string St_Address, int? Dept_Id)
    {
        string s = "Update_Student";
        SqlParameter[] p = new SqlParameter[] { new SqlParameter("@St_Id", St_Id),
            new SqlParameter("@St_Name", St_Name),
            new SqlParameter("@St_Age", St_Age??SqlInt32.Null),
            new SqlParameter("@St_Address", St_Address??SqlString.Null) ,
            new SqlParameter("@Dept_Id", Dept_Id??SqlInt32.Null) ,
        };
        return DataAccessLayer.DMLCommandSP(s, p);
    }
    public static int DeleteStudent(int St_Id)
    {
        string s = "Delete_Student";
        SqlParameter[] p = new SqlParameter[] { new SqlParameter("@St_Id", St_Id) };
        return DataAccessLayer.DMLCommandSP(s, p);
    }
    public static DataSet SelectAllTopics()
    {
        string s = "SELECT top_id,Top_Name FROM Topic";
        return DataAccessLayer.SelectCommand(s);
    }
    public static DataSet SelectCourseByID(int Crs_Id)
    {
        string s = "select * from Course where crs_id=" + Crs_Id.ToString();
        return DataAccessLayer.SelectCommand(s);
    }
    public static int InsertCourse(int Crs_Id, string Crs_Name, int? Crs_Duration, int? Top_Id)
    {
        string s = "insert_course";
        SqlParameter[] p = new SqlParameter[] { new SqlParameter("@Crs_Id", Crs_Id),
            new SqlParameter("@Crs_Name", Crs_Name),
            new SqlParameter("@Crs_Duration", Crs_Duration??SqlInt32.Null),
            new SqlParameter("@Top_Id", Top_Id??SqlInt32.Null) };
        return DataAccessLayer.DMLCommandSP(s, p);
    }
    public static int UpdateCourse(int Crs_Id, string Crs_Name, int? Crs_Duration, int? Top_Id)
    {
        string s = "update Course set Crs_Name='" + Crs_Name +
            "',Crs_Duration=" + (Crs_Duration != null ? Crs_Duration.ToString() : SqlInt32.Null.ToString()) +
            ",Top_Id=" + (Top_Id != null ? Top_Id.ToString() : SqlInt32.Null.ToString()) +
            " where Crs_Id=" + Crs_Id.ToString();
        return DataAccessLayer.DMLCommand(s);
    }
    public static int DeleteCourse(int Crs_Id)
    {
        string s = "delete_course";
        SqlParameter[] p = new SqlParameter[] { new SqlParameter("@Crs_Id", Crs_Id) };
        return DataAccessLayer.DMLCommandSP(s, p);
    }
}