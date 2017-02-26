using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;

/// <summary>
/// Summary description for DepartmentLayer
/// </summary>
public static class DepartmentLayer
{
    public static DataSet SelectAllDepartments()
    {
        string s = @"SELECT Department.*,Instructor.Ins_Name
            FROM Department
            LEFT JOIN Instructor ON Department.Mgr_Id = Instructor.Ins_Id";
        return DataAccessLayer.SelectCommand(s);
    }
    public static DataSet SelectDepartmentIdAndName()
    {
        string s = @"SELECT Dept_Id,Dept_Name FROM Department";
        return DataAccessLayer.SelectCommand(s);
    }
    public static int InsertDepartment(string Dept_Name, int? Mgr_Id)
    {
        string s = "Insert_Department";
        SqlParameter[] p = new SqlParameter[] { new SqlParameter("@Dept_Name", Dept_Name),
            new SqlParameter("@Mgr_Id", Mgr_Id??SqlInt32.Null)
        };
        return DataAccessLayer.DMLCommandSP(s, p);
    }
    public static int UpdateDepartment(int Dept_Id,string Dept_Name, int? Mgr_Id)
    {
        string s = "Update_Department";
        SqlParameter[] p = new SqlParameter[] { new SqlParameter("@Dept_Id", Dept_Id),
            new SqlParameter("@Dept_Name", Dept_Name),
            new SqlParameter("@Mgr_Id", Mgr_Id??SqlInt32.Null)
        };
        return DataAccessLayer.DMLCommandSP(s, p);
    }
    public static int DeleteDepartment(int Dept_Id)
    {
        string s = "Delete_Department";
        SqlParameter[] p = new SqlParameter[] { new SqlParameter("@Dept_Id", Dept_Id) };
        return DataAccessLayer.DMLCommandSP(s, p);
    }
}