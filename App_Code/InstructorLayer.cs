﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
/// <summary>
/// Summary description for Instractor
/// </summary>
public static class InstructorLayer
{
    public static DataSet SelectInstructorIdAndName()
    {
        string s = @"SELECT Ins_Id,Ins_Name FROM Instructor";
        return DataAccessLayer.SelectCommand(s);
    }

     

    public static DataSet SelectInstructorByCourseID(int Crs_Id)
    {
          string s = @"select distinct i.Ins_Id,i.Ins_Name
          from Instructor i,St_Ins_Crs ii
          where i.Ins_Id=ii.Ins_Id and ii.Crs_Id="+ Crs_Id.ToString();
         return DataAccessLayer.SelectCommand(s);
    }
    public static DataSet SelectAllInstructor()
    {
        string s = @"SELECT Instructor.*,Department.Dept_Name
                    FROM Instructor
                    JOIN Department ON Instructor.Dept_Id = Department.Dept_Id";
        return DataAccessLayer.SelectCommand(s);
    }

    public static int InsertInstructor(string Ins_Name, int? Ins_Age, string Ins_Address, int Dept_Id,string Ins_Salary)
    {
        string s = "Insert_Instructor";
        SqlParameter[] p = new SqlParameter[] { new SqlParameter("@Ins_Name", Ins_Name),
            new SqlParameter("@Ins_Age", Ins_Age??SqlInt32.Null),
            new SqlParameter("@Ins_Address", Ins_Address??SqlString.Null) ,
            new SqlParameter("@Dept_Id", Dept_Id) ,
            new SqlParameter("@Ins_Salary", Ins_Salary??SqlString.Null)
        };
        return DataAccessLayer.DMLCommandSP(s, p);
    }
    public static int UpdateInstructor(int Ins_Id, string Ins_Name, int? Ins_Age, string Ins_Address,  int Dept_Id, decimal? Ins_Salary)   {
        string s = "Update_Instructor";
        SqlParameter[] p = new SqlParameter[] {new SqlParameter("@Ins_Id",Ins_Id),
            
            new SqlParameter("@Ins_Name", Ins_Name),
            new SqlParameter("@Ins_Age", Ins_Age??SqlInt32.Null),
            new SqlParameter("@Ins_Address", Ins_Address??SqlString.Null) ,
            new SqlParameter("@Dept_Id", Dept_Id) ,
            new SqlParameter("@Ins_Salary", Ins_Salary??SqlDecimal.Null)

        };
        return DataAccessLayer.DMLCommandSP(s, p);
    }
    public static int DeleteInstructor(int Ins_Id)
    {
        string s = "Delete_Instructor";
        SqlParameter[] p = new SqlParameter[] { new SqlParameter("@Ins_Id", Ins_Id) };
        return DataAccessLayer.DMLCommandSP(s, p);
    }

    public static DataSet SelectInsructorById(int id)
    {
        string s = "SELECT * FROM Instructor where Ins_Id=" + id.ToString();
        return DataAccessLayer.SelectCommand(s);
    }
    public static DataSet SelectIns_SalaryById(int id)
    {
        string s = "SELECT Ins_Id,Ins_Name,Ins_Salary FROM Instructor where Ins_Id=" + id.ToString();
        return DataAccessLayer.SelectCommand(s);
    }




    public static DataSet SelectInstructorSalary()
    {
        string s = "SELECT  Ins_Id,Ins_Name,Ins_Salary FROM Instructor";
           return DataAccessLayer.SelectCommand(s);
    }



}