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
}