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
    public static DataSet CheckLogin(string UserName, string UserPassword)
    {
        string s = "Select_Name_Role";
        SqlParameter[] p = new SqlParameter[] { new SqlParameter("@UserName", UserName),
            new SqlParameter("@Password", UserPassword) };
        return DataAccessLayer.SelectCommandSP(s,p);
    }

}