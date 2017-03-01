<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="GenerateExam.aspx.cs" Inherits="GenerateExam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 132px;
        }

        .auto-style5 {
            width: 146px;
        }

        .auto-style6 {
            width: 135px;
        }

        .auto-style7 {
            width: 113px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table aria-orientation="horizontal" style="width: 100%; text-align: center;">
        <tr>
            <td class="auto-style2">Course</td>
            <td class="auto-style6">MCQ Questions</td>
            <td class="auto-style5">T/F Questions</td>
            <td class="auto-style7">Duration</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="CourseSource" DataTextField="crs_name" DataValueField="crs_id" Width="150px">
                </asp:DropDownList>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox1" runat="server" Width="100px"></asp:TextBox>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox2" runat="server" Width="100px"></asp:TextBox>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox3" runat="server" Width="100px"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="GenerateBtn" runat="server" Text="Generate Exam" OnClick="GenerateBtn_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="5">
                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="ExamSource">
                    <ItemTemplate>
                        <tr>
                            <td colspan="4">
                                <%# Eval("Q_Body") %>
                            </td>
                        </tr>
                        <tr>
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
                <asp:ObjectDataSource ID="ExamSource" runat="server" SelectMethod="SelectQuestionsInExam" TypeName="ExamLayer"></asp:ObjectDataSource>
                <asp:ObjectDataSource ID="CourseSource" runat="server" SelectMethod="SelectCourse_Id_Name" TypeName="CourseLayer"></asp:ObjectDataSource>
            </td>
        </tr>
    </table>
    <asp:Table ID="Table1" runat="server">
    </asp:Table>
    <br />
</asp:Content>

