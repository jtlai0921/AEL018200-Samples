<%@ Page Language="C#" AutoEventWireup="true" CodeFile="prac12.aspx.cs" Inherits="prac12" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GradesConnectionString %>" SelectCommand="SELECT * FROM 成績單"></asp:SqlDataSource>
        <br />
        <asp:DataList ID="DataList1" runat="server" DataKeyField="學號" DataSourceID="SqlDataSource1" RepeatColumns="4">
            <ItemTemplate>
                學號:
                <asp:Label ID="學號Label" runat="server" Text='<%# Eval("學號") %>' />
                <br />
                姓名:
                <asp:Label ID="姓名Label" runat="server" Text='<%# Eval("姓名") %>' />
                <br />
                國文:
                <asp:Label ID="國文Label" runat="server" Text='<%# Eval("國文") %>' />
                <br />
                數學:
                <asp:Label ID="數學Label" runat="server" Text='<%# Eval("數學") %>' />
                <br />
                英文:
                <asp:Label ID="英文Label" runat="server" Text='<%# Eval("英文") %>' />
<br />
                <br />
            </ItemTemplate>
        </asp:DataList>
    
    </div>
    </form>
</body>
</html>
