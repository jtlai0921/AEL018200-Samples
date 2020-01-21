<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="images_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center">
          <asp:Image ID="Image1" runat="server"  ImageUrl="~/images/title.jpg" />
          <br />
          <br />
          <asp:ImageButton ID="addButton" runat="server" ImageUrl="~/images/addButton.gif" PostBackUrl="AddRecord.aspx" />
          <asp:ImageButton ID="firstButton" runat="server" CommandArgument="firstPage" ImageUrl="Images/firstButton.gif" OnCommand ="PageChange" />　
          <asp:ImageButton ID="preButton" runat="server" CommandArgument="prePage" ImageUrl="Images/preButton.gif" OnCommand="PageChange" />　
          <asp:ImageButton ID="nextButton" runat="server" CommandArgument="nextPage" ImageUrl="Images/nextButton.gif" OnCommand="PageChange" />　
          <asp:ImageButton ID="lastButton" runat="server" CommandArgument="lastPage" ImageUrl="Images/lastButton.gif"  OnCommand="PageChange" />
          <br />
          共有 <asp:Label ID="TotalPage" runat="server"></asp:Label> 頁，
          <asp:Label ID="TotalRecord" runat="server"></asp:Label> 筆留言，
          目前位於 <asp:DropDownList ID="PageList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="PageList_SelectedIndexChanged"></asp:DropDownList>
          ，每頁顯示5筆記錄。
        </asp:Panel>
        <br />
        
        <asp:DataList ID="DataList1" runat="server" HorizontalAlign="Center">
            <HeaderTemplate>
              <table style="width:800px">
            </HeaderTemplate>
            <ItemTemplate>
              <tr>            
                <td style="background-color:#ffff00; width:20%">
                  留言者：<a href="mailto:<%#Eval("電子郵件")%>"><%#Eval("留言者")%></a></td>           
                <td style="background-color:#ffff00; width:40%">
                  留言日期：<%#Eval("留言日期")%></td>
              </tr>
              <tr style="background-color:#ffffcc">
                <td colspan="2">
                  <%#Eval("留言內容")%>
                </td>
              </tr>
            </ItemTemplate>
            <AlternatingItemTemplate>
              <tr>            
                <td style="background-color:#99ff99; width:20%">
                  留言者：<a href="mailto:<%#Eval("電子郵件")%>"><%#Eval("留言者")%></a></td>
                <td style="background-color:#99ff99; width:40%">
                  留言日期：<%#Eval("留言日期")%></td>
              </tr>
              <tr style="background-color:#ccffcc">
                <td colspan="2">
                  <%#Eval("留言內容")%></td>
              </tr>
            </AlternatingItemTemplate>
            <SeparatorTemplate>
              <tr>
                <td colspan="2"><br></td>
              </tr>
            </SeparatorTemplate>
            <FooterTemplate>
              </table>
            </FooterTemplate>
        </asp:DataList>
             
    </div>
    </form>
</body>
</html>
