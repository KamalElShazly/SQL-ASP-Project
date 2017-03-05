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
            ViewState["ID"] = RegisteredUser.Tables[0].Rows[0].ItemArray[0];
            ViewState["Name"] = RegisteredUser.Tables[0].Rows[0].ItemArray[1];
            ViewState["Role"] = RegisteredUser.Tables[0].Rows[0].ItemArray[2];
            if (RegisteredUser.Tables[0].Rows[0].ItemArray[3].ToString() == string.Empty)
            {
                MultiView1.ActiveViewIndex = 1;
            }
            else
            {
                GoToHomePage();
            }
        }
        else
        {
            LoginErrorLabel.Visible = true;
        }
    }

    protected void ConfirmBtn_Click(object sender, EventArgs e)
    {
        LoginLayer.UpdateSecurityQuestion(NameTxt.Text, QuestionTxt.Text, AnswerTxt.Text);
        GoToHomePage();
    }

    void GoToHomePage()
    {
        Session["ID"] = ViewState["ID"];
        Session["Name"] = ViewState["Name"];
        Session["Role"] = ViewState["Role"];
        if (Session["Role"].ToString() == "Admin")
        {
            Response.Redirect("../Admin/HomePage.aspx");
        }
        else if (Session["Role"].ToString() == "Instructor")
        {
            Response.Redirect("../Instructor/HomePage.aspx");
        }
        else if (Session["Role"].ToString() == "Student")
        {
            Response.Redirect("../Student/HomePage.aspx");
        }
    }

    protected void GetPassword_Click(object sender, EventArgs e)
    {
        DataSet RegisteredUser = LoginLayer.SelectLoginQuestionAndAnswer(NameTxt2.Text);
        if (RegisteredUser.Tables[0].Rows.Count > 0)
        {
            ViewState["Password"] = RegisteredUser.Tables[0].Rows[0].ItemArray[0];
            ViewState["Answer"] = RegisteredUser.Tables[0].Rows[0].ItemArray[2];
            QuestionLbl.Text = RegisteredUser.Tables[0].Rows[0].ItemArray[1].ToString();
            MultiView1.ActiveViewIndex = 3;
        }
        else
        {
            ForgetPasswordError.Visible = true;
        }
    }

    protected void SubmitBtn_Click(object sender, EventArgs e)
    {
        if (AnswerTxt2.Text == ViewState["Answer"].ToString())
        {
            PasswordLbl.Text = ViewState["Password"].ToString();
            MultiView1.ActiveViewIndex = 4;
        }
        else
        {
            AnswerError.Visible = true;
        }
    }

    protected void ForgotPassword_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
    }
}