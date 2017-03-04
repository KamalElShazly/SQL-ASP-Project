<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="QuestionPage.aspx.cs" Inherits="QuestionPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 101px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td colspan="2">
    <asp:ObjectDataSource ID="QuestionSource" runat="server" SelectMethod="SelectAllQuestions" TypeName="QuestionLayer" DeleteMethod="DeleteQuestion" InsertMethod="InsertQuestion" UpdateMethod="UpdateQuestion">
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
                <asp:ObjectDataSource ID="CourseSource" runat="server" SelectMethod="SelectCourse_Id_Name" TypeName="CourseLayer"></asp:ObjectDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" CellPadding="4" DataSourceID="QuestionSource" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataKeyNames="Q_Id">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField HeaderText="ID">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Q_Id") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Q_Id") %>'></asp:Label>
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
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Q_Type") %>'></asp:Label>
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
                    <asp:Label ID="Label10" runat="server" Text='<%# Bind("Q_Answer") %>'></asp:Label>
                </ItemTemplate>
                <ControlStyle Width="10px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Course">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="CourseSource" DataTextField="crs_name" DataValueField="crs_id" SelectedValue='<%# Bind("crs_id") %>'>
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("crs_name") %>'></asp:Label>
                </ItemTemplate>
                <ControlStyle Width="70px" />
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
            <asp:CommandField HeaderText="Edit" ShowEditButton="True" ValidationGroup="update" />
            <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
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
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Question</td>
            <td>
                <asp:TextBox ID="QuestionTxt" runat="server" TextMode="MultiLine" Width="400px" ValidationGroup="insert"></asp:TextBox>
                <asp:RequiredFieldValidator ID="Question_Validator" runat="server" ControlToValidate="QuestionTxt" ErrorMessage="Question Is Required" ForeColor="Red" ToolTip="Question Is Required" ValidationGroup="insert">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Type</td>
            <td>
                <asp:DropDownList ID="TypeList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="TypeList_SelectedIndexChanged" Width="200px" ValidationGroup="insert">
                    <asp:ListItem>MCQ</asp:ListItem>
                    <asp:ListItem>T/F</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Grade</td>
            <td>
                <asp:TextBox ID="GradeTxt" runat="server" Width="200px" ValidationGroup="insert"></asp:TextBox>
                <asp:RequiredFieldValidator ID="Grade_Validator" runat="server" ControlToValidate="GradeTxt" ErrorMessage="Grade Is Required" ForeColor="Red" ToolTip="Grade Is Required" ValidationGroup="insert">*</asp:RequiredFieldValidator>
                <asp:RangeValidator ID="GradeRange" runat="server" ControlToValidate="GradeTxt" ErrorMessage="Grade Between 1-10" ForeColor="Red" MaximumValue="10" MinimumValue="1" ToolTip="Grade Between 1-10" Type="Integer" ValidationGroup="insert">Grade Between 1-10</asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Correct Answer</td>
            <td>
                <asp:TextBox ID="CorrectTxt" runat="server" TextMode="MultiLine" Width="400px" ValidationGroup="insert"></asp:TextBox>
                <asp:RequiredFieldValidator ID="CAnswer_Validator" runat="server" ControlToValidate="CorrectTxt" ErrorMessage="Answer Is Required" ForeColor="Red" ToolTip="Answer Is Required" ValidationGroup="insert">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Answer a,b,c,d" ForeColor="Red" ToolTip="Answer a,b,c,d" ValidationExpression="^[a-d]{1}$" ControlToValidate="CorrectTxt" ValidationGroup="insert">Answer a,b,c,d</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Course</td>
            <td>
                <asp:DropDownList ID="CourseList" runat="server" DataSourceID="CourseSource" DataTextField="crs_name" DataValueField="crs_id" Width="200px" ValidationGroup="insert">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Choice A</td>
            <td>
                <asp:TextBox ID="ChoiceATxt" runat="server" TextMode="MultiLine" Width="400px" ValidationGroup="insert"></asp:TextBox>
                <asp:RequiredFieldValidator ID="ChoiceA_Validator" runat="server" ControlToValidate="ChoiceATxt" ErrorMessage="Choice Is Required" ForeColor="Red" ToolTip="Choice Is Required" ValidationGroup="insert">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Choice B</td>
            <td>
                <asp:TextBox ID="ChoiceBTxt" runat="server" TextMode="MultiLine" Width="400px" ValidationGroup="insert"></asp:TextBox>
                <asp:RequiredFieldValidator ID="ChoiceB_Validator" runat="server" ControlToValidate="ChoiceBTxt" ErrorMessage="Choice Is Required" ForeColor="Red" ToolTip="Choice Is Required" ValidationGroup="insert">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="ChoiceC_Label" runat="server" Text="Choice C"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="ChoiceCTxt" runat="server" TextMode="MultiLine" Width="400px" ValidationGroup="insert"></asp:TextBox>
                <asp:RequiredFieldValidator ID="ChoiceC_Validator" runat="server" ControlToValidate="ChoiceCTxt" ErrorMessage="Choice Is Required" ForeColor="Red" ToolTip="Choice Is Required" ValidationGroup="insert">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="ChoiceD_Label" runat="server" Text="Choice D"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="ChoiceDTxt" runat="server" TextMode="MultiLine" Width="400px" ValidationGroup="insert"></asp:TextBox>
                <asp:RequiredFieldValidator ID="ChoiceD_Validator" runat="server" ControlToValidate="ChoiceDTxt" ErrorMessage="Choice Is Required" ForeColor="Red" ToolTip="Choice Is Required" ValidationGroup="insert">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Button ID="InsertBtn" runat="server" OnClick="InsertBtn_Click" Text="Insert" Width="100px" ValidationGroup="insert" />
            </td>
        </tr>
    </table>
</asp:Content>

