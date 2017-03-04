using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Anonymous_ChangePassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Insert_Bt_Click(object sender, EventArgs e)
    {
        LoginLayer.ChangePassword(TextBox1.Text, TextBox2.Text, TextBox3.Text);
    }
}