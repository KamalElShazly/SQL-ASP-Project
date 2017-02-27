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

    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        Label label_id=(Label)GridView1.Rows[e.NewSelectedIndex].FindControl("Label_Ins_Id");
        TextBox_SelectedId.Text = label_id.Text;
    }

    protected void Button_SelectAll_Click(object sender, EventArgs e)
    {
        obj.SelectMethod = "SelectAllInstructor";
        obj.SelectParameters.Clear();
        obj.Select();
        GridView1.DataSource = obj;
        GridView1.DataBind();
        TextBox_SelectedId.Text = string.Empty;
    }

    protected void Button_Se_Click(object sender, EventArgs e)
    {
        //obj.SelectMethod = "";
        //obj.SelectParameters.Clear();

        //obj.SelectParameters.Add("Ins_Id", TextBox1.Text);

        //obj.Select();

        //GridView1.DataSource = obj;
        //GridView1.DataBind();
    }
}