<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="Report3.aspx.cs" Inherits="Reports_Report3" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 142px;
        }
    </style>
     <script lang="javaScript" type="text/javascript" src="crystalreportviewers13/js/crviewer/crv.js">
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style1">Instructor</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource_Ins" DataTextField="Ins_Name" DataValueField="Ins_Id" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="200px">
                </asp:DropDownList>
                <asp:ObjectDataSource ID="ObjectDataSource_Ins" runat="server" SelectMethod="SelectInstructorIdAndName" TypeName="InstructorLayer"></asp:ObjectDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
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

