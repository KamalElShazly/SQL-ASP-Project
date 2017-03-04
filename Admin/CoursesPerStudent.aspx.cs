using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CoursesPerStudent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Role"].ToString() != "Admin")
        {
            Response.Redirect("../Anonymous/ErrorPage.aspx");
        }
        if (!Page.IsPostBack)
        { 
        ObjectDataSource_Course.SelectParameters["St_Id"].DefaultValue = ((Label)GridView_student.Rows[0].Cells[0].FindControl("Label_St_Id")).Text;
        ObjectDataSource_Course.Select();
        }
    }

   
    protected void GridView_student_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        ObjectDataSource_Course.SelectParameters["St_Id"].DefaultValue = ((Label)GridView_student.Rows[e.NewSelectedIndex].Cells[0].FindControl("Label_St_Id")).Text;
        ObjectDataSource_Course.Select();
    }
}