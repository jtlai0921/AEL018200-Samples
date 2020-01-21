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
    
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="DataClassesDataContext" EntityTypeName="" TableName="成績單" Where="國文 &gt; @國文">
            <WhereParameters>
                <asp:Parameter DefaultValue="80" Name="國文" Type="Int32" />
            </WhereParameters>
        </asp:LinqDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="學號" DataSourceID="LinqDataSource1">
            <Columns>
                <asp:BoundField DataField="學號" HeaderText="學號" ReadOnly="True" SortExpression="學號" />
                <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
                <asp:BoundField DataField="國文" HeaderText="國文" SortExpression="國文" />
                <asp:BoundField DataField="數學" HeaderText="數學" SortExpression="數學" />
                <asp:BoundField DataField="英文" HeaderText="英文" SortExpression="英文" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
