<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Page3</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:SiteMapPath ID="SiteMapPath1" runat="server"></asp:SiteMapPath>

            <br /><br />

            <asp:Label ID="Label1" runat="server"
                Text="Home > Page3"></asp:Label>

            <br /><br />

            <asp:Menu ID="Menu1" runat="server"
                DataSourceID="SiteMapDataSource1">
            </asp:Menu>

            <br /><br />

            <asp:TreeView ID="TreeView1" runat="server"
                DataSourceID="SiteMapDataSource1">
            </asp:TreeView>

            <asp:SiteMapDataSource ID="SiteMapDataSource1"
                runat="server">
            </asp:SiteMapDataSource>

        </div>
    </form>
</body>
</html>
