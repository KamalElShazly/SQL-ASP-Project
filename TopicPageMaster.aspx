<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="TopicPageMaster.aspx.cs" Inherits="TopicPageMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 175px;
        }
        .auto-style5 {
            width: 175px;
            height: 22px;
        }
        .auto-style7 {
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%;">
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Top_Id" DataSourceID="TopicSource" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:TemplateField HeaderText="ID">
                            <EditItemTemplate>
                                <asp:Label ID="Top_id_lbl_edit" runat="server" Text='<%# Bind("Top_Id") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Top_id_lbl" runat="server" Text='<%# Bind("Top_Id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Name">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox_Top_Name" runat="server" Text='<%# Bind("Top_Name") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox_Top_Name" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="update"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Top_name_lbl" runat="server" Text='<%# Bind("Top_Name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Course">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList_Crs" runat="server" DataSourceID="CourseSource" DataTextField="Crs_Name" DataValueField="Crs_Id" SelectedValue='<%# Bind("Crs_Id") %>'>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Crs_lbl" runat="server" Text='<%# Bind("Crs_Name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField HeaderText="Edit" ShowEditButton="True" ValidationGroup="update" />
                        <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
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
                <asp:ObjectDataSource ID="TopicSource" runat="server" DeleteMethod="DeleteTopic" InsertMethod="InsertTopic" SelectMethod="SelectAllTopics" TypeName="TopicLayer" UpdateMethod="UpdateTopic">
                    <DeleteParameters>
                        <asp:Parameter Name="Top_Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Top_Id" Type="Int32" />
                        <asp:Parameter Name="Top_Name" Type="String" />
                        <asp:Parameter Name="Crs_Id" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Top_Id" Type="Int32" />
                        <asp:Parameter Name="Top_Name" Type="String" />
                        <asp:Parameter Name="Crs_Id" Type="Int32" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
                <asp:ObjectDataSource ID="CourseSource" runat="server" SelectMethod="SelectCourse_Id_Name" TypeName="CourseLayer"></asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Topic Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td>
                <asp:TextBox ID="TextBox_Top_Name" runat="server" ValidationGroup="v" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox_Top_Name" ErrorMessage="*" ForeColor="Red" ValidationGroup="v"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Course</td>
            <td class="auto-style7">
                <asp:DropDownList ID="DropDownList_Crs" runat="server" DataSourceID="CourseSource" DataTextField="Crs_Name" DataValueField="Crs_Id" ValidationGroup="v" Width="200px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:Button ID="Button_Insert" runat="server" Height="26px" OnClick="Button_Insert_Click" Text="Insert" ValidationGroup="v" Width="100px" />
            </td>
        </tr>
    </table>
</asp:Content>

