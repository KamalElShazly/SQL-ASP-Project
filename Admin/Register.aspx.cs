using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    ObjectDataSource obj;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Role"].ToString() != "Admin")
        {
            Response.Redirect("../Anonymous/ErrorPage.aspx");
        }
        if (!IsPostBack)
        {
            obj = new ObjectDataSource();
            obj.TypeName = "StudentLayer";
            obj.SelectMethod = "SelectStudentsIdAndName";
            obj.Select();

            DropDownList_Names.DataSource = obj;
            DropDownList_Names.DataValueField = "St_Id";
            DropDownList_Names.DataTextField = "St_Name";
            DropDownList_Names.DataBind();
        }
    }
    protected void DropDownList_Role_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList_Role.SelectedIndex == 0)
        {
            obj = new ObjectDataSource();
            obj.TypeName = "StudentLayer";
            obj.SelectMethod = "SelectStudentsIdAndName";
            obj.Select();

            DropDownList_Names.DataSource = obj;
            DropDownList_Names.DataValueField = "St_Id";
            DropDownList_Names.DataTextField = "St_Name";
            DropDownList_Names.DataBind();
        }
        else if (DropDownList_Role.SelectedIndex == 1)
        {
            obj = new ObjectDataSource();
            obj.TypeName = "InstructorLayer";
            obj.SelectMethod = "SelectInstructorIdAndName";
            obj.Select();

            DropDownList_Names.DataSource = obj;
            DropDownList_Names.DataValueField = "Ins_Id";
            DropDownList_Names.DataTextField = "Ins_Name";
            DropDownList_Names.DataBind();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        RegisterLayer.Register(TextBox_UserName.Text, int.Parse(TextBox_Password.Text), DropDownList_Role.Text, int.Parse(DropDownList_Names.SelectedValue));
        TextBox_UserName.Text = string.Empty;
        TextBox_Password.Text = string.Empty;
        TextBox_ConfirmPass.Text = string.Empty;
    }
}