using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TopicsPerCourse : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Role"].ToString() != "Admin")
        {
            Response.Redirect("../Anonymous/ErrorPage.aspx");
        }
        if (!Page.IsPostBack)
        { 
            ObjectDataSource_Topic.SelectParameters["Crs_Id"].DefaultValue = ((Label)GridView_Crs.Rows[0].Cells[0].FindControl("Label_Crs_Id")).Text;
            ObjectDataSource_Topic.Select();
        }
    }

    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        ObjectDataSource_Topic.SelectParameters["Crs_Id"].DefaultValue = ((Label)GridView_Crs.Rows[e.NewSelectedIndex].Cells[0].FindControl("Label_crs_id")).Text;
        ObjectDataSource_Topic.Select();
    }
}