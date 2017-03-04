using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class StudentAnswersAfterGeneration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SelectStudentExam();
    }
    void SelectStudentExam()
    {
        string[] QuestionAnswers = { "a", "b", "c", "d" };
        DataTable Questions = ExamLayer.SelectQuestionsInExam().Tables[0];
        for (int q = 0; q < 10; q++)
        {
            TableRow QRow = new TableRow();
            QRow.Cells.Add(new TableCell() { Text = q + 1 + ". " + Questions.Rows[q].ItemArray[0].ToString() });
            Table1.Rows.Add(QRow);
            TableRow ARow = new TableRow();
            RadioButtonList AnswerList = new RadioButtonList();
            for (int i = 1; i < Questions.Rows[q].ItemArray.Length; i++)
            {
                object Answer = Questions.Rows[q].ItemArray[i];
                if (Answer != DBNull.Value)

                    AnswerList.Items.Add(new ListItem
                    { Text = QuestionAnswers[i - 1].ToString()+". "+Questions.Rows[q].ItemArray[i].ToString(), Value = QuestionAnswers[i - 1].ToString() });
            }
            TableCell tCell = new TableCell();
            tCell.Controls.Add(AnswerList);
            ARow.Cells.Add(tCell);
            Table1.Rows.Add(ARow);
        }
    }

    protected void ConfirmBtn_Click(object sender, EventArgs e)
    {
        if (IsValid)
        {
            string[] Answers = HiddenField1.Value.Split(',');
            ExamLayer.ExamAnswers("Kamal Elshazly",4,Answers[0], Answers[1], Answers[2], Answers[3], Answers[4], Answers[5], Answers[6], Answers[7], Answers[8], Answers[9]);
        }
    }

    protected void AnswersValidator_ServerValidate(object source, ServerValidateEventArgs args)
    {
        string[] answers = HiddenField1.Value.Split(',');
        args.IsValid = true;
        foreach(string answer in answers)
        {
            if(answer == string.Empty)
            {
                args.IsValid = false;
            }
        }
    }
}