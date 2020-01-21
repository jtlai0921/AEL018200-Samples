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
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PriceConnectionString %>" SelectCommand="Select 零組件種類, 規格, 可供銷售, 廠商資訊 From 零組件報價表 Where 零組件種類='主機板'"></asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="零組件種類" HeaderText="零組件種類" SortExpression="零組件種類" />
                <asp:BoundField DataField="規格" HeaderText="規格" SortExpression="規格" />
                <asp:CheckBoxField DataField="可供銷售" HeaderText="可供銷售" SortExpression="可供銷售" />
                <asp:BoundField DataField="廠商資訊" HeaderText="廠商資訊" SortExpression="廠商資訊" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
