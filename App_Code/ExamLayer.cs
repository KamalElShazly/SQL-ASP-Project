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
        string s = @"select q.Q_Body,
            (select q_choice from Q_Answers qs where q.Q_Id=qs.Q_Id and Q_Answer='a') Answer1,
            (select q_choice from Q_Answers qs where q.Q_Id=qs.Q_Id and Q_Answer='b') Answer2,
            (select q_choice from Q_Answers qs where q.Q_Id=qs.Q_Id and Q_Answer='c') Answer3,
            (select q_choice from Q_Answers qs where q.Q_Id=qs.Q_Id and Q_Answer='d') Answer4
            from Ex_Q eq, Question q
            where Ex_Id = (select max(Ex_Id) from Exam) and eq.Q_Id=q.Q_Id
            order by q.Q_Type ";
        return DataAccessLayer.SelectCommand(s);
    }
    public static int GenerateExam(string Crs_Name, int MCQ_No, int TF_No, int Ex_Dur)
    {
        string s = "Generate_Exam";
        SqlParameter[] p = new SqlParameter[] { new SqlParameter("@Crs_Name", Crs_Name),
            new SqlParameter("@MCQ_No", MCQ_No),
            new SqlParameter("@TF_No", TF_No) ,
            new SqlParameter("@Ex_Dur", Ex_Dur)
        };
        return DataAccessLayer.DMLCommandSP(s, p);
    }
    public static DataSet SelectExamDate()
    {
        string s = @"Select distinct Ex_Date From St_Ex_Q";
        return DataAccessLayer.SelectCommand(s);
    }

    public static DataSet StudentExam(string Ex_Date)
    {
        string s = @"Select distinct Ex_Id,St_Ex_Q.St_Id,St_Name
                     From St_Ex_Q,Student
                     Where St_Ex_Q.St_Id=Student.St_Id and Ex_Date='" + Ex_Date+"'";
        return DataAccessLayer.SelectCommand(s);

    }
}