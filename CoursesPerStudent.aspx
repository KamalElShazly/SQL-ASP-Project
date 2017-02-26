<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="CoursesPerStudent.aspx.cs" Inherits="CoursesPerStudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 313px;
        }
        .auto-style3 {
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%;">
        <tr>
            <td class="auto-style2">
                Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList_St_Name" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource_Student" DataTextField="St_Name" DataValueField="St_Id" OnSelectedIndexChanged="DropDownList_St_Name_SelectedIndexChanged" Width="200px">
                </asp:DropDownList>
                <asp:ObjectDataSource ID="ObjectDataSource_Student" runat="server" SelectMethod="SelectStudentsIdAndName" TypeName="StudentLayer"></asp:ObjectDataSource>
            </td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="ObjectDataSource_Course" ForeColor="#333333" GridLines="None" CssClass="auto-style3" Width="343px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:TemplateField HeaderText="Course ID">
                            <ItemTemplate>
                                <asp:Label ID="Label_crsid" runat="server" Text='<%# Bind("Crs_Id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Course Name">
                            <ItemTemplate>
                                <asp:Label ID="Label_CrsName" runat="server" Text='<%# Bind("Crs_Name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Course Duration">
                            <ItemTemplate>
                                <asp:Label ID="Label_CrsDur" runat="server" Text='<%# Bind("Crs_Duration") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
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
                </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:ObjectDataSource ID="ObjectDataSource_Course" runat="server" SelectMethod="SelectCoursesPerStudent" TypeName="CourseLayer">
                    <SelectParameters>
                        <asp:Parameter Name="St_Id" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

