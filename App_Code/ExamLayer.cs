using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;

/// <summary>
/// Summary description for ExamLayer
/// </summary>
public static class ExamLayer
{
    //static void GenerateExam()
    //{
    //    string s = "Generate_Exam";

    //}
    public static DataSet SelectQuestionsInExam()
    {
        string s = @"select * from q_answers where q_id=1";
        return DataAccessLayer.SelectCommand(s);
    }
    public static DataSet SelectExamDate()

    {
        string s = @"Select distinct Ex_Date From St_Ex_Q";

        return DataAccessLayer.SelectCommand(s);

    }

    public static DataSet StudentExam(string Ex_Date)

    {
        string s = @"Select St_Ex_Q.St_Id,St_Name,Ex_Id
                     From St_Ex_Q,Student
                     Where St_Ex_Q.St_Id=Student.St_Id and Ex_Date=" + Ex_Date;

        return DataAccessLayer.SelectCommand(s);

    }
}