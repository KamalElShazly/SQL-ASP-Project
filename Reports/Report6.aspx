<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="Report6.aspx.cs" Inherits="Reports_Report6" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 20px;
        }
        .auto-style2 {
            width: 132px;
        }
        .auto-style3 {
            height: 20px;
            width: 132px;
        }
    </style>
      <script lang="javaScript" type="text/javascript" src="crystalreportviewers13/js/crviewer/crv.js">
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style2">Exam ID</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="Exam" Width="200px" DataTextField="Ex_Id" DataValueField="Ex_Id">
                </asp:DropDownList>
                <asp:ObjectDataSource ID="Exam" runat="server" SelectMethod="SelectExamId" TypeName="ExamLayer"></asp:ObjectDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">Student ID</td>
            <td class="auto-style1">
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="Student" DataTextField="St_Name" DataValueField="St_Id" Width="200px">
                </asp:DropDownList>
                <asp:ObjectDataSource ID="Student" runat="server" SelectMethod="SelectStudentsIdAndName" TypeName="StudentLayer"></asp:ObjectDataSource>
            </td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" Width="100px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" ToolPanelView="None" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

