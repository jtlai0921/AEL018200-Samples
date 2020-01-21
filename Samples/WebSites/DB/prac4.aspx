<%@ Page Language="C#" AutoEventWireup="true" CodeFile="prac4.aspx.cs" Inherits="prac4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PriceConnectionString %>" SelectCommand="Select 零組件種類, 規格, 價格, 報價日期 From 零組件報價表 Where 零組件種類='主機板'"></asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnRowCommand="ShowOrderList">
            <Columns>
                <asp:BoundField DataField="零組件種類" HeaderText="零組件種類" SortExpression="零組件種類" />
                <asp:BoundField DataField="規格" HeaderText="規格" SortExpression="規格" />
                <asp:BoundField DataField="價格" DataFormatString="{0:C}" HeaderText="價格" SortExpression="價格" />
                <asp:BoundField DataField="報價日期" DataFormatString="{0:yyyy/MM/dd}" HeaderText="報價日期" SortExpression="報價日期" />
                <asp:ButtonField ButtonType="Button" CommandName="Order" Text="放入購物車" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
