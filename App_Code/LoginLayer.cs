using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;

/// <summary>
/// Summary description for LoginLayer
/// </summary>
public static class LoginLayer
{
    public static DataSet SelectLoginQuestionAndAnswer(string UserName)
    {
        string s = "select UserPassword,Question,Answer from Registeration where UserName = '" + UserName+"'";
        return DataAccessLayer.SelectCommand(s);
    }

    public static DataSet CheckLogin(string UserName, string UserPassword)
    {
        string s = "Select_Name_Role";
        SqlParameter[] p = new SqlParameter[] { new SqlParameter("@UserName", UserName),
            new SqlParameter("@Password", UserPassword) };
        return DataAccessLayer.SelectCommandSP(s, p);
    }
    public static DataSet ChangePassword(string UserName, string UserPassword, string NewPassword)
    {
        string s = "ChangePassword";
        SqlParameter[] p = new SqlParameter[] { new SqlParameter("@UserName", UserName),
            new SqlParameter("@Password", UserPassword) ,
            new SqlParameter("@NewPassword",NewPassword)};
        return DataAccessLayer.SelectCommandSP(s, p);
    }
    public static DataSet UpdateSecurityQuestion(string UserName, string Question, string Answer)
    {
        string s = "UpdateSecurityQuestion";
        SqlParameter[] p = new SqlParameter[] { new SqlParameter("@UserName", UserName),
        new SqlParameter("@Question", Question),new SqlParameter("@Answer", Answer)};
        return DataAccessLayer.SelectCommandSP(s, p);
    }
}