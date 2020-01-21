<%@ Page Language="C#" AutoEventWireup="true" CodeFile="prac2.aspx.cs" Inherits="prac2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        輸入英文分數：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="分數最高100分" ForeColor="Red" Operator="LessThanEqual" Type="Integer" ValueToCompare="100"></asp:CompareValidator>
        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="分數最低0分" ForeColor="Red" Operator="GreaterThanEqual" Type="Integer" ValueToCompare="0"></asp:CompareValidator>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="確定" />
    
    </div>
    </form>
</body>
</html>
