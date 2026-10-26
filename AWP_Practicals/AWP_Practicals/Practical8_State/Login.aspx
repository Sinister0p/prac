<%@ Page Language="C#" AutoEventWireup="true"
    CodeFile="Login.aspx.cs"
    Inherits="LoginPage" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Login - Session State</title>
</head>
<body>
    <form id="form1" runat="server">

        <h2>Login Form</h2>

        <asp:Label ID="lblUsername" runat="server"
            Text="Username:"></asp:Label>
        <asp:TextBox ID="txtUsername" runat="server">
        </asp:TextBox>

        <br /><br />

        <asp:Label ID="lblPassword" runat="server"
            Text="Password:"></asp:Label>
        <asp:TextBox ID="txtPassword" runat="server"
            TextMode="Password">
        </asp:TextBox>

        <br /><br />

        <asp:Button ID="btnLogin" runat="server"
            Text="Login"
            OnClick="btnLogin_Click" />

        <br /><br />

        <asp:Label ID="lblMessage" runat="server" ForeColor="Red">
        </asp:Label>

    </form>
</body>
</html>
