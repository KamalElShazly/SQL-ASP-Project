<%@ Page Title="" Language="C#" MasterPageFile="~/StudentMaster.master" AutoEventWireup="true" CodeFile="ExamResult.aspx.cs" Inherits="Student_ExamResult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif; font-size: x-large; font-weight: bold; font-style: italic; color: #008000">
        Your Grade =
        <asp:Label ID="Label1" runat="server"></asp:Label>
&nbsp;From
        <asp:Label ID="Label2" runat="server"></asp:Label>
    </p>
</asp:Content>

