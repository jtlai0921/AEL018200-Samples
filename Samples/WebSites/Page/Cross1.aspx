<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cross1.aspx.cs" Inherits="Cross1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        輸入本金 (例如10000)： 
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        輸入年利率 (例如0.05)：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" PostBackUrl="~/Cross2.aspx" Text="開始計算" />
    
    </div>
    </form>
</body>
</html>
