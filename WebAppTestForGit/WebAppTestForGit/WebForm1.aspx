<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebAppTestForGit.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DataList ID="DataList1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="SqlDataSource1" ForeColor="Black" Width="403px">
            <AlternatingItemStyle BackColor="PaleGoldenrod" />
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <ItemTemplate>
                UserID:
                <asp:Label ID="UserIDLabel" runat="server" Text='<%# Eval("UserID") %>' />
                <br />
                Sid:
                <asp:Label ID="SidLabel" runat="server" Text='<%# Eval("Sid") %>' />
                <br />
                UserType:
                <asp:Label ID="UserTypeLabel" runat="server" Text='<%# Eval("UserType") %>' />
                <br />
                AuthType:
                <asp:Label ID="AuthTypeLabel" runat="server" Text='<%# Eval("AuthType") %>' />
                <br />
                UserName:
                <asp:Label ID="UserNameLabel" runat="server" Text='<%# Eval("UserName") %>' />
                <br />
                <br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ReportServerConnectionString %>" SelectCommand="SELECT * FROM [Users]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
