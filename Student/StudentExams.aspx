<%@ Page Title="" Language="C#" MasterPageFile="~/StudentMaster.master" AutoEventWireup="true" CodeFile="StudentExams.aspx.cs" Inherits="Student_StudentExams" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 272px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style1">
                <asp:ObjectDataSource ID="CourseSource" runat="server" SelectMethod="SelectCoursesPerStudent" TypeName="CourseLayer">
                    <SelectParameters>
                        <asp:SessionParameter Name="St_Id" SessionField="ID" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="CourseSource" DataTextField="crs_name" DataValueField="crs_id" Width="200px">
                </asp:DropDownList>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Go To Exam" Width="100px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

