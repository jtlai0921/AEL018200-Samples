<%@ Page Language="C#" AutoEventWireup="true" CodeFile="prac10.aspx.cs" Inherits="prac10" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" OnTextChanged="ShowMsg" Rows="5" TextMode="MultiLine"></asp:TextBox>
    
    </div>
        <p>
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </p>
    </form>
</body>
</html>
