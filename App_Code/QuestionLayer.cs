using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;

/// <summary>
/// Summary description for QuestionLayer
/// </summary>
public static class QuestionLayer
{
    public static DataSet SelectAllQuestions()
    {
        string s = @"select q.*,c.crs_name,
	                (select q_choice from Q_Answers qs
	                where q.Q_Id=qs.Q_Id and Q_Answer='a') Answer1,
	                (select q_choice from Q_Answers qs
	                where q.Q_Id=qs.Q_Id and Q_Answer='b') Answer2,
	                (select q_choice from Q_Answers qs
	                where q.Q_Id=qs.Q_Id and Q_Answer='c') Answer3,
	                (select q_choice from Q_Answers qs
	                where q.Q_Id=qs.Q_Id and Q_Answer='d') Answer4
                    from question q,course c
                    where q.crs_id=c.crs_id";
        return DataAccessLayer.SelectCommand(s);
    }
    public static int InsertQuestion(string Q_Body, string Q_Type, int Q_Grade, string Q_Answer,
        int Crs_Id, string Q_Choice1, string Q_Choice2, string Q_Choice3, string Q_Choice4)
    {
        string s = "Insert_Question";
        SqlParameter[] p = new SqlParameter[] { new SqlParameter("@Q_Body", Q_Body) ,
        new SqlParameter("@Q_Type", Q_Type),
        new SqlParameter("@Q_Grade", Q_Grade),
        new SqlParameter("@Q_Answer", Q_Answer),
        new SqlParameter("@Crs_Id", Crs_Id),
        new SqlParameter("@Q_Choice1", Q_Choice1),
        new SqlParameter("@Q_Choice2", Q_Choice2),
        new SqlParameter("@Q_Choice3", Q_Choice3),
        new SqlParameter("@Q_Choice4", Q_Choice4)};
        return DataAccessLayer.DMLCommandSP(s, p);
    }
    public static int UpdateQuestion(int Q_Id, string Q_Body, string Q_Type, int Q_Grade,
        string Q_Answer,int Crs_Id, string Answer1, string Answer2,
        string Answer3, string Answer4)
    {
        string s = "Update_Question";
        SqlParameter[] p = new SqlParameter[] {new SqlParameter("@Q_Id", Q_Id) ,
        new SqlParameter("@Q_Body", Q_Body) ,
        new SqlParameter("@Q_Type", Q_Type),
        new SqlParameter("@Q_Grade", Q_Grade),
        new SqlParameter("@Crs_Id", Crs_Id),
        new SqlParameter("@Q_Choice1", Answer1),
        new SqlParameter("@Q_Choice2", Answer2),
        new SqlParameter("@Q_Choice3", Answer3),
        new SqlParameter("@Q_Choice4", Answer4)};
        return DataAccessLayer.DMLCommandSP(s, p);
    }
    public static int DeleteQuestion(int Q_Id)
    {
        string s = "Delete_Question";
        SqlParameter[] p = new SqlParameter[] { new SqlParameter("@Q_Id", Q_Id) };
        return DataAccessLayer.DMLCommandSP(s, p);
    }
}