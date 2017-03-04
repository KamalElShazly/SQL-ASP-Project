<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="CoursePage.aspx.cs" Inherits="CoursePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 442px;
        }
        .auto-style3 {
            width: 94px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%;">
        <tr>
            <td colspan="3">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Crs_Id" DataSourceID="CourseSource" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="ID">
                            <EditItemTemplate>
                                <asp:Label ID="Label_Crs_Id_Edit" runat="server" Text='<%# Bind("Crs_Id") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label_Crs_Id" runat="server" Text='<%# Bind("Crs_Id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Name">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox_Crs_Name_Edit" runat="server" Text='<%# Bind("Crs_Name") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox_Crs_Name_Edit" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="update"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label_Crs_Name" runat="server" Text='<%# Bind("Crs_Name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Duration">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox_Crs_Duration_Edit" runat="server" Text='<%# Bind("Crs_Duration") %>'></asp:TextBox>
                                <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="TextBox_Crs_Duration_Edit" Display="Dynamic" ErrorMessage="Duration between 20 &amp; 80" ForeColor="Red" MaximumValue="80" MinimumValue="20" Type="Integer" ValidationGroup="update"></asp:RangeValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label_Crs_Duration" runat="server" Text='<%# Bind("Crs_Duration") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowEditButton="True" HeaderText="Edit" ValidationGroup="update" />
                        <asp:CommandField ShowDeleteButton="True" HeaderText="Delete" />
                    </Columns>
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
                <asp:ObjectDataSource ID="CourseSource" runat="server" DeleteMethod="DeleteCourse" InsertMethod="InsertCourse" SelectMethod="SelectAllCourses" TypeName="CourseLayer" UpdateMethod="UpdateCourse">
                    <DeleteParameters>
                        <asp:Parameter Name="Crs_Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Crs_Name" Type="String" />
                        <asp:Parameter Name="Crs_Duration" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Crs_Id" Type="Int32" />
                        <asp:Parameter Name="Crs_Name" Type="String" />
                        <asp:Parameter Name="Crs_Duration" Type="Int32" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                Name</td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox_Crs_Name" runat="server" ValidationGroup="g1" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox_Crs_Name" Display="Dynamic" ErrorMessage="*" ValidationGroup="g1" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                Duration</td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox_Crs_Duration" runat="server" ValidationGroup="g1" Width="200px"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox_Crs_Duration" Display="Dynamic" ErrorMessage="Duration between  20 &amp; 80" MaximumValue="80" MinimumValue="20" Type="Integer" ValidationGroup="g1" ForeColor="Red"></asp:RangeValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style2">
                <asp:Button ID="Button_InsertCourse" runat="server" OnClick="Button_InsertCourse_Click" Text="Insert" ValidationGroup="g1" Width="100px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        </table>
</asp:Content>

