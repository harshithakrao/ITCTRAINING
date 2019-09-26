<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ValidationExample.aspx.cs" Inherits="RegFormWebUI.ValidationExample" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            background-color: #66FF33;
        }
        .style6
        {
            width: 190px;
            height: 37px;
        }
        .style8
        {
            width: 69px;
            height: 37px;
        }
        .style9
        {
            width: 28px;
            height: 37px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style8">
                    Enter Name</td>
                <td class="style9">
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
                <td class="style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtName" Display="None" ErrorMessage="name can not be blank"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    Enter Age</td>
                <td class="style9">
                    <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
                </td>
                <td class="style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtAge" Display="None" ErrorMessage="Age has to be entered"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <asp:RangeValidator ID="RangeValidator1" runat="server" 
                        ControlToValidate="txtAge" Display="None" 
                        ErrorMessage="Age should be between 18 and 60" MaximumValue="60" 
                        MinimumValue="18" Type="Integer" Width="250px"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    Enter Password</td>
                <td class="style9">
                    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                </td>
                <td class="style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtPassword" Display="None" 
                        ErrorMessage="Password can not be empty"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    Retype Password</td>
                <td class="style9">
                    <asp:TextBox ID="txtRetypeP" runat="server"></asp:TextBox>
                </td>
                <td class="style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtRetypeP" Display="None" 
                        ErrorMessage="Enter value for retype password"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="txtPassword" ControlToValidate="txtRetypeP" Display="None" 
                        ErrorMessage="Password should be same" Width="250px"></asp:CompareValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style8">
                    Enter Email</td>
                <td class="style9">
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </td>
                <td class="style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="txtEmail" Display="None" ErrorMessage="Enter Email"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtEmail" Display="None" 
                        ErrorMessage="Email Format Incorrect" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    Select Country</td>
                <td class="style9">
                    <asp:ListBox ID="lbContry" runat="server" Height="25px" Width="126px">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>India</asp:ListItem>
                        <asp:ListItem>US</asp:ListItem>
                        <asp:ListItem>UK</asp:ListItem>
                    </asp:ListBox>
                </td>
                <td class="style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="lbContry" Display="None" ErrorMessage="Select Country" 
                        InitialValue="Select"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
    
    </div>
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
    <asp:Button ID="btnReset" runat="server" CausesValidation="False" 
        Text="Reset" />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
        ShowMessageBox="True" />
    </form>
</body>
</html>
