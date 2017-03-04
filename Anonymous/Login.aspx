<%@ Page Title="" Language="C#" MasterPageFile="~/AnonymousMaster.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="text-align:center">
        <table style="width: 100%;">
            <tr>
                <td>User Name</td>
                <td>
                    <asp:TextBox ID="NameTxt" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="Name_Validator" runat="server" ControlToValidate="NameTxt" ErrorMessage="Name Is Required" ForeColor="Red" ToolTip="Name Is Required" ValidationGroup="login">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>Password</td>
                <td>
                    <asp:TextBox ID="PassTxt" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="Pass_Validator" runat="server" ControlToValidate="NameTxt" ErrorMessage="Password Is Required" ForeColor="Red" ToolTip="Password Is Required" ValidationGroup="login">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="LoginBtn" runat="server" Text="Login" ValidationGroup="login" Width="100px" OnClick="LoginBtn_Click" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="LoginErrorLabel" runat="server" ForeColor="Red" Text="Wrong user name or password" Visible="False"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

