<%@ Page Language="C#" AutoEventWireup="true" CodeFile="prac5.aspx.cs" Inherits="prac5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        輸入偶數：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="您輸入的不是偶數！" ForeColor="Red" OnServerValidate="IsEven"></asp:CustomValidator>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="確定" />
    
    </div>
    </form>
</body>
</html>
