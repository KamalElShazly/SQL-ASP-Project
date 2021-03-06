﻿<%@ Page Title="" Language="C#" MasterPageFile="~/InstructorMaster.master" AutoEventWireup="true" CodeFile="InstructorUpdateInfo.aspx.cs" Inherits="InstructorUpdateInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td colspan="3">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" Height="159px" Width="543px" CellPadding="4" DataKeyNames="ins_id" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="ID">
                            <EditItemTemplate>
                                <asp:Label ID="insidlbledit" runat="server" Text='<%# Bind("Ins_Id") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="insidlbldes" runat="server" Text='<%# Bind("Ins_Id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Name">
                            <EditItemTemplate>
                                <asp:TextBox ID="tex_insname" runat="server" Text='<%# Bind("Ins_Name") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="Name_Validator" runat="server" ControlToValidate="tex_insname" ErrorMessage="Name Is Required" ForeColor="Red" ToolTip="Name Is Required">*</asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="insnamelbl" runat="server" Text='<%# Bind("Ins_Name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Age">
                            <EditItemTemplate>
                                <asp:TextBox ID="insage_tex" runat="server" Text='<%# Bind("Ins_Age") %>'></asp:TextBox>
                                <asp:RangeValidator ID="AgeRange" runat="server" ControlToValidate="insage_tex" ErrorMessage="Age Between 20 - 60" MaximumValue="60" MinimumValue="20" Type="Integer" ForeColor="Red" ToolTip="Age Between 20 - 60">Age Between 20 - 60</asp:RangeValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="insagelbl" runat="server" Text='<%# Bind("Ins_Age") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Address">
                            <EditItemTemplate>
                                <asp:TextBox ID="ins_addrestex" runat="server" Text='<%# Bind("Ins_Address") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="insaddress_lbl" runat="server" Text='<%# Bind("Ins_Address") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Department">
                            <EditItemTemplate>
                                <asp:DropDownList ID="deptid_drop" runat="server" DataSourceID="ObjectDataSource2" DataTextField="Dept_Name" DataValueField="Dept_Id" Enabled="False" SelectedValue='<%# Bind("Dept_Id") %>'>
                                </asp:DropDownList>
                                <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="SelectDepartmentIdAndName" TypeName="DepartmentLayer"></asp:ObjectDataSource>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("dept_name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Salary">
                            <EditItemTemplate>
                                <asp:Label ID="inssal_lbl" runat="server" Text='<%# Bind("Ins_Salary") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="inssal_lbl" runat="server" Text='<%# Bind("Ins_Salary") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowEditButton="True" HeaderText="Edit" />
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
            </td>
        </tr>
        <tr>
            <td>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="SelectInsructorById" TypeName="InstructorLayer" UpdateMethod="UpdateInstructor">
                    <SelectParameters>
                        <asp:SessionParameter Name="id" SessionField="ID" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Ins_Id" Type="Int32" />
                        <asp:Parameter Name="Ins_Name" Type="String" />
                        <asp:Parameter Name="Ins_Age" Type="Int32" />
                        <asp:Parameter Name="Ins_Address" Type="String" />
                        <asp:Parameter Name="Dept_Id" Type="Int32" />
                        <asp:Parameter Name="Ins_Salary" Type="Decimal" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

