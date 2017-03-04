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
        ExamLayer.GenerateExam(CourseList.SelectedItem.Text,
            int.Parse(MCQNumber.Text), int.Parse(TFNumber.Text), int.Parse(DurationTxt.Text));
        SelectLastExam();
    }
    void SelectLastExam()
    {
        DataTable Questions = ExamLayer.SelectQuestionsInExam().Tables[0];
        int QCount = 1;
        Table1.Rows.Clear();
        foreach (DataRow Question in Questions.Rows)
        {
            TableRow QRow = new TableRow();
            QRow.Cells.Add(new TableCell() { Text = QCount++ + ". " + Question.ItemArray[0].ToString() });
            Table1.Rows.Add(QRow);
            TableRow ARow = new TableRow();
            RadioButtonList AnswersList = new RadioButtonList();
            AnswersList.Enabled = false;
            for (int i = 1; i < Question.ItemArray.Length; i++)
            {
                object Answer = Question.ItemArray[i];
                if (Answer != DBNull.Value)
                    AnswersList.Items.Add(Question.ItemArray[i].ToString());
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