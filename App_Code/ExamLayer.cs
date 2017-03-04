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
    public static DataSet SelectQuestionsInExamById(int Ex_Id)
    {
        string s = @"select q.Q_Body,
            (select q_choice from Q_Answers qs where q.Q_Id=qs.Q_Id and Q_Answer='a') Answer1,
            (select q_choice from Q_Answers qs where q.Q_Id=qs.Q_Id and Q_Answer='b') Answer2,
            (select q_choice from Q_Answers qs where q.Q_Id=qs.Q_Id and Q_Answer='c') Answer3,
            (select q_choice from Q_Answers qs where q.Q_Id=qs.Q_Id and Q_Answer='d') Answer4
            from Ex_Q eq, Question q 
            where Ex_Id = " + Ex_Id + " and eq.Q_Id=q.Q_Id order by q.Q_Type ";
        return DataAccessLayer.SelectCommand(s);
    }
    public static DataSet SelectExamIdByCrsId(int Crs_Id)
    {
        string s = @"select top(1)Ex_Id from Exam where Crs_Id = " + Crs_Id + " order by newid()";
        return DataAccessLayer.SelectCommand(s);
    }
    public static DataSet SelectExamId()
    {
        string s = @"SELECT Ex_Id FROM Exam";
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
    public static int ExamAnswers(string St_Name, int Ex_Id,
        string Ans1, string Ans2, string Ans3, string Ans4, string Ans5, string Ans6, string Ans7, string Ans8, string Ans9, string Ans10)
    {
        string s = "Exam_Answers";
        SqlParameter[] p = new SqlParameter[] { new SqlParameter("@St_Name", St_Name),
            new SqlParameter("@Ex_Id", Ex_Id),
            new SqlParameter("@Ans1", Ans1) ,
            new SqlParameter("@Ans2", Ans2) ,
            new SqlParameter("@Ans3", Ans3) ,
            new SqlParameter("@Ans4", Ans4) ,
            new SqlParameter("@Ans5", Ans5) ,
            new SqlParameter("@Ans6", Ans6) ,
            new SqlParameter("@Ans7", Ans7) ,
            new SqlParameter("@Ans8", Ans8) ,
            new SqlParameter("@Ans9", Ans9) ,
            new SqlParameter("@Ans10", Ans10)
        };
        return DataAccessLayer.DMLCommandSP(s, p);
    }
    public static int ExamCorrection(string St_Name, int Ex_Id)
    {
        string s = "Exam_Correction";
        SqlParameter[] p = new SqlParameter[] { new SqlParameter("@St_Name", St_Name),
            new SqlParameter("@Ex_Id", Ex_Id) };
        return DataAccessLayer.DMLCommandSP(s, p);
    }

    public static DataSet SelectExamResult(int St_Id, int Ex_Id)
    {
        string s = @"select St_Grade,Ex_Grade from St_Ins_Crs cs,Exam ex where St_Id = "+ St_Id +
            " and cs.Crs_Id = ( select Crs_Id From Exam where Ex_Id = "+ Ex_Id + ") and Ex_Id = " + Ex_Id;
        return DataAccessLayer.SelectCommand(s);
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
                     Where St_Ex_Q.St_Id=Student.St_Id and Ex_Date='" + Ex_Date + "'";
        return DataAccessLayer.SelectCommand(s);

    }
}