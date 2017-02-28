using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class QuestionPerCourse : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            QuestionSource.SelectParameters["Crs_Id"].DefaultValue = ((Label)GridView5.Rows[0].Cells[0].FindControl("cou_idlbl")).Text;
            QuestionSource.Select();
        }
    }

    protected void GridView5_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        QuestionSource.SelectParameters["Crs_Id"].DefaultValue = ((Label)GridView5.Rows[e.NewSelectedIndex].Cells[0].FindControl("cou_idlbl")).Text;
        QuestionSource.Select();
    }

    protected void GridView5_SelectedIndexChanging1(object sender, GridViewSelectEventArgs e)
    {

    }
}