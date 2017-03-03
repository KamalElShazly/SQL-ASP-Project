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
        if (!IsPostBack)
        {
            //SelectStudentExam();
        }
    }
    void SelectStudentExam()
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
            for (int i = 1; i < Question.ItemArray.Length; i++)
            {
                object Answer = Question.ItemArray[i];
                if (Answer != DBNull.Value)
                    AnswersList.Items.Add(Question.ItemArray[i].ToString());
            }
            AnswersList.SelectedIndex = 0;
            TableCell tCell = new TableCell();
            tCell.Controls.Add(AnswersList);
            ARow.Cells.Add(tCell);
            Table1.Rows.Add(ARow);
        }
    }


    protected void ConfirmBtn_Click(object sender, EventArgs e)
    {
        

    }
}