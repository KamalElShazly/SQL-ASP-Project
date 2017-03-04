<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="StudentAnswersAfterGeneration.aspx.cs" Inherits="StudentAnswersAfterGeneration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style2 {
            height: 34px;
        }
    </style>
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
                &nbsp;</td>
            <td class="auto-style2">
                <asp:Button ID="ConfirmBtn" runat="server" OnClick="ConfirmBtn_Click" Text="Confirm Answers" />
            </td>
            <td class="auto-style2"></td>
        </tr>
    </table>
</asp:Content>

