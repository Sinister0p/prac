<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Calendar3d.aspx.cs" Inherits="Calendar3d" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Difference Between Two Dates</title>
</head>
<body>
    <form id="form1" runat="server">

        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>

        <br /><br />

        <asp:Calendar ID="Calendar2" runat="server"></asp:Calendar>

        <br /><br />

        <asp:Button ID="Button1"
            runat="server"
            Text="Calculate Difference"
            OnClick="Button1_Click" />

        <br /><br />

        <asp:Label ID="Label1"
            runat="server"
            Font-Bold="True"></asp:Label>

    </form>
</body>
</html>
