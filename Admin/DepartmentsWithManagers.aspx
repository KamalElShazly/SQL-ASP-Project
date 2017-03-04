<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="DepartmentsWithManagers.aspx.cs" Inherits="DepartmentsWithManagers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style3 {
            width: 225px;
        }
        .auto-style4 {
            width: 91px;
        }
        .auto-style5 {
            width: 91px;
            height: 30px;
        }
        .auto-style6 {
            width: 225px;
            height: 30px;
        }
        .auto-style7 {
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td colspan="3">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="Department ID">
                            <ItemTemplate>
                                <asp:Label ID="Label_Dept_Id" runat="server" Text='<%# Bind("Dept_Id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Department Name">
                            <ItemTemplate>
                                <asp:Label ID="Label_Dept_Name" runat="server" Text='<%# Bind("Dept_Name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Manager Name">
                            <ItemTemplate>
                                <asp:Label ID="Label_Mgr_Id" runat="server" Text='<%# Bind("Ins_Name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowSelectButton="True" />
                    </Columns>
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
            </td>
        </tr>
        <tr>
            <td colspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">Select By ID </td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox_SelectById" runat="server" Width="200px" ValidationGroup="SelectById"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox_SelectById" Display="Dynamic" ErrorMessage="*" ValidationGroup="SelectById" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:Button ID="Button_SelectById" runat="server" Text="Select By ID " Width="100px" OnClick="Button_SelectById_Click" ValidationGroup="SelectById" />
            </td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style6"></td>
            <td class="auto-style7">
                <asp:Button ID="Button_SelectAll" runat="server" Text="Select All" Width="100px" OnClick="Button_SelectAll_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

