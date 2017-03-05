<%@ Page Title="" Language="C#" MasterPageFile="~/AnonymousMaster.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">

        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 198px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="text-align:center">
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                        <asp:View ID="View1" runat="server">
                            <table class="auto-style2">
                                <tr>
                                    <td style="font-family: Arial, Helvetica, sans-serif; font-size: large; font-weight: bold; font-style: oblique">User Name</td>
                                    <td colspan="2">
                                        <asp:TextBox ID="NameTxt" runat="server" Width="200px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="Name_Validator" runat="server" ControlToValidate="NameTxt" ErrorMessage="Name Is Required" ForeColor="Red" ToolTip="Name Is Required" ValidationGroup="login">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="font-family: Arial, Helvetica, sans-serif; font-size: large; font-weight: bold; font-style: oblique">&nbsp;</td>
                                    <td colspan="2">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="font-family: Arial, Helvetica, sans-serif; font-size: large; font-weight: bold; font-style: oblique">Password</td>
                                    <td colspan="2">
                                        <asp:TextBox ID="PassTxt" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="Pass_Validator" runat="server" ControlToValidate="NameTxt" ErrorMessage="Password Is Required" ForeColor="Red" ToolTip="Password Is Required" ValidationGroup="login">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="font-family: Arial, Helvetica, sans-serif; font-size: large; font-weight: bold; font-style: oblique">&nbsp;</td>
                                    <td colspan="2">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>
                                        <asp:Button ID="LoginBtn" runat="server" BackColor="#009900" Font-Bold="True" Font-Size="16pt" Height="40px" OnClick="LoginBtn_Click" Text="Login" ValidationGroup="login" Width="150px" />
                                    </td>
                                    <td>
                                        <asp:Button ID="ForgotPassword" runat="server" BackColor="#009900" Font-Bold="True" Font-Size="12pt" Height="40px" OnClick="ForgotPassword_Click" Text="Forgot Password" Width="150px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td colspan="2">
                                        <asp:Label ID="LoginErrorLabel" runat="server" ForeColor="Red" Text="Wrong user name or password" Visible="False"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </asp:View>
                        <asp:View ID="View2" runat="server">
                            <table style="width:100%;">
                                <tr>
                                    <td colspan="2" style="font-family: Arial, Helvetica, sans-serif; font-size: large; font-weight: bold; font-style: oblique">&nbsp;Please Enter Security Question And Answer</td>
                                </tr>
                                <tr>
                                    <td class="auto-style3" style="font-family: Arial, Helvetica, sans-serif; font-size: large; font-weight: bold; font-style: oblique">Question </td>
                                    <td>
                                        <asp:TextBox ID="QuestionTxt" runat="server" Width="200px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="QuestionTxt" ErrorMessage="*" ForeColor="Red" ValidationGroup="confirm"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style3" style="font-family: Arial, Helvetica, sans-serif; font-size: large; font-weight: bold; font-style: oblique">Answer</td>
                                    <td>
                                        <asp:TextBox ID="AnswerTxt" runat="server" Width="200px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="AnswerTxt" ErrorMessage="*" ForeColor="Red" ValidationGroup="confirm"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style3">&nbsp;</td>
                                    <td>
                                        <asp:Button ID="ConfirmBtn" runat="server" BackColor="#009900" Font-Size="16pt" Height="40px" OnClick="ConfirmBtn_Click" Text="Confirm" Width="150px" Font-Bold="True" ValidationGroup="confirm" />
                                    </td>
                                </tr>
                            </table>
                        </asp:View>
                        <asp:View ID="View3" runat="server">
                            <table class="auto-style2">
                                <tr>
                                    <td style="font-family: Arial, Helvetica, sans-serif; font-size: large; font-weight: bold; font-style: oblique">User Name</td>
                                    <td>
                                        <asp:TextBox ID="NameTxt2" runat="server" Width="200px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="Name_Validator2" runat="server" ControlToValidate="NameTxt2" ErrorMessage="Name Is Required" ForeColor="Red" ToolTip="Name Is Required" ValidationGroup="getpassword">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="font-family: Arial, Helvetica, sans-serif; font-size: large; font-weight: bold; font-style: oblique">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>
                                        <asp:Button ID="GetPassword" runat="server" BackColor="#009900" Font-Bold="True" Font-Size="14pt" Height="40px" OnClick="GetPassword_Click" Text="Get Password" ValidationGroup="getpassword" Width="150px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:Label ID="ForgetPasswordError" runat="server" ForeColor="Red" Text="User name doesn't exist" Visible="False"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </asp:View>
                        <asp:View ID="View4" runat="server">
                            <table style="width: 100%;">
                                <tr>
                                    <td class="auto-style3" style="font-family: Arial, Helvetica, sans-serif; font-size: large; font-weight: bold; font-style: oblique">Question </td>
                                    <td>
                                        <asp:Label ID="QuestionLbl" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style3" style="font-family: Arial, Helvetica, sans-serif; font-size: large; font-weight: bold; font-style: oblique">Answer</td>
                                    <td>
                                        <asp:TextBox ID="AnswerTxt2" runat="server" Width="200px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="AnswerTxt2" ErrorMessage="*" ForeColor="Red" ValidationGroup="submit"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style3">&nbsp;</td>
                                    <td>
                                        <asp:Button ID="SubmitBtn" runat="server" BackColor="#009900" Font-Bold="True" Font-Size="16pt" Height="40px" OnClick="SubmitBtn_Click" Text="Submit" ValidationGroup="submit" Width="150px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style3">&nbsp;</td>
                                    <td>
                                        <asp:Label ID="AnswerError" runat="server" ForeColor="Red" Text="Wrong Answer" Visible="False"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </asp:View>
                        <asp:View ID="View5" runat="server">
                            <table style="width: 100%;">
                                <tr>
                                    <td class="auto-style3" style="font-family: Arial, Helvetica, sans-serif; font-size: large; font-weight: bold; font-style: oblique">Password </td>
                                    <td>
                                        <asp:Label ID="PasswordLbl" runat="server"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </asp:View>
                    </asp:MultiView>
    </div>
</asp:Content>

