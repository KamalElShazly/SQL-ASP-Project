<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="DepartmentPage.aspx.cs" Inherits="DepartmentPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            height: 23px;
        }
        .auto-style7 {
            height: 275px;
        }
        .auto-style8 {
            height: 23px;
            width: 15px;
        }
        .auto-style9 {
            width: 15px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style7" colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="dept_id" DataSourceID="DepartmentSource" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="ID">
                            <EditItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("dept_id") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("dept_id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Name">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("dept_name") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="Name_Validator" runat="server" ControlToValidate="TextBox1" ErrorMessage="Name Is Required" ForeColor="Red" ToolTip="Name Is Required" ValidationGroup="update">*</asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("dept_name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Manager">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="InstructorSource" DataTextField="Ins_Name" DataValueField="Ins_Id" SelectedValue='<%# Bind("Mgr_Id") %>' AppendDataBoundItems="True">
                                    <asp:ListItem Value=""></asp:ListItem>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Ins_Name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowEditButton="True" ValidationGroup="update" />
                        <asp:CommandField ShowDeleteButton="True" />
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
                <asp:ObjectDataSource ID="InstructorSource" runat="server" SelectMethod="SelectInstructorIdAndName" TypeName="InstructorLayer"></asp:ObjectDataSource>
                <asp:ObjectDataSource ID="DepartmentSource" runat="server" DeleteMethod="DeleteDepartment" InsertMethod="InsertDepartment" SelectMethod="SelectAllDepartments" TypeName="DepartmentLayer" UpdateMethod="UpdateDepartment">
                    <DeleteParameters>
                        <asp:Parameter Name="Dept_Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Dept_Name" Type="String" />
                        <asp:Parameter Name="Mgr_Id" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Dept_Id" Type="Int32" />
                        <asp:Parameter Name="Dept_Name" Type="String" />
                        <asp:Parameter Name="Mgr_Id" Type="Int32" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Name</td>
            <td class="auto-style6">
                <asp:TextBox ID="NameTxt" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="Name_Validator" runat="server" ControlToValidate="NameTxt" ErrorMessage="Name Is Required" ForeColor="Red" ToolTip="Name Is Required" ValidationGroup="insert">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Manager</td>
            <td>
                <asp:DropDownList ID="ManagerList" runat="server" AppendDataBoundItems="True" DataSourceID="InstructorSource" DataTextField="Ins_Name" DataValueField="Ins_Id" Width="200px">
                    <asp:ListItem Value=""></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td>
                <asp:Button ID="InsertBtn" runat="server" OnClick="InsertBtn_Click" Text="Insert" ValidationGroup="insert" Width="100px" />
            </td>
        </tr>
        </table>
</asp:Content>

