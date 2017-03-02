<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="CorrectivePerDept.aspx.cs" Inherits="CorrectivePerDept" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 174px;
        }
        .auto-style3 {
            width: 174px;
            height: 65px;
        }
        .auto-style4 {
            height: 65px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style3">&nbsp;Department Name :&nbsp;</td>
            <td class="auto-style4">
                <asp:DropDownList ID="DropDownList_Dept_Id" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="ObjectDataSource1" DataTextField="Dept_Name" DataValueField="Dept_Id" Width="200px">
                    <asp:ListItem Value="0">Choose Department</asp:ListItem>
                </asp:DropDownList>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="SelectDepartmentIdAndName" TypeName="DepartmentLayer"></asp:ObjectDataSource>
            </td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

