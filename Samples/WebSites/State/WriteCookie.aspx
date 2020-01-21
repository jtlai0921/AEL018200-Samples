<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WriteCookie.aspx.cs" Inherits="WriteCookie" %>

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
        <br />
        輸入地址：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="寫入Cookie" />
    
    </div>
    </form>
</body>
</html>
