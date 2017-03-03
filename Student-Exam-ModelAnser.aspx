<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="Student-Exam-ModelAnser.aspx.cs" Inherits="Student_Exam_ModelAnser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="St_Id" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:TemplateField HeaderText="Student-ID">
                            <ItemTemplate>
                                <asp:Label ID="stidlbl" runat="server" Text='<%# Bind("St_Id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Student-Name">
                            <ItemTemplate>
                                <asp:Label ID="stname_lbl" runat="server" Text='<%# Bind("St_Name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField HeaderText="Select" ShowSelectButton="True" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <EmptyDataTemplate>
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </EmptyDataTemplate>
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
            <td colspan="2">
                <br />
                <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="SelectStudentExamss" TypeName="InstructorLayer">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="GridView2" DefaultValue="St_Id" Name="St_Id" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="SelectStudentsIdAndName" TypeName="StudentLayer"></asp:ObjectDataSource>
                <asp:GridView ID="GridView55" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="Ex_Id" DataSourceID="ObjectDataSource2">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:TemplateField HeaderText="Exam-ID">
                            <ItemTemplate>
                                <asp:Label ID="lblexam" runat="server" Text='<%# Bind("Ex_Id") %>' EnableTheming="True"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Exam-Duration">
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Ex_Duration") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Exam-Grade">
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("Ex_Grade") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Course-Name">
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("Crs_Name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField HeaderText="Select" ShowSelectButton="True" />
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
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <br />
    <asp:GridView ID="GridView59" runat="server" AllowPaging="True" CellPadding="4" DataSourceID="ObjectDataSource3" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataKeyNames="Q_Id">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:TemplateField HeaderText="Question">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Q_Body") %>' TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="Question_Validator" runat="server" ControlToValidate="TextBox1" ErrorMessage="Question Is Required" ForeColor="Red" ToolTip="Question Is Required" ValidationGroup="update">*</asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label12" runat="server" Text='<%# Bind("Q_Body") %>'></asp:Label>
                </ItemTemplate>
                <ControlStyle Width="150px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Type">
                <EditItemTemplate>
                    <asp:Label ID="Label13" runat="server" Text='<%# Bind("Q_Type") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label14" runat="server" Text='<%# Bind("Q_Type") %>'></asp:Label>
                </ItemTemplate>
                <ControlStyle Width="20px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Choice A">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Answer1") %>' TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ChoiceA_Validator" runat="server" ControlToValidate="TextBox4" ErrorMessage="Choice Is Required" ForeColor="Red" ToolTip="Choice Is Required" ValidationGroup="update">*</asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("Answer1") %>'></asp:Label>
                </ItemTemplate>
                <ControlStyle Width="100px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Choice B">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Answer2") %>' TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ChoiceB_Validator" runat="server" ControlToValidate="TextBox5" ErrorMessage="Choice Is Required" ForeColor="Red" ToolTip="Choice Is Required" ValidationGroup="update">*</asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("Answer2") %>'></asp:Label>
                </ItemTemplate>
                <ControlStyle Width="100px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Choice C">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Answer3") %>' TextMode="MultiLine" Visible='<%# DataBinder.Eval(Container.DataItem,"Q_Type").ToString()=="MCQ" %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ChoiceC_Validator" runat="server" ControlToValidate="TextBox6" ErrorMessage="Choice Is Required" ForeColor="Red" ToolTip="Choice Is Required" ValidationGroup="update" Enabled='<%# DataBinder.Eval(Container.DataItem,"Q_Type").ToString()=="MCQ" %>'>*</asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("Answer3") %>'></asp:Label>
                </ItemTemplate>
                <ControlStyle Width="100px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Choice D">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Answer4") %>' TextMode="MultiLine" Visible='<%# DataBinder.Eval(Container.DataItem,"Q_Type").ToString()=="MCQ" %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ChoiceD_Validator" runat="server" ControlToValidate="TextBox7" ErrorMessage="Choice Is Required" ForeColor="Red" ToolTip="Choice Is Required" ValidationGroup="update" Enabled='<%# DataBinder.Eval(Container.DataItem,"Q_Type").ToString()=="MCQ" %>'>*</asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("Answer4") %>'></asp:Label>
                </ItemTemplate>
                <ControlStyle Width="100px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Correct Answer">
                <EditItemTemplate>
                    <asp:Label ID="Label10" runat="server" Text='<%# Bind("Q_Answer") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label16" runat="server" Text='<%# Bind("Q_Answer") %>'></asp:Label>
                </ItemTemplate>
                <ControlStyle Width="10px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Student Answer">
                <ItemTemplate>
                    <asp:Label ID="stanslbl" runat="server" Text='<%# Bind("St_Answer") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Grade">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Q_Grade") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="Grade_Validator" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Grade Is Required" ForeColor="Red" ToolTip="Grade Is Required" ValidationGroup="update">*</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="GradeRange" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Grade Between 1-10" ForeColor="Red" MaximumValue="10" MinimumValue="1" ToolTip="Grade Between 1-10" Type="Integer" ValidationGroup="update">Grade Between 1-10</asp:RangeValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label15" runat="server" Text='<%# Bind("Q_Grade") %>'></asp:Label>
                </ItemTemplate>
                <ControlStyle Width="10px" />
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
                <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" SelectMethod="SelectStudentExamAndAnser" TypeName="InstructorLayer">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="GridView2" Name="St_Id" PropertyName="SelectedValue" Type="Int32" />
                        <asp:ControlParameter ControlID="GridView55" Name="Ex_Id" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

