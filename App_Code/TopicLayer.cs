using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;

/// <summary>
/// Summary description for TopicLayer
/// </summary>
public class TopicLayer
{
    public static DataSet SelectAllTopics()
    {
        string s = "Select * from Topic";
        return DataAccessLayer.SelectCommand(s);
    }
    public static DataSet SelectTopicByCrsId(int Crs_Id)
    {
        string s = "Select Top_Id,Top_Name from Topic where Crs_Id=" + Crs_Id.ToString();
        return DataAccessLayer.SelectCommand(s);
    }
    public static int DeleteTopic(int Top_Id)
    {
        string s = "Delete_Topic";
        SqlParameter[] p = new SqlParameter[] { new SqlParameter("@Top_Id", Top_Id) };
        return DataAccessLayer.DMLCommandSP(s,p);
    }
    public static int UpdateTopic(int Top_Id,string Top_Name,int Crs_Id)
    {
        string s = "Update_Topic";
        SqlParameter[] p = new SqlParameter[] { new SqlParameter("@Top_Id", Top_Id),
            new SqlParameter("@Top_Name",Top_Name ),
            new SqlParameter("@Crs_Id",Crs_Id ), 
        };
        return DataAccessLayer.DMLCommandSP(s,p);
    }
    public static int InsertTopic(int Top_Id, string Top_Name, int Crs_Id)
    {
        string s = "Insert_Topic";
        SqlParameter[] p = new SqlParameter[] { new SqlParameter("@Top_Id",Top_Id ),
            new SqlParameter("@Top_Name",Top_Name ) ,
            new SqlParameter("@Crs_Id", Crs_Id) ,
        };
        return DataAccessLayer.DMLCommandSP(s,p);
    }
}