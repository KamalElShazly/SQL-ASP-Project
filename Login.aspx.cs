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
        DataTable RegisteredUser = LoginLayer.CheckLogin(NameTxt.Text, PassTxt.Text).Tables[0];
        if (RegisteredUser.Rows.Count > 0)
        {
            Session["Name"] = RegisteredUser.Rows[0].ItemArray[0];
            Session["Role"] = RegisteredUser.Rows[0].ItemArray[1];
        }
        else
        {
            LoginErrorLabel.Visible = true;
        }
    }
}