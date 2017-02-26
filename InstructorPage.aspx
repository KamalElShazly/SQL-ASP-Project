<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InstructorPage.aspx.cs" Inherits="Instractor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" Height="159px" Width="543px" DataKeyNames="ins_id">
            <Columns>
                <asp:TemplateField HeaderText="Instractor_id">
                    <EditItemTemplate>
                        <asp:Label ID="insidlbledit" runat="server" Text='<%# Bind("Ins_Id") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="insidlbldes" runat="server" Text='<%# Bind("Ins_Id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Ins_Name">
                    <EditItemTemplate>
                        <asp:TextBox ID="tex_insname" runat="server" Text='<%# Bind("Ins_Name") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tex_insname" ErrorMessage="*" OnDisposed="RequiredFieldValidator1_Disposed"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="insnamelbl" runat="server" Text='<%# Bind("Ins_Name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Ins_Age">
                    <EditItemTemplate>
                        <asp:TextBox ID="insage_tex" runat="server" Text='<%# Bind("Ins_Age") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="insage_tex" ErrorMessage="*"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="insage_tex" ErrorMessage="Enter Number" MaximumValue="150" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="insagelbl" runat="server" Text='<%# Bind("Ins_Age") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Ins_Adress">
                    <EditItemTemplate>
                        <asp:TextBox ID="ins_addrestex" runat="server" Text='<%# Bind("Ins_Address") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ins_addrestex" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="insaddress_lbl" runat="server" Text='<%# Bind("Ins_Address") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Dept_Id">
                    <EditItemTemplate>
                        <asp:DropDownList ID="deptid_drop" runat="server" DataSourceID="DS_Department" DataTextField="Dept_Name" DataValueField="Dept_Id" SelectedValue='<%# Bind("Dept_Id") %>'>
                        </asp:DropDownList>
                        <asp:ObjectDataSource ID="DS_Department" runat="server" SelectMethod="SelectDepartmentIdAndName" TypeName="DepartmentLayer"></asp:ObjectDataSource>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="deptid_lbl" runat="server" Text='<%# Bind("Dept_Name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Ins_Sal">
                    <EditItemTemplate>
                        <asp:TextBox ID="inssaltex" runat="server" Text='<%# Bind("Ins_Salary") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="inssaltex" ErrorMessage="*"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="inssaltex" ErrorMessage="enter number" MaximumValue="10000000" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="inssal_lbl" runat="server" Text='<%# Bind("Ins_Salary") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowEditButton="True" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="SelectAllInstructor" TypeName="InstructorLayer" DeleteMethod="DeleteInstructor" InsertMethod="InsertInstructor" UpdateMethod="UpdateInstructor">
            <DeleteParameters>
                <asp:Parameter Name="Ins_Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Ins_Name" Type="String" />
                <asp:Parameter Name="Ins_Age" Type="Int32" />
                <asp:Parameter Name="Ins_Address" Type="String" />
                <asp:Parameter Name="Dept_Id" Type="Int32" />
                <asp:Parameter Name="Ins_Salary" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Ins_Name" Type="String" />
                <asp:Parameter Name="Ins_Age" Type="Int32" />
                <asp:Parameter Name="Ins_Address" Type="String" />
                <asp:Parameter Name="Dept_Id" Type="Int32" />
                <asp:Parameter Name="Ins_Salary" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        name<asp:TextBox ID="tex_name" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tex_name" ErrorMessage="*"></asp:RequiredFieldValidator>
        <br />
        age<asp:TextBox ID="tex_age" runat="server"></asp:TextBox>
        <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="tex_age" ErrorMessage="enter number" MaximumValue="150" MinimumValue="0" Type="Integer"></asp:RangeValidator>
        <br />
        adress<asp:TextBox ID="tex_adress" runat="server" OnTextChanged="tex_adress_TextChanged"></asp:TextBox>
        <br />
        sal<asp:TextBox ID="tex_sal" runat="server"></asp:TextBox>
        <asp:RangeValidator ID="RangeValidator4" runat="server" ControlToValidate="tex_sal" ErrorMessage="enter number" MaximumValue="1000000" MinimumValue="0" Type="Integer"></asp:RangeValidator>
        <br />
        dept<asp:DropDownList ID="Drop_depart" runat="server" DataSourceID="ObjectDataSource2" DataTextField="Dept_Name" DataValueField="Dept_Id">
        </asp:DropDownList>
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="SelectDepartmentIdAndName" TypeName="DepartmentLayer"></asp:ObjectDataSource>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
    </form>
</body>
</html>
