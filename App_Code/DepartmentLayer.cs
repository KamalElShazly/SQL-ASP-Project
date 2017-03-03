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
    public static DataSet SelectDepartmentById(int Dept_Id)
    {
        string s = @"SELECT Department.Dept_Id,Department.Dept_Name,Instructor.Ins_Name
                    FROM Department 
                    FULL JOIN Instructor ON Department.Mgr_Id =Instructor.Ins_Id
                    WHERE Department.Dept_Id=" + Dept_Id.ToString();
        return DataAccessLayer.SelectCommand(s);
    }
    public static DataSet CorrectivePerDept(int Dept_Id)

    {
        string s = @"select distinct St_Ex_Q.St_Id ID,St_Name Name
                     from St_Ex_Q ,Exam ,St_Ins_Crs ,Student
                     where St_Ex_Q.St_Id=St_Ins_Crs.St_Id and St_Ex_Q.Ex_Id=Exam.Ex_Id 
                     and Exam.Crs_Id=St_Ins_Crs.Crs_Id and St_Grade < Ex_Grade/2 and Student.St_Id=St_Ins_Crs.St_Id
                     and Student.Dept_Id=" + Dept_Id;

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
    public static int UpdateDepartment(int Dept_Id, string Dept_Name, int? Mgr_Id)
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