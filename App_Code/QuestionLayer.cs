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
        string s = @"select 
	q.*,
	(select q_choice
	from Q_Answers qs
	where q.Q_Id=qs.Q_Id and Q_Answer='a') Answer1,
	(select q_choice
	from Q_Answers qs
	where q.Q_Id=qs.Q_Id and Q_Answer='b') Answer2,
	(select q_choice
	from Q_Answers qs
	where q.Q_Id=qs.Q_Id and Q_Answer='c') Answer3,
	(select q_choice
	from Q_Answers qs
	where q.Q_Id=qs.Q_Id and Q_Answer='d') Answer4
from question q";
        return DataAccessLayer.SelectCommand(s);
    }
}