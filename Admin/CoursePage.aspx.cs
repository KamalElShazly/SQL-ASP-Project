using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CoursePage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Role"].ToString() != "Admin")
        {
            Response.Redirect("../Anonymous/ErrorPage.aspx");
        }
    }

    protected void Button_InsertCourse_Click(object sender, EventArgs e)
    {
        if (IsValid)
        {
            CourseSource.InsertParameters["Crs_Name"].DefaultValue = TextBox_Crs_Name.Text;
            CourseSource.InsertParameters["Crs_Duration"].DefaultValue = TextBox_Crs_Duration.Text;
            CourseSource.Insert();
            TextBox_Crs_Name.Text = string.Empty;
            TextBox_Crs_Duration.Text = string.Empty;
        }
    }
}