using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using CrystalDecisions.CrystalReports.Engine;

public partial class Report1 : System.Web.UI.Page
{
    static SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ASPProject"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlCommand comm = new SqlCommand("St_info_according_DeptNo", cn);
        comm.CommandType = CommandType.StoredProcedure;
        comm.Parameters.AddWithValue("@Dept_Id",DropDownList1.SelectedValue);
        cn.Open();
        SqlDataAdapter ad = new SqlDataAdapter(comm);
        DataTable ds = new DataTable();
        ad.Fill(ds);
        cn.Close();
        ReportDocument doc = new ReportDocument();
        doc.Load(Server.MapPath("Report1.rpt"));
        doc.SetDataSource(ds);
        doc.SetParameterValue("@Dept_Id", DropDownList1.SelectedValue);
        CrystalReportViewer1.ReportSource = doc;
        CrystalReportViewer1.DataBind();
    }
}