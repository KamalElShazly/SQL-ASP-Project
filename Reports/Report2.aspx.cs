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

public partial class Reports_Report2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataSet ds = ReportsLayer.StudentCoursesGrades(int.Parse(DropDownList1.SelectedValue));

        ReportDocument repdoc = new ReportDocument();
        repdoc.Load(Server.MapPath("Report2.rpt"));
        repdoc.SetDataSource(ds);
        repdoc.SetParameterValue("@St_Id", DropDownList1.SelectedValue);
        CrystalReportViewer1.ReportSource = repdoc;
        CrystalReportViewer1.DataBind();
    }
}