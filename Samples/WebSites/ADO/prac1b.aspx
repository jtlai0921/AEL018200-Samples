<%@ Page Language="C#" AutoEventWireup="true" CodeFile="prac1b.aspx.cs" Inherits="prac1b" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        輸入學號：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        輸入姓名：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        輸入國文：<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        輸入數學：<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        輸入英文：<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="新增資料" />
    
    </div>
    </form>
</body>
</html>
