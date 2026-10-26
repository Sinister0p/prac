<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default5.aspx.cs" Inherits="Default5" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cookies</title>
</head>
<body id="BodyTag" runat="server">
    <form id="form1" runat="server">
        <div>

            <asp:DropDownList ID="ColorSelector" runat="server" AutoPostBack="True"
                OnSelectedIndexChanged="ColorSelector_IndexChanged">
                <asp:ListItem Value="white" Selected="True">Select colour</asp:ListItem>
                <asp:ListItem Value="red">red</asp:ListItem>
                <asp:ListItem Value="green">green</asp:ListItem>
                <asp:ListItem Value="blue">blue</asp:ListItem>
            </asp:DropDownList>

        </div>
    </form>
</body>
</html>
