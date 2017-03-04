<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="TopicInsert.aspx.cs" Inherits="TopicInsert" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 154px;
        }
        .auto-style3 {
            width: 154px;
            height: 21px;
        }
        .auto-style4 {
            height: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style2">Course</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="ObjectDataSource_crs" DataTextField="Crs_Name" DataValueField="Crs_Id" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:ObjectDataSource ID="ObjectDataSource_crs" runat="server" SelectMethod="SelectCourse_Id_Name" TypeName="CourseLayer"></asp:ObjectDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="ObjectDataSource_Topic" ForeColor="#333333" GridLines="None" AllowPaging="True">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="Topic ID">
                            <ItemTemplate>
                                <asp:Label ID="Label_Top_ID" runat="server" Text='<%# Bind("Top_Id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Topic Name">
                            <ItemTemplate>
                                <asp:Label ID="Label_Top_Name" runat="server" Text='<%# Bind("Top_Name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
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
                <asp:ObjectDataSource ID="ObjectDataSource_Topic" runat="server" SelectMethod="SelectTopicByCrsId" TypeName="TopicLayer" InsertMethod="InsertTopic">
                    <InsertParameters>
                        <asp:Parameter Name="Top_Id" Type="Int32" />
                        <asp:Parameter Name="Top_Name" Type="String" />
                        <asp:Parameter Name="Crs_Id" Type="Int32" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="Crs_Id" PropertyName="SelectedValue" Type="Int32" />
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
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Topic Name</td>
            <td>
                <asp:TextBox ID="TextBox_Topic_Name" runat="server" ValidationGroup="Top_Name" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox_Topic_Name" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="Top_Name"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Button ID="Button_Insert" runat="server" Height="26px" OnClick="Button_Insert_Click" Text="Insert" ValidationGroup="Top_Name" Width="100px" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

