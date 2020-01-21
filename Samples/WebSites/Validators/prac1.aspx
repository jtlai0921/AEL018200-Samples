<%@ Page Language="C#" AutoEventWireup="true" CodeFile="prac1.aspx.cs" Inherits="prac1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        帳號：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="請輸入帳號" ForeColor="Red" ValidationGroup="VG1"></asp:RequiredFieldValidator>
        <br />
        密碼：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="請輸入密碼" ForeColor="Red" ValidationGroup="VG1"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="確定" ValidationGroup="VG1" />
    
    </div>
    </form>
</body>
</html>
