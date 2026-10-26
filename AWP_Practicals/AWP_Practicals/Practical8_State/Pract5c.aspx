<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Pract5c.aspx.cs" Inherits="Pract5c" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ViewState Demo</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:Label ID="Label1" runat="server" Text="ViewState Data: "></asp:Label>
            <asp:Label ID="lblStr" runat="server"></asp:Label>

            <br /><br />

            <asp:Button ID="Button1"
                runat="server"
                Text="Get Data"
                OnClick="Button1_Click" />

            <br /><br />

            <asp:TextBox ID="txtValue" runat="server"></asp:TextBox>
            <asp:Button ID="btnSave"
                runat="server"
                Text="Save To ViewState"
                OnClick="btnSave_Click" />

        </div>
    </form>
</body>
</html>
