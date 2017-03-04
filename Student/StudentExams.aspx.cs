using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Student_StudentExams : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Role"].ToString() != "Student")
        {
            Response.Redirect("../Anonymous/ErrorPage.aspx");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSet ds = ExamLayer.SelectExamIdByCrsId(int.Parse(DropDownList1.SelectedValue));
        Session.Add("ExamID", (int)ds.Tables[0].Rows[0].ItemArray[0]) ;
        Response.Redirect("StudentAnswersAfterGeneration.aspx");
    }
}