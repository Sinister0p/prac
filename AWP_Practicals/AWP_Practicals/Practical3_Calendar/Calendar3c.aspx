<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Calendar3c.aspx.cs" Inherits="Calendar3c" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calendar Selected Day Style</title>
</head>
<body>
    <form id="form1" runat="server">

        <asp:Calendar ID="Calendar1" runat="server">
            <SelectedDayStyle
                BackColor="Blue"
                ForeColor="White"
                Font-Bold="True" />
        </asp:Calendar>

    </form>
</body>
</html>
