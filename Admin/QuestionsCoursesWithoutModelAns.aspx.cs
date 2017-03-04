using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class QuestionsCoursesWithoutModelAns : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack)
        {
            ObjectDataSource_Questions.SelectParameters["Crs_Id"].DefaultValue = ((Label)GridView1.Rows[0].Cells[0].FindControl("Label_Crs_Id")).Text;
            ObjectDataSource_Questions.Select();
        }
    }

    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        ObjectDataSource_Questions.SelectParameters["Crs_Id"].DefaultValue = ((Label)GridView1.Rows[e.NewSelectedIndex].Cells[0].FindControl("Label_Crs_Id")).Text;
        ObjectDataSource_Questions.Select();
    }
}