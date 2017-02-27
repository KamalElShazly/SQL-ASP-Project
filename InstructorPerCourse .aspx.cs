using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class InstructorPerCourse_ : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
           
            InstructorDS.SelectParameters["Crs_Id"].DefaultValue = ((Label)GridView1.Rows[0].Cells[0].FindControl("cou_idlbl")).Text;
            InstructorDS.Select();
        }
    }

    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        InstructorDS.SelectParameters["Crs_Id"].DefaultValue = ((Label)GridView1.Rows[e.NewSelectedIndex].Cells[0].FindControl("cou_idlbl")).Text;
        InstructorDS.Select();
    }
}