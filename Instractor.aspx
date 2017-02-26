<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Instractor.aspx.cs" Inherits="Instractor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1">
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
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="insage_tex" ErrorMessage="Enter Number" MaximumValue="0" MinimumValue="150" Type="Integer"></asp:RangeValidator>
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
                        <asp:DropDownList ID="deptid_drop" runat="server" SelectedIndex='<%# Bind("Dept_id") %>'>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="deptid_lbl" runat="server" Text='<%# Bind("Dept_Id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Ins_Sal">
                    <EditItemTemplate>
                        <asp:TextBox ID="inssaltex" runat="server" Text='<%# Bind("Ins_Salary") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="inssaltex" ErrorMessage="*"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="inssaltex" ErrorMessage="enter number" MaximumValue="0" MinimumValue="10000000" Type="Integer"></asp:RangeValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="inssal_lbl" runat="server" Text='<%# Bind("Ins_Salary") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowEditButton="True" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="SelectAllStudents" TypeName="Instractor"></asp:ObjectDataSource>
    </form>
</body>
</html>
