<%@ Page Language="C#" AutoEventWireup="true" CodeFile="prac6.aspx.cs" Inherits="prac6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        輸入姓名：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="None" ErrorMessage="姓名不可空白"></asp:RequiredFieldValidator>
        <br />
        輸入分數：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox2" Display="None" ErrorMessage="分數必須介於0 ~ 100" MaximumValue="100" MinimumValue="0"></asp:RangeValidator>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="確定" />
        <br />
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" HeaderText="錯誤警告！" ShowMessageBox="True" />
    
    </div>
    </form>
</body>
</html>
