<%@ Page Language="C#" AutoEventWireup="true" CodeFile="prac4.aspx.cs" Inherits="prac4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        輸入電子郵件帳號：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="格式錯誤" ForeColor="Red" ValidationExpression=".{1,}@.{3,}"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="確定" />
    
    </div>
    </form>
</body>
</html>
