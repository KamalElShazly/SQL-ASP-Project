<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="CorrectivePerDept.aspx.cs" Inherits="CorrectivePerDept" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
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
        .auto-style5 {
            height: 65px;
            width: 16px;
        }
        .auto-style6 {
            width: 16px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style4" colspan="2" style="font-style: normal; font-weight: bold; font-size: x-large; color: #008000;">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;Department Name :&nbsp;</td>
            <td class="auto-style5">
                <asp:DropDownList ID="DropDownList_Dept_Id" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="Dept_Source" DataTextField="Dept_Name" DataValueField="Dept_Id" Width="200px">
                    <asp:ListItem Value="0">Choose Department</asp:ListItem>
                </asp:DropDownList>
                <asp:ObjectDataSource ID="Dept_Source" runat="server" SelectMethod="SelectDepartmentIdAndName" TypeName="DepartmentLayer"></asp:ObjectDataSource>
            </td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style6">
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" DataSourceID="Student_Source" ForeColor="#333333" GridLines="None" Width="446px">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
                <asp:ObjectDataSource ID="Student_Source" runat="server" SelectMethod="CorrectivePerDept" TypeName="DepartmentLayer">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList_Dept_Id" DefaultValue="1" Name="Dept_Id" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

