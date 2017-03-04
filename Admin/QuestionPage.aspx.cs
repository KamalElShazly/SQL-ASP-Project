using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class QuestionPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Role"].ToString() != "Admin")
        {
            Response.Redirect("../Anonymous/ErrorPage.aspx");
        }
    }

    protected void TypeList_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (TypeList.Text == "MCQ")
        {
            ChoiceC_Label.Visible = true;
            ChoiceD_Label.Visible = true;
            ChoiceCTxt.Visible = true;
            ChoiceDTxt.Visible = true;
            ChoiceD_Validator.Enabled = true;
            ChoiceD_Validator.Enabled = true;
        }
        else
        {
            ChoiceC_Label.Visible = false;
            ChoiceD_Label.Visible = false;
            ChoiceCTxt.Visible = false;
            ChoiceDTxt.Visible = false;
            ChoiceD_Validator.Enabled = false;
            ChoiceD_Validator.Enabled = false;
        }
    }

    protected void InsertBtn_Click(object sender, EventArgs e)
    {
        QuestionSource.InsertParameters["Q_Body"].DefaultValue = QuestionTxt.Text;
        QuestionSource.InsertParameters["Q_Type"].DefaultValue = TypeList.Text;
        QuestionSource.InsertParameters["Q_Grade"].DefaultValue = GradeTxt.Text;
        QuestionSource.InsertParameters["Q_Answer"].DefaultValue = CorrectTxt.Text;
        QuestionSource.InsertParameters["Crs_Id"].DefaultValue = CourseList.SelectedValue;
        QuestionSource.InsertParameters["Q_Choice1"].DefaultValue = ChoiceATxt.Text;
        QuestionSource.InsertParameters["Q_Choice2"].DefaultValue = ChoiceBTxt.Text;
        QuestionSource.InsertParameters["Q_Choice3"].DefaultValue = ChoiceCTxt.Text;
        QuestionSource.InsertParameters["Q_Choice4"].DefaultValue = ChoiceDTxt.Text;
        QuestionSource.Insert();
    }
}