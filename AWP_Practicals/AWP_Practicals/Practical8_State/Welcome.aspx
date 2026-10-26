<%@ Page Language="C#" AutoEventWireup="true"
    CodeFile="Welcome.aspx.cs"
    Inherits="WelcomePage" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Welcome</title>
</head>
<body>
    <form id="form1" runat="server">

        <h2>Welcome Page</h2>

        <asp:Label ID="lblWelcome" runat="server">
        </asp:Label>

        <br /><br />

        <asp:Button ID="btnLogout" runat="server"
            Text="Logout"
            OnClick="btnLogout_Click" />

    </form>
</body>
</html>
