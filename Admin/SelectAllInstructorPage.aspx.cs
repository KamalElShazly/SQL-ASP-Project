using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SelectAllInstructorPage : System.Web.UI.Page
{
    ObjectDataSource obj;
    protected void Page_Load(object sender, EventArgs e)
    {
        obj = new ObjectDataSource();
        obj.TypeName = "InstructorLayer";
        obj.SelectMethod = "SelectAllInstructor";
        obj.SelectParameters.Clear();
        obj.Select();
        GridView1.DataSource = obj;
        GridView1.DataBind();
    }

    

    protected void Button_SelectAll_Click(object sender, EventArgs e)
    {
        obj.SelectMethod = "SelectAllInstructor";
        obj.SelectParameters.Clear();
        obj.Select();
        GridView1.DataSource = obj;
        GridView1.DataBind();
    }

    protected void Button_Se_Click(object sender, EventArgs e)
    {
        obj.SelectMethod = "SelectInsructorById";
        obj.SelectParameters.Clear();

        obj.SelectParameters.Add("id", TextBox_SelectById.Text);

        obj.Select();

        GridView1.DataSource = obj;
        GridView1.DataBind();
    }
}