using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DepartmentsWithManagers : System.Web.UI.Page
{
    ObjectDataSource obj;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Role"].ToString() != "Admin")
        {
            Response.Redirect("../Anonymous/ErrorPage.aspx");
        }
        obj = new ObjectDataSource();
        obj.TypeName = "DepartmentLayer";
        obj.SelectMethod = "SelectAllDepartments";
        obj.SelectParameters.Clear();
        obj.Select();
        GridView1.DataSource = obj;
        GridView1.DataBind();
    }


    protected void Button_SelectAll_Click(object sender, EventArgs e)
    {
        obj.SelectMethod = "SelectAllDepartments";
        obj.SelectParameters.Clear();
        obj.Select();
        GridView1.DataSource = obj;
        GridView1.DataBind();
    }

    protected void Button_SelectById_Click(object sender, EventArgs e)
    {
        obj.SelectMethod = "SelectDepartmentById";
        obj.SelectParameters.Clear();
        obj.SelectParameters.Add("Dept_Id", TextBox_SelectById.Text);
        obj.Select();
        GridView1.DataSource = obj;
        GridView1.DataBind();
    }
}