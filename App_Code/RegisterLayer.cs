using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for RegisterLayer
/// </summary>
public static class RegisterLayer
{
    public static int Register(string UserName, int Password, string Role, int id)
    {
        string s = "Register_User";
        SqlParameter[] p = new SqlParameter[] { new SqlParameter("@UserName", UserName),
            new SqlParameter("@UserPass",Password),
            new SqlParameter("@Role",Role),
            new SqlParameter("@Id", id)
        };
        return DataAccessLayer.DMLCommandSP(s, p);
    }
}