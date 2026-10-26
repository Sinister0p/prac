<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Calendar3b.aspx.cs" Inherits="Calendar3b" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calendar Vacation</title>
</head>
<body>
    <form id="form1" runat="server">

        <asp:Calendar ID="Calendar1" runat="server"
            OnDayRender="Calendar1_DayRender">
        </asp:Calendar>

    </form>
</body>
</html>
