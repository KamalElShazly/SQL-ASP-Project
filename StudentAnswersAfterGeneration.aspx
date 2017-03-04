<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="StudentAnswersAfterGeneration.aspx.cs" Inherits="StudentAnswersAfterGeneration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style2 {
            height: 34px;
        }
    </style>
    <script>
        function SubmitExamAnswers(oSrc, args) {
            var Answers = document.querySelectorAll('input[type="radio"]:checked');
            var Input = document.querySelector('#HiddenField1');
            var Output = [];
            for (var i = 0; i < 10; i++) {
                if (typeof (Answers[i]) != "undefined")
                    Output.push(Answers[i].value);
                else
                    Output.push("");
            }
            Input.value = Output;
            if (Answers.length == 10)
                args.IsValid = true;
            else
                args.IsValid = false;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="width: 100%;">
        <tr>
            <td colspan="3">
                <asp:Table ID="Table1" runat="server">
                </asp:Table>
            </td>
        </tr>
        <tr>
            <td>
                <asp:ObjectDataSource ID="ExamSource" runat="server" SelectMethod="SelectQuestionsInExam" TypeName="ExamLayer"></asp:ObjectDataSource>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:HiddenField ID="HiddenField1" runat="server" ClientIDMode="Static" Value=",,,,,,,,," />
                <asp:CustomValidator ID="AnswersValidator" runat="server" ClientValidationFunction="SubmitExamAnswers" ErrorMessage="You have to answer all questions" ForeColor="Red" ToolTip="You have to answer all questions" ValidationGroup="confirm" OnServerValidate="AnswersValidator_ServerValidate">You have to answer all questions</asp:CustomValidator>
            </td>
            <td class="auto-style2">
                <asp:Button ID="ConfirmBtn" runat="server" OnClick="ConfirmBtn_Click" Text="Confirm Answers" ValidationGroup="confirm" />
            </td>
            <td class="auto-style2"></td>
        </tr>
    </table>
</asp:Content>

