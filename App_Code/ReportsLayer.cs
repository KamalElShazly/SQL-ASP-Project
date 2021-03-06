﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;

/// <summary>
/// Summary description for ReportsLayer
/// </summary>
public static class ReportsLayer
{
    public static DataSet StudentByDepartment(int Dept_Id)
    {
        string s = @"St_info_according_DeptNo";
        SqlParameter[] p = new SqlParameter[] { new SqlParameter("@Dept_Id", Dept_Id) };
        return DataAccessLayer.SelectCommandSP(s,p);
    }
    public static DataSet StudentCoursesGrades(int St_Id)
    {
        string s = @"St_Grade_in_allCourses";
        SqlParameter[] p = new SqlParameter[] { new SqlParameter("St_Id", St_Id) };
        return DataAccessLayer.SelectCommandSP(s, p);
    }
    public static DataSet CrsName_StudentNoPerCourse(int Ins_Id)
    {
        string s = @"CrsName_No_of_Student_Per_Crs";
        SqlParameter[] p = new SqlParameter[] { new SqlParameter("Ins_Id", Ins_Id) };
        return DataAccessLayer.SelectCommandSP(s, p);
    }
    public static DataSet TopicsPerCourse(int Crs_Id)
    {
        string s = @"Topics_per_Crs";
        SqlParameter[] p = new SqlParameter[] { new SqlParameter("Crs_Id", Crs_Id) };
        return DataAccessLayer.SelectCommandSP(s, p);
    }
    public static DataSet QuestionsPerExam(int Ex_Id)
    {
        string s = @"Questions_Per_Exam";
        SqlParameter[] p = new SqlParameter[] { new SqlParameter("Ex_Id", Ex_Id) };
        return DataAccessLayer.SelectCommandSP(s, p);
    }
    public static DataSet QuestionsPerExamWithStAns(int Ex_Id,int St_Id)
    {
        string s = @"QuestionsPerExam_With_St_Ans";
        SqlParameter[] p = new SqlParameter[] { new SqlParameter("Ex_Id", Ex_Id),
        new SqlParameter("St_Id", St_Id)};
        return DataAccessLayer.SelectCommandSP(s, p);
    }
}