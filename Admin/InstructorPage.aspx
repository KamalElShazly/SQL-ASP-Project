<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InstructorPage.aspx.cs" Inherits="Instractor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <br />
        <table style="width:100%;">
            <tr>
                <td colspan="3">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" Height="159px" Width="543px" CellPadding="4" DataKeyNames="ins_id" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:TemplateField HeaderText="ID">
                    <EditItemTemplate>
                        <asp:Label ID="insidlbledit" runat="server" Text='<%# Bind("Ins_Id") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="insidlbldes" runat="server" Text='<%# Bind("Ins_Id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Name">
                    <EditItemTemplate>
                        <asp:TextBox ID="tex_insname" runat="server" Text='<%# Bind("Ins_Name") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Name_Validator" runat="server" ControlToValidate="tex_insname" ErrorMessage="Name Is Required" ForeColor="Red" ToolTip="Name Is Required">*</asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="insnamelbl" runat="server" Text='<%# Bind("Ins_Name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Age">
                    <EditItemTemplate>
                        <asp:TextBox ID="insage_tex" runat="server" Text='<%# Bind("Ins_Age") %>'></asp:TextBox>
                        <asp:RangeValidator ID="AgeRange" runat="server" ControlToValidate="insage_tex" ErrorMessage="Age Between 20 - 60" MaximumValue="60" MinimumValue="20" Type="Integer" ForeColor="Red" ToolTip="Age Between 20 - 60">Age Between 20 - 60</asp:RangeValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="insagelbl" runat="server" Text='<%# Bind("Ins_Age") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Address">
                    <EditItemTemplate>
                        <asp:TextBox ID="ins_addrestex" runat="server" Text='<%# Bind("Ins_Address") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ins_addrestex" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="insaddress_lbl" runat="server" Text='<%# Bind("Ins_Address") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Department">
                    <EditItemTemplate>
                        <asp:DropDownList ID="deptid_drop" runat="server" DataSourceID="ObjectDataSource2" DataTextField="Dept_Name" DataValueField="Dept_Id" SelectedValue='<%# Bind("Dept_Id") %>'>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="deptid_lbl" runat="server" Text='<%# Bind("Dept_Name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Salary">
                    <EditItemTemplate>
                        <asp:TextBox ID="inssaltex" runat="server" Text='<%# Bind("Ins_Salary") %>'></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="inssaltex" ErrorMessage="Salary is Number Only" ForeColor="Red" ToolTip="Salary is Number Only" ValidationExpression="\d">Salary is Number Only</asp:RegularExpressionValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="inssal_lbl" runat="server" Text='<%# Bind("Ins_Salary") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowEditButton="True" HeaderText="Edit" />
                <asp:CommandField ShowDeleteButton="True" HeaderText="Delete" />
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
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="SelectAllInstructor" TypeName="InstructorLayer" DeleteMethod="DeleteInstructor" InsertMethod="InsertInstructor">
            <DeleteParameters>
                <asp:Parameter Name="Ins_Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Ins_Name" Type="String" />
                <asp:Parameter Name="Ins_Age" Type="Int32" />
                <asp:Parameter Name="Ins_Address" Type="String" />
                <asp:Parameter Name="Dept_Id" Type="Int32" />
                <asp:Parameter Name="Ins_Salary" Type="String" />
            </InsertParameters>
                    </asp:ObjectDataSource>
                    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="SelectDepartmentIdAndName" TypeName="DepartmentLayer"></asp:ObjectDataSource>
                </td>
            </tr>
            <tr>
                <td>Name</td>
                <td><asp:TextBox ID="tex_name" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="Name_Validator0" runat="server" ControlToValidate="tex_name" ErrorMessage="Name Is Required" ForeColor="Red" ToolTip="Name Is Required" ValidationGroup="v">*</asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Age</td>
                <td><asp:TextBox ID="tex_age" runat="server" Width="200px"></asp:TextBox>
                    <asp:RangeValidator ID="AgeRange0" runat="server" ControlToValidate="tex_age" ErrorMessage="Age Between 20 - 60" ForeColor="Red" MaximumValue="60" MinimumValue="20" ToolTip="Age Between 20 - 60" Type="Integer" ValidationGroup="v">Age Between 20 - 60</asp:RangeValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Adress</td>
                <td><asp:TextBox ID="tex_adress" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Salary</td>
                <td><asp:TextBox ID="tex_sal" runat="server" Width="200px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Salary is Number Only" ForeColor="Red" ToolTip="Salary is Number Only" ValidationExpression="\d*.\d*" ControlToValidate="tex_sal">Salary is Number Only</asp:RegularExpressionValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Department</td>
                <td><asp:DropDownList ID="Drop_depart" runat="server" DataSourceID="ObjectDataSource2" DataTextField="Dept_Name" DataValueField="Dept_Id" Width="200px">
        </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Insert" ValidationGroup="v" Width="100px" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
