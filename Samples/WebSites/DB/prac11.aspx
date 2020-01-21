<%@ Page Language="C#" MaintainScrollPositionOnPostback="true" AutoEventWireup="true" CodeFile="prac11.aspx.cs" Inherits="prac11" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PriceConnectionString %>" SelectCommand="Select 編號, 零組件種類, 廠牌, 規格 From 零組件報價表"></asp:SqlDataSource>
        
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="編號" DataSourceID="SqlDataSource1" AllowSorting="True" OnSelectedIndexChanged="GV_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="編號" HeaderText="編號" InsertVisible="False" ReadOnly="True" SortExpression="編號" />
                <asp:BoundField DataField="零組件種類" HeaderText="零組件種類" SortExpression="零組件種類" />
                <asp:BoundField DataField="廠牌" HeaderText="廠牌" SortExpression="廠牌" />
                <asp:BoundField DataField="規格" HeaderText="規格" SortExpression="規格" />
                <asp:CommandField SelectText="詳細資料" ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
    
        
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PriceConnectionString %>" DeleteCommand="DELETE FROM [零組件報價表] WHERE [編號] = @編號" InsertCommand="INSERT INTO [零組件報價表] ([零組件種類], [廠牌], [規格], [價格], [報價日期], [廠商資訊], [可供銷售]) VALUES (@零組件種類, @廠牌, @規格, @價格, @報價日期, @廠商資訊, @可供銷售)" SelectCommand="SELECT * FROM [零組件報價表]" UpdateCommand="UPDATE [零組件報價表] SET [零組件種類] = @零組件種類, [廠牌] = @廠牌, [規格] = @規格, [價格] = @價格, [報價日期] = @報價日期, [廠商資訊] = @廠商資訊, [可供銷售] = @可供銷售 WHERE [編號] = @編號">
            <DeleteParameters>
                <asp:Parameter Name="編號" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="零組件種類" Type="String" />
                <asp:Parameter Name="廠牌" Type="String" />
                <asp:Parameter Name="規格" Type="String" />
                <asp:Parameter Name="價格" Type="Int32" />
                <asp:Parameter Name="報價日期" Type="DateTime" />
                <asp:Parameter Name="廠商資訊" Type="String" />
                <asp:Parameter Name="可供銷售" Type="Boolean" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="零組件種類" Type="String" />
                <asp:Parameter Name="廠牌" Type="String" />
                <asp:Parameter Name="規格" Type="String" />
                <asp:Parameter Name="價格" Type="Int32" />
                <asp:Parameter Name="報價日期" Type="DateTime" />
                <asp:Parameter Name="廠商資訊" Type="String" />
                <asp:Parameter Name="可供銷售" Type="Boolean" />
                <asp:Parameter Name="編號" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="編號" DataSourceID="SqlDataSource2" Height="97px" OnItemCommand="DV_ItemCommand" OnItemDeleted="DV_ItemDeleted" Visible="False" Width="363px">
            <Fields>
                <asp:BoundField DataField="編號" HeaderText="編號" InsertVisible="False" ReadOnly="True" SortExpression="編號" />
                <asp:BoundField DataField="零組件種類" HeaderText="零組件種類" SortExpression="零組件種類" />
                <asp:BoundField DataField="廠牌" HeaderText="廠牌" SortExpression="廠牌" />
                <asp:BoundField DataField="規格" HeaderText="規格" SortExpression="規格" />
                <asp:BoundField DataField="價格" HeaderText="價格" SortExpression="價格" />
                <asp:BoundField DataField="報價日期" HeaderText="報價日期" SortExpression="報價日期" />
                <asp:BoundField DataField="廠商資訊" HeaderText="廠商資訊" SortExpression="廠商資訊" />
                <asp:CheckBoxField DataField="可供銷售" HeaderText="可供銷售" SortExpression="可供銷售" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                <asp:ButtonField CommandName="Return" Text="返回" />
            </Fields>
        </asp:DetailsView>
    
    </div>
    </form>
</body>
</html>
