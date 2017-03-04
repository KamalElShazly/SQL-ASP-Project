﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 131px;
        }
        .auto-style2 {
            width: 131px;
            height: 29px;
        }
        .auto-style3 {
            height: 29px;
        }
        .auto-style4 {
            width: 131px;
            height: 20px;
        }
        .auto-style5 {
            height: 20px;
        }
        .auto-style6 {
            width: 131px;
            height: 26px;
        }
        .auto-style7 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td colspan="2" style="font-size: xx-large; font-weight: bold; font-style: normal; color: #008000">&nbsp; Registeration&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;&nbsp; User Name :&nbsp;</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox_UserName" runat="server" Width="200px" ValidationGroup="register"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox_UserName" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="register"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;&nbsp; Password&nbsp;&nbsp; :&nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox_Password" runat="server" TextMode="Password" Width="200px" ValidationGroup="register"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox_Password" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="register"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td class="auto-style1">Confirm Password :&nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox_ConfirmPass" runat="server" TextMode="Password" Width="200px" ValidationGroup="register"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox_ConfirmPass" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="register"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox_Password" ControlToValidate="TextBox_ConfirmPass" Display="Dynamic" ErrorMessage="Password Must Match" ForeColor="Red" ValidationGroup="register"></asp:CompareValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;&nbsp;&nbsp; Role :&nbsp;</td>
            <td>
                <asp:DropDownList ID="DropDownList_Role" runat="server" AutoPostBack="True" Width="200px" OnSelectedIndexChanged="DropDownList_Role_SelectedIndexChanged" ValidationGroup="register">
                    <asp:ListItem>Student</asp:ListItem>
                    <asp:ListItem>Instructor</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;&nbsp; Choose User&nbsp;:</td>
            <td class="auto-style7">
                <asp:DropDownList ID="DropDownList_Names" runat="server" Width="200px" ValidationGroup="register">
                </asp:DropDownList>
            </td>
            <td class="auto-style7"></td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Submit" Width="100px" OnClick="Button1_Click" ValidationGroup="register" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

