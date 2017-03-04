<%@ Page Title="" Language="C#" MasterPageFile="~/AnonymousMaster.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="Anonymous_ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 172px;
        }
        .auto-style2 {
            width: 172px;
            height: 20px;
        }
        .auto-style3 {
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style2">User-Name</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ValidationGroup="v"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style1">Old-Password</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ValidationGroup="v"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">New-Password</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*" ValidationGroup="v"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Re-Type Password</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="*" ValidationGroup="v"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox4" ErrorMessage="New-Password do not match" ValidationGroup="v"></asp:CompareValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:Button ID="Insert_Bt" runat="server" OnClick="Insert_Bt_Click" Text="Submit" ValidationGroup="v" Width="127px" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

