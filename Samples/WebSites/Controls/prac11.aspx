<%@ Page Language="C#" AutoEventWireup="true" CodeFile="prac11.aspx.cs" Inherits="prac11" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="數量："></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Width="105px"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" Text="價格："></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" Width="105px"></asp:TextBox>
        <asp:CheckBox ID="CheckBox1" runat="server" Text="5%稅外加" />
        <asp:Button ID="Button1" runat="server" OnClick="Calculate" Text="計算" />
        <br />
        <br />
        <asp:Label ID="Label3" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
