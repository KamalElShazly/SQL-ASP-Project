using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for DataSetLayer
/// </summary>
public static class DataAccessLayer
{
    static SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ASPProject"].ToString());
    public static DataSet SelectCommand(string s)
    {
        SqlCommand cm = new SqlCommand();
        cm.CommandText = s;
        cm.Connection = cn;
        cm.CommandType = CommandType.Text;
        DataSet ds = new DataSet();
        SqlDataAdapter ad = new SqlDataAdapter();
        ad.SelectCommand = cm;
        ad.Fill(ds);
        return ds;
    }
    public static int DMLCommand(string s)
    {
        SqlCommand cm = new SqlCommand();
        cm.CommandText = s;
        cm.Connection = cn;
        cm.CommandType = CommandType.Text;
        cn.Open();
        int nRows = cm.ExecuteNonQuery();
        cn.Close();
        return nRows;
    }
    public static int DMLCommandSP(string s,SqlParameter[] p)
    {
        SqlCommand cm = new SqlCommand();
        cm.CommandType = CommandType.StoredProcedure;
        cm.Connection = cn;
        cm.CommandText = s;
        cm.Parameters.Clear();
        cm.Parameters.AddRange(p);
        cn.Open();
        int nRows = cm.ExecuteNonQuery();
        cn.Close();
        return nRows;
    }

}