using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;

/// <summary>
/// Summary description for DepartmentLayer
/// </summary>
public static class DepartmentLayer
{
    public static DataSet SelectAllDepartments()
    {
        string s = @"SELECT *
            FROM Department";
        return DataAccessLayer.SelectCommand(s);
    }

}