<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="Report1.aspx.cs" Inherits="Reports_Report1" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

    
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 163px;
        }
   
    </style>
 <script lang="javaScript" type="text/javascript" src="crystalreportviewers13/js/crviewer/crv.js">
</script>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
    <table style="width:100%;">
        <tr>
            <td class="auto-style2">Department</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource_Dept" DataTextField="Dept_Name" DataValueField="Dept_Id" Height="16px" Width="69px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1">
                </asp:DropDownList>
                <asp:ObjectDataSource ID="ObjectDataSource_Dept" runat="server" SelectMethod="SelectDepartmentIdAndName" TypeName="DepartmentLayer"></asp:ObjectDataSource>
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
                <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

