<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="InstructorSalary.aspx.cs" Inherits="InstructorSalary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style2 {
            width: 93px;
        }
        .auto-style3 {
            width: 231px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td colspan="3">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="418px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:TemplateField HeaderText="ID ">
                            <ItemTemplate>
                                <asp:Label ID="Label_Ins_Id" runat="server" Text='<%# Bind("Ins_Id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Name">
                            <ItemTemplate>
                                <asp:Label ID="Label_Ins_Name" runat="server" Text='<%# Bind("Ins_Name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Salary">
                            <ItemTemplate>
                                <asp:Label ID="Label_Ins_Salary" runat="server" Text='<%# Bind("Ins_Salary") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowSelectButton="True" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ID&nbsp;&nbsp; :&nbsp;</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox_SelectedId" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox_SelectedId" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Select By ID" Width="100px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Select All" Width="100px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

