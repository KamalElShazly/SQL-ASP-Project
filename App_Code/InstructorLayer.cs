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
    public static DataSet SelectInstructorIdAndName()
    {
        string s = @"SELECT Ins_Id,Ins_Name FROM Instructor";
        return DataAccessLayer.SelectCommand(s);
    }
}