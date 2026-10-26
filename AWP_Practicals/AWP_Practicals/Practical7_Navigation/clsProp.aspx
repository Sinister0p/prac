<%@ Page Language="C#" AutoEventWireup="true" CodeFile="clsProp.aspx.cs" Inherits="ClsProp" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Page2</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:SiteMapPath ID="SiteMapPath1" runat="server"></asp:SiteMapPath>

            <br /><br />

            <asp:Label ID="Label1" runat="server"
                Text="Home > Page2"></asp:Label>

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
