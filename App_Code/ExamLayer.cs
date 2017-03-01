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
}