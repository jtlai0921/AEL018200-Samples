<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PostBack.aspx.cs" Inherits="PostBack" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Panel ID="Panel1" runat="server" Width="900px">
            輸入本金 (例如10000)： 
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            輸入年利率 (例如0.05)：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="ShowTotal" Text="開始計算" />
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" Width="900px">
            一年的本利和為<asp:Label ID="Label1" runat="server"></asp:Label>
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
