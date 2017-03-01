<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="QuestionPerCourse.aspx.cs" Inherits="QuestionPerCourse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            height: 91px;
        }
        .auto-style3 {
            height: 89px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataKeyNames="Crs_Id" DataSourceID="Course_DS" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanging="GridView5_SelectedIndexChanging">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:TemplateField HeaderText="Course-Id">
                            <ItemTemplate>
                                <asp:Label ID="cou_idlbl" runat="server" Text='<%# Bind("Crs_Id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Course-Name">
                            <ItemTemplate>
                                <asp:Label ID="cou_nalbl" runat="server" Text='<%# Bind("Crs_Name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowSelectButton="True" HeaderText="Select" />
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
                <asp:ObjectDataSource ID="Course_DS" runat="server" SelectMethod="SelectCourse_Id_Name" TypeName="CourseLayer"></asp:ObjectDataSource>
    <asp:ObjectDataSource ID="QuestionSource" runat="server" SelectMethod="SelectQuestionsByCourse" TypeName="QuestionLayer" DeleteMethod="DeleteQuestion" InsertMethod="InsertQuestion" UpdateMethod="UpdateQuestion">
        <DeleteParameters>
            <asp:Parameter Name="Q_Id" Type="Int32" />
        </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Q_Body" Type="String" />
                    <asp:Parameter Name="Q_Type" Type="String" />
                    <asp:Parameter Name="Q_Grade" Type="Int32" />
                    <asp:Parameter Name="Q_Answer" Type="String" />
                    <asp:Parameter Name="Crs_Id" Type="Int32" />
                    <asp:Parameter Name="Q_Choice1" Type="String" />
                    <asp:Parameter Name="Q_Choice2" Type="String" />
                    <asp:Parameter Name="Q_Choice3" Type="String" />
                    <asp:Parameter Name="Q_Choice4" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:Parameter Name="Crs_Id" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Q_Id" Type="Int32" />
            <asp:Parameter Name="Q_Body" Type="String" />
            <asp:Parameter Name="Q_Type" Type="String" />
            <asp:Parameter Name="Q_Grade" Type="Int32" />
            <asp:Parameter Name="Q_Answer" Type="String" />
            <asp:Parameter Name="Crs_Id" Type="Int32" />
            <asp:Parameter Name="Answer1" Type="String" />
            <asp:Parameter Name="Answer2" Type="String" />
            <asp:Parameter Name="Answer3" Type="String" />
            <asp:Parameter Name="Answer4" Type="String" />
        </UpdateParameters>
                </asp:ObjectDataSource>
                </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style3">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" CellPadding="4" DataSourceID="QuestionSource" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataKeyNames="Q_Id">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:TemplateField HeaderText="ID">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Q_Id") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label11" runat="server" Text='<%# Bind("Q_Id") %>'></asp:Label>
                </ItemTemplate>
                <ControlStyle Width="30px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Question">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Q_Body") %>' TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="Question_Validator" runat="server" ControlToValidate="TextBox1" ErrorMessage="Question Is Required" ForeColor="Red" ToolTip="Question Is Required" ValidationGroup="update">*</asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Q_Body") %>'></asp:Label>
                </ItemTemplate>
                <ControlStyle Width="150px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Type">
                <EditItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Q_Type") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label12" runat="server" Text='<%# Bind("Q_Type") %>'></asp:Label>
                </ItemTemplate>
                <ControlStyle Width="20px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Grade">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Q_Grade") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="Grade_Validator" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Grade Is Required" ForeColor="Red" ToolTip="Grade Is Required" ValidationGroup="update">*</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="GradeRange" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Grade Between 1-10" ForeColor="Red" MaximumValue="10" MinimumValue="1" ToolTip="Grade Between 1-10" Type="Integer" ValidationGroup="update">Grade Between 1-10</asp:RangeValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Q_Grade") %>'></asp:Label>
                </ItemTemplate>
                <ControlStyle Width="10px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Correct Answer">
                <EditItemTemplate>
                    <asp:Label ID="Label10" runat="server" Text='<%# Bind("Q_Answer") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label13" runat="server" Text='<%# Bind("Q_Answer") %>'></asp:Label>
                </ItemTemplate>
                <ControlStyle Width="10px" />
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
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style2"></td>
            <td class="auto-style2"></td>
        </tr>
    </table>
</asp:Content>

