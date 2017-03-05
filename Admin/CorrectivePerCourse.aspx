<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="CorrectivePerCourse.aspx.cs" Inherits="CorrectivePerCourse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            margin-left: 153px;
        }
        .auto-style3 {
            width: 146px;
        }
        .auto-style4 {
            width: 146px;
            height: 23px;
        }
        .auto-style5 {
            height: 23px;
        }
        .auto-style6 {
            height: 52px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr style="color: #008000">
            <td class="auto-style6" colspan="2" style="color: #008000; font-style: normal; font-size: x-large; font-weight: bold">&nbsp;</td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp; Course Name:&nbsp;</td>
            <td>
                <br />
                <asp:DropDownList ID="DropDownList_Crs_Name" runat="server" AppendDataBoundItems="True" AutoPostBack="True" CssClass="auto-style2" DataSourceID="CourseSource" DataTextField="Crs_Name" DataValueField="Crs_Id" Width="200px">
                    <asp:ListItem Value="0">Choose Course</asp:ListItem>
                </asp:DropDownList>
                <asp:ObjectDataSource ID="CourseSource" runat="server" SelectMethod="SelectCourse_Id_Name" TypeName="CourseLayer"></asp:ObjectDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style5">
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" DataSourceID="StudentSource" ForeColor="#333333" GridLines="None" Width="480px">
                    <AlternatingRowStyle BackColor="White" />
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
                <asp:ObjectDataSource ID="StudentSource" runat="server" SelectMethod="Corrective_Per_Course" TypeName="CourseLayer">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList_Crs_Name" Name="Crs_Id" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

