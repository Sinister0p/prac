<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Calendar3a.aspx.cs" Inherits="Calendar3a" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calendar Message</title>
</head>
<body>
    <form id="form1" runat="server">

        <asp:Calendar ID="Calendar1" runat="server"
            OnSelectionChanged="Calendar1_SelectionChanged">
        </asp:Calendar>

        <br />

        <asp:Label ID="Label1" runat="server" Font-Bold="True"></asp:Label>

    </form>
</body>
</html>
