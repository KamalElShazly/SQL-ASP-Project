using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StudentExamsByStudentID : System.Web.UI.Page
{
    ObjectDataSource obj;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Role"].ToString() != "Admin")
        {
            Response.Redirect("../Anonymous/ErrorPage.aspx");
        }
        obj = new ObjectDataSource();
        obj.TypeName = "StudentLayer";
        obj.SelectMethod = "SelectStudentsIdAndName";
        obj.SelectParameters.Clear();
        obj.Select();
        GridView2.DataSource = obj;
        GridView2.DataBind();
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {   
        if (DropDownList1.SelectedIndex != 0)
        {
            obj.TypeName = "InstructorLayer";
            obj.SelectMethod = "SelectStudentsId";
            obj.SelectParameters.Clear();

            obj.SelectParameters.Add("St_Id", DropDownList1.Text);

            obj.Select();

            GridView2.DataSource = obj;
            GridView2.DataBind();


            ObjectDataSource2.SelectParameters["St_Id"].DefaultValue = DropDownList1.Text;
            ObjectDataSource2.Select();
        }
        else
       {
            
            obj.TypeName = "StudentLayer";
            obj.SelectMethod = "SelectStudentsIdAndName";
            obj.SelectParameters.Clear();
            obj.Select();
            GridView2.DataSource = obj;
            GridView2.DataBind();
            ObjectDataSource2.SelectParameters["St_Id"].DefaultValue = DropDownList1.SelectedIndex.ToString();
            ObjectDataSource2.Select();
        }
    }

    protected void St_Name(object sender, EventArgs e)
    {

    }

    protected void Label6_DataBinding(object sender, EventArgs e)
    {
     
    }

    protected void GridView2_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        DropDownList1.SelectedIndex =  int.Parse((((Label)(GridView2.Rows[e.NewSelectedIndex].Cells[0].FindControl("stidlbl"))).Text));
        int x = int.Parse((((Label)(GridView2.Rows[e.NewSelectedIndex].Cells[0].FindControl("stidlbl"))).Text));
        // عايز افير الايفنت                     ((Label)GridView2.Rows[0].Cells[0].FindControl("stidlbl")).Text;
        obj.TypeName = "InstructorLayer";
        obj.SelectMethod = "SelectStudentsId";
        obj.SelectParameters.Clear();

        obj.SelectParameters.Add("St_Id", DropDownList1.Text);

        obj.Select();

        GridView2.DataSource = obj;
        GridView2.DataBind();


        ObjectDataSource2.SelectParameters["St_Id"].DefaultValue = DropDownList1.Text;
        ObjectDataSource2.Select();
    }
}