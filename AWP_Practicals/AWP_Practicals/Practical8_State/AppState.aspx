<%@ Page Language="C#" AutoEventWireup="true"
    CodeFile="AppState.aspx.cs"
    Inherits="AppStatePage" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Application State</title>
</head>
<body>
    <form id="form1" runat="server">

        <h2>Application State - Visitor Counter</h2>

        <asp:Button ID="btnVisit" runat="server"
            Text="Count Visitor"
            OnClick="btnVisit_Click" />

        <br /><br />

        <asp:Label ID="lblCount" runat="server">
        </asp:Label>

    </form>
</body>
</html>
