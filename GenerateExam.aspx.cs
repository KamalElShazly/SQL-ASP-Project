using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class GenerateExam : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void GenerateBtn_Click(object sender, EventArgs e)
    {
        ExamSource.InsertParameters["Crs_Name"].DefaultValue = CourseList.SelectedItem.Text;
        ExamSource.InsertParameters["MCQ_No"].DefaultValue = MCQNumber.Text;
        ExamSource.InsertParameters["TF_No"].DefaultValue = TFNumber.Text;
        ExamSource.InsertParameters["Ex_Dur"].DefaultValue = DurationTxt.Text;
        ExamSource.Insert();
        SelectLastExam();   
    }
    void SelectLastExam()
    {
        DataView Questions = (DataView)ExamSource.Select();
        int QCount = 1;
        Table1.Rows.Clear();
        foreach (DataRowView Question in Questions)
        {
            TableRow QRow = new TableRow();
            QRow.Cells.Add(new TableCell() { Text = QCount + ". " + Question.Row.ItemArray[0].ToString() });
            QCount++;
            Table1.Rows.Add(QRow);
            TableRow ARow = new TableRow();
            RadioButtonList AnswersList = new RadioButtonList();
            AnswersList.Enabled = false;
            for (int i = 1; i < Question.Row.ItemArray.Length; i++)
            {
                object ans = Question.Row.ItemArray[i];
                if (ans != DBNull.Value)
                    AnswersList.Items.Add(Question.Row.ItemArray[i].ToString());
            }
            TableCell tCell = new TableCell();
            tCell.Controls.Add(AnswersList);
            ARow.Cells.Add(tCell);
            Table1.Rows.Add(ARow);
        }
    }
    protected void QuestionsValidation(object source, ServerValidateEventArgs args)
    {
        if (int.Parse(MCQNumber.Text) + int.Parse(TFNumber.Text) == 10)
            args.IsValid = true;
        else
            args.IsValid = false;
    }
}