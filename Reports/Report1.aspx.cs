using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using CrystalDecisions.CrystalReports.Engine;

public partial class Reports_Report1 : System.Web.UI.Page
{
    static SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ASPProject"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {

    }

   

    protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        SqlCommand com = new SqlCommand("St_info_according_DeptNo", cn);
        com.CommandType = CommandType.StoredProcedure;
        com.Parameters.AddWithValue("@Dept_Id", DropDownList1.SelectedValue);
        cn.Open();
        SqlDataAdapter ad = new SqlDataAdapter();
        ad.SelectCommand = com;
        DataSet ds = new DataSet_Report1();
        ad.Fill(ds);
        cn.Close();
        ReportDocument repdoc = new ReportDocument();
        repdoc.Load(Server.MapPath("Report1.rpt"));
        repdoc.SetDataSource(ds);
        repdoc.SetParameterValue("@Dept_Id", DropDownList1.SelectedValue);
        CrystalReportViewer1.ReportSource = repdoc;
        CrystalReportViewer1.DataBind();
    }
}