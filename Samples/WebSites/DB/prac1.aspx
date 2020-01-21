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
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GradesConnectionString %>" SelectCommand="Select * From 成績單" InsertCommand="INSERT INTO 成績單(學號, 姓名, 國文, 數學, 英文) VALUES ('A11', N'小丸子', 88, 95, 92)"></asp:SqlDataSource>
        <br />
        <asp:BulletedList ID="BulletedList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="姓名" DataValueField="學號" Width="836px">
        </asp:BulletedList>
    
    </div>
    </form>
</body>
</html>
