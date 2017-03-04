using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LoginBtn_Click(object sender, EventArgs e)
    {
        DataSet RegisteredUser = LoginLayer.CheckLogin(NameTxt.Text, PassTxt.Text);
        if (RegisteredUser.Tables.Count > 0)
        {
            Session["ID"] = RegisteredUser.Tables[0].Rows[0].ItemArray[0];
            Session["Name"] = RegisteredUser.Tables[0].Rows[0].ItemArray[1];
            Session["Role"] = RegisteredUser.Tables[0].Rows[0].ItemArray[2];
            if(Session["Role"].ToString() == "Admin")
            {
                Response.Redirect("../Admin/HomePage_Admin.aspx");
            }
            else if (Session["Role"].ToString() == "Instructor")
            {
                Response.Redirect("../Instructor/HomePage_Ins.aspx");
            }
            else if (Session["Role"].ToString() == "Student")
            {
                Response.Redirect("../Student/HomePage_St.aspx");
            }
        }
        else
        {
            LoginErrorLabel.Visible = true;
        }
    }
}