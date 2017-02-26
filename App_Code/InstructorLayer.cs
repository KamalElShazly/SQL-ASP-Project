using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
/// <summary>
/// Summary description for Instractor
/// </summary>
public static class InstructorLayer
{
    public static DataSet SelectAllStudents()
    {
        string s = "select * from Instructor";
        return DataAccessLayer.SelectCommand(s);

    }
    public static 



}