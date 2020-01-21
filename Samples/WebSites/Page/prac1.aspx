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
    
        增加旅遊地點：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="新增" />
        <br />
        <br />
        旅遊地點：<asp:DropDownList ID="DropDownList1" runat="server">
        </asp:DropDownList>
    
    </div>
    </form>
</body>
</html>
