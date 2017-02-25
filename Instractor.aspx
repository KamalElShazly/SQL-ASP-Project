<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Instractor.aspx.cs" Inherits="Instractor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
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
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="insnamelbl" runat="server" Text='<%# Bind("Ins_Name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Ins_Age">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Ins_Age") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="insagelbl" runat="server" Text='<%# Bind("Ins_Age") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Ins_Adress"></asp:TemplateField>
                <asp:TemplateField HeaderText="Dept_Id"></asp:TemplateField>
                <asp:TemplateField HeaderText="Ins_Sal"></asp:TemplateField>
                <asp:CommandField ShowEditButton="True" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
