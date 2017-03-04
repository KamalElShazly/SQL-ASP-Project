using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class InstructorSalary : System.Web.UI.Page
{
    ObjectDataSource obj;
    protected void Page_Load(object sender, EventArgs e)
    {
        obj = new ObjectDataSource();
        obj.TypeName = "InstructorLayer";
        obj.SelectMethod = "SelectInstructorSalary";
        obj.SelectParameters.Clear();
        obj.Select();
        GridView1.DataSource = obj;
        GridView1.DataBind();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        obj.SelectMethod = "SelectInstructorSalary";
        obj.SelectParameters.Clear();
        obj.Select();
        GridView1.DataSource = obj;
        GridView1.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        obj.SelectMethod = "SelectIns_SalaryById";
        obj.SelectParameters.Clear();

        obj.SelectParameters.Add("id", TextBox_SelectedId.Text);

        obj.Select();

        GridView1.DataSource = obj;
        GridView1.DataBind();
    }
}