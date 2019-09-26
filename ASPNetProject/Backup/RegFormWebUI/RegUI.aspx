<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegUI.aspx.cs" Inherits="RegFormWebUI.RegUI" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 89%;
            border: 2px solid #FF6666;
            height: 1016px;
        }
        .style2
        {
            height: 38px;
            width: 491px;
        }
        .style3
        {
            height: 38px;
            width: 137px;
        }
        .style5
        {
            width: 137px;
            height: 50px;
        }
        .style6
        {
            height: 50px;
            width: 491px;
        }
        .style7
        {
            width: 137px;
            height: 51px;
        }
        .style8
        {
            height: 51px;
            width: 491px;
        }
        .style11
        {
            height: 46px;
            width: 137px;
        }
        .style12
        {
            height: 46px;
            width: 491px;
        }
        .style22
        {
            width: 137px;
            height: 17px;
        }
        .style23
        {
            width: 491px;
            height: 17px;
        }
        .style28
        {
            height: 45px;
            width: 137px;
        }
        .style29
        {
            height: 45px;
            width: 491px;
        }
        .style30
        {
            height: 37px;
            width: 137px;
        }
        .style31
        {
            height: 37px;
            width: 491px;
        }
        .style32
        {
            width: 137px;
            height: 48px;
        }
        .style33
        {
            height: 48px;
            width: 491px;
        }
        .style34
        {
            height: 39px;
            width: 137px;
        }
        .style35
        {
            height: 39px;
            width: 491px;
        }
        .style36
        {
            height: 26px;
            width: 137px;
        }
        .style37
        {
            height: 26px;
            width: 491px;
        }
        .style38
        {
            height: 36px;
            width: 137px;
        }
        .style39
        {
            height: 36px;
            width: 491px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td align="center" class="style3">
                    Name</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="RegID">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:masterConnectionString %>" 
                        SelectCommand="SELECT * FROM [Registration]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td align="center" class="style5">
                    Address</td>
                <td class="style6">
                    <asp:TextBox ID="TextBox2" runat="server" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" class="style7">
                    DOB</td>
                <td class="style8">
                    <asp:TextBox ID="TextBox3" runat="server" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" class="style36">
                    Select Gender</td>
                <td class="style37">
                    <asp:RadioButton ID="rbmale" runat="server" 
                        oncheckedchanged="rbmale_CheckedChanged" Text="Male" GroupName="gender" />
                    <asp:RadioButton ID="rbFemale" runat="server" 
                        oncheckedchanged="F_CheckedChanged" Text="Female" GroupName="gender" />
                </td>
            </tr>
            <tr>
                <td align="center" class="style38">
                    Select Nationality</td>
                <td class="style39">
                    <asp:DropDownList ID="ddlNationality" runat="server" Height="100px" 
                        Width="215px">
                        <asp:ListItem>US</asp:ListItem>
                        <asp:ListItem>UK</asp:ListItem>
                        <asp:ListItem>Japan</asp:ListItem>
                        <asp:ListItem>SL</asp:ListItem>
                        <asp:ListItem>India</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td align="center" class="style5">
                    Select Qualification</td>
                <td class="style6">
                    <asp:ListBox ID="lbQualification" runat="server" Height="49px" 
                        SelectionMode="Multiple" Width="194px">
                        <asp:ListItem>BE</asp:ListItem>
                        <asp:ListItem>BTech</asp:ListItem>
                        <asp:ListItem>MBA</asp:ListItem>
                        <asp:ListItem>MCA</asp:ListItem>
                        <asp:ListItem>MS</asp:ListItem>
                    </asp:ListBox>
                </td>
            </tr>
            <tr>
                <td align="center" class="style11">
                    Select Skillsets</td>
                <td class="style12">
                    <asp:CheckBoxList ID="clbSkills" runat="server" Width="233px">
                        <asp:ListItem>C#</asp:ListItem>
                        <asp:ListItem>SQL</asp:ListItem>
                        <asp:ListItem>Web Technology</asp:ListItem>
                        <asp:ListItem>ADO.net</asp:ListItem>
                        <asp:ListItem>XML</asp:ListItem>
                        <asp:ListItem>ASP.net</asp:ListItem>
                        <asp:ListItem>MVC</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td align="center" class="style34">
                    Select Hobbies</td>
                <td class="style35">
                    <asp:CheckBox ID="cbSwim" runat="server" Text="Swim" />
                    <asp:CheckBox ID="cbRead" runat="server" 
                        oncheckedchanged="cbRead_CheckedChanged" Text="Read" />
                    <asp:CheckBox ID="cbMusic" runat="server" 
                        oncheckedchanged="cbMusic_CheckedChanged" Text="Music" />
                    <asp:CheckBox ID="cbMobile" runat="server" 
                        oncheckedchanged="cbMobile_CheckedChanged" Text="Mobile" />
                    <asp:CheckBox ID="cbCook" runat="server" 
                        oncheckedchanged="cbCook_CheckedChanged" Text="Cook" />
                </td>
            </tr>
            <tr>
                <td align="center" class="style32">
                    DOJ</td>
                <td class="style33">
                    <asp:TextBox ID="TextBox4" runat="server" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" class="style7">
                    Salary</td>
                <td class="style8">
                    <asp:TextBox ID="TextBox5" runat="server" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" class="style28">
                    <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
                        Text="Submit" />
                </td>
                <td class="style29">
                    <asp:Button ID="btnReset" runat="server" Text="Reset" 
                        onclick="btnReset_Click" />
                </td>
            </tr>
            <tr>
                <td align="center" class="style30">
                    <asp:Label ID="lblResult" runat="server" Text="[lblresult]"></asp:Label>
                </td>
                <td class="style31">
                    <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                        BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" ForeColor="#003399" />
                        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <SortedAscendingCellStyle BackColor="#EDF6F6" />
                        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                        <SortedDescendingCellStyle BackColor="#D6DFDF" />
                        <SortedDescendingHeaderStyle BackColor="#002876" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td align="center" class="style34">
                    <asp:Button ID="btnSelectByID" runat="server" CausesValidation="False" 
                        onclick="btnSelectByID_Click" Text="SelectByID" />
                </td>
                <td class="style35">
                    <asp:Button ID="btnUpdate" runat="server" CausesValidation="False" 
                        onclick="btnUpdate_Click" Text="Update" />
                    <asp:Button ID="btnDelete" runat="server" onclick="btnDelete_Click" 
                        Text="Delete" />
                </td>
            </tr>
            <tr>
                <td align="center" class="style22">
                </td>
                <td class="style23">
                    <asp:Button ID="btnJoins" runat="server" onclick="btnJoins_Click" 
                        Text="Joins" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
