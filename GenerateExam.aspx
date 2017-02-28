<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="GenerateExam.aspx.cs" Inherits="GenerateExam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 132px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="ExamSource">
        <ItemTemplate>
            <tr>
                <td>
                    Question
                </td>
                <td>
                    <%# Eval("Q_Body") %>
                </td>
            </tr>
            <tr>
                <td>
                    Answers
                </td>
                <td>
                    <%# Eval("Answer1") %>
                </td>
                <td>
                    <%# Eval("Answer2") %>
                </td>
                <td>
                    <%# Eval("Answer3") %>
                </td>
                <td>
                    <%# Eval("Answer4") %>
                </td>
            </tr>
        </ItemTemplate>
    </asp:Repeater>
    <asp:ObjectDataSource ID="ExamSource" runat="server" SelectMethod="SelectAllQuestions" TypeName="QuestionLayer"></asp:ObjectDataSource>
    <table style="width:100%;">
        <tr>
            <td class="auto-style2">Course</td>
            <td>MCQ</td>
            <td>T/F</td>
            <td>Duration</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>
    </asp:Content>

