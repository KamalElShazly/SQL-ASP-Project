<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="StudentPage.aspx.cs" Inherits="StudentPage" %>

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
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="st_id" DataSourceID="StudentSource" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="ID">
                            <EditItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("st_id") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("st_id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Name">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("st_name") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="Name_Validator" runat="server" ControlToValidate="TextBox1" ErrorMessage="Name Is Required" ForeColor="Red" ToolTip="Name Is Required" ValidationGroup="update">*</asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("st_name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Age">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("st_age") %>'></asp:TextBox>
                                <asp:RangeValidator ID="AgeRange" runat="server" ControlToValidate="TextBox2" ErrorMessage="Age Between 20 - 40" ForeColor="Red" MaximumValue="40" MinimumValue="20" ToolTip="Age Between 20-40" Type="Integer" ValidationGroup="update">Age Between 20-40</asp:RangeValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("st_age") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Address">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("st_address") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("st_address") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Department">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="DepartmentSource" DataTextField="dept_name" DataValueField="dept_id" SelectedValue='<%# Bind("dept_id") %>'>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("dept_name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowEditButton="True" ValidationGroup="update" HeaderText="Update" />
                        <asp:CommandField ShowDeleteButton="True" HeaderText="Delete" />
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
                <asp:ObjectDataSource ID="DepartmentSource" runat="server" SelectMethod="SelectDepartmentIdAndName" TypeName="DepartmentLayer"></asp:ObjectDataSource>
                <asp:ObjectDataSource ID="StudentSource" runat="server" DeleteMethod="DeleteStudent" InsertMethod="InsertStudent" SelectMethod="SelectAllStudents" TypeName="StudentLayer" UpdateMethod="UpdateStudent">
                    <DeleteParameters>
                        <asp:Parameter Name="St_Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="St_Name" Type="String" />
                        <asp:Parameter Name="St_Age" Type="Int32" />
                        <asp:Parameter Name="St_Address" Type="String" />
                        <asp:Parameter Name="Dept_Id" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="St_Id" Type="Int32" />
                        <asp:Parameter Name="St_Name" Type="String" />
                        <asp:Parameter Name="St_Age" Type="Int32" />
                        <asp:Parameter Name="St_Address" Type="String" />
                        <asp:Parameter Name="Dept_Id" Type="Int32" />
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
            <td class="auto-style9">Age</td>
            <td>
                <asp:TextBox ID="AgeTxt" runat="server" Width="200px"></asp:TextBox>
                <asp:RangeValidator ID="AgeRange" runat="server" ControlToValidate="AgeTxt" ErrorMessage="Age Between 20 - 40" ForeColor="Red" MaximumValue="40" MinimumValue="20" ToolTip="Age Between 20-40" Type="Integer" ValidationGroup="insert">Age Between 20-40</asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Address</td>
            <td>
                <asp:TextBox ID="AddressTxt" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Department</td>
            <td>
                <asp:DropDownList ID="DepartmentList" runat="server" DataSourceID="DepartmentSource" DataTextField="dept_name" DataValueField="dept_id" Width="200px">
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

