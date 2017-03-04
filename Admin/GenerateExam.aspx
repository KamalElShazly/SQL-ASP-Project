<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="GenerateExam.aspx.cs" Inherits="GenerateExam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 132px;
        }

        .auto-style5 {
            width: 141px;
        }

        .auto-style7 {
            width: 120px;
        }

        .auto-style8 {
            width: 131px;
        }
    </style>
    
    <script>
        function QuestionValidation(oSrc, args) {
            if ((parseInt(document.querySelector("#ContentPlaceHolder1_MCQNumber").value) + parseInt(document.querySelector("#ContentPlaceHolder1_TFNumber").value)) == 10)
                args.IsValid = true;
            else
                args.IsValid = false;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table aria-orientation="horizontal" style="width: 100%; text-align: center;">
        <tr>
            <td class="auto-style2">Course</td>
            <td class="auto-style8">MCQ Questions</td>
            <td class="auto-style5">T/F Questions</td>
            <td class="auto-style7">Duration</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:DropDownList ID="CourseList" runat="server" DataSourceID="CourseSource" DataTextField="crs_name" DataValueField="crs_id" Width="150px">
                </asp:DropDownList>
            </td>
            <td class="auto-style8">
                <asp:TextBox ID="MCQNumber" runat="server" Width="100px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="MCQ_Required" runat="server" ControlToValidate="MCQNumber" ErrorMessage="Required" ForeColor="Red" ToolTip="Required" ValidationGroup="generate" Display="Dynamic">*</asp:RequiredFieldValidator>
                <asp:RangeValidator ID="MCQRange" runat="server" ControlToValidate="MCQNumber" ErrorMessage="Number Between 0-10" ForeColor="Red" MaximumValue="10" MinimumValue="0" ToolTip="Number Between 0-10" Type="Integer" ValidationGroup="generate" Display="Dynamic">Number Between 0-10</asp:RangeValidator>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="TFNumber" runat="server" Width="100px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="TF_Required" runat="server" ControlToValidate="TFNumber" ErrorMessage="Required" ForeColor="Red" ToolTip="Required" ValidationGroup="generate" Display="Dynamic">*</asp:RequiredFieldValidator>
                <asp:RangeValidator ID="TFRange" runat="server" ControlToValidate="TFNumber" ErrorMessage="Number Between 0-10" ForeColor="Red" MaximumValue="10" MinimumValue="0" ToolTip="Number Between 0-10" Type="Integer" ValidationGroup="generate" Display="Dynamic">Number Between 0-10</asp:RangeValidator>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="DurationTxt" runat="server" Width="100px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="MCQ_Required0" runat="server" ControlToValidate="DurationTxt" ErrorMessage="Required" ForeColor="Red" ToolTip="Required" ValidationGroup="generate" Display="Dynamic">*</asp:RequiredFieldValidator>
                <asp:RangeValidator ID="DurRange" runat="server" ControlToValidate="DurationTxt" ErrorMessage="Number Between 1-6" ForeColor="Red" MaximumValue="10" MinimumValue="0" ToolTip="Number Between 1-6" Type="Integer" ValidationGroup="generate" Display="Dynamic">Number Between 1-6</asp:RangeValidator>
            </td>
            <td>
                <asp:Button ID="GenerateBtn" runat="server" Text="Generate Exam" OnClick="GenerateBtn_Click" ValidationGroup="generate" />
                <asp:CustomValidator ID="QuestionsValidator" runat="server" OnServerValidate="QuestionsValidation" ErrorMessage="Exam must have 10 questions" ForeColor="Red" ToolTip="Exam must have 10 questions" ClientValidationFunction="QuestionValidation" ValidationGroup="generate" Display="Dynamic">Exam must have 10 questions</asp:CustomValidator>
            </td>
        </tr>
        <tr>
            <td colspan="5">
                <asp:ObjectDataSource ID="CourseSource" runat="server" SelectMethod="SelectCourse_Id_Name" TypeName="CourseLayer"></asp:ObjectDataSource>
            </td>
        </tr>
    </table>
    <asp:Table ID="Table1" runat="server">
    </asp:Table>
    <br />
</asp:Content>

