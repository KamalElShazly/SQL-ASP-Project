using System;
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
}