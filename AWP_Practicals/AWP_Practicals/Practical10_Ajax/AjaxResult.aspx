<%@ Page Language="C#" AutoEventWireup="true"
    CodeFile="AjaxResult.aspx.cs"
    Inherits="AjaxResult" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AJAX Student Result Calculator</title>
</head>
<body>
    <form id="form1" runat="server">

        <asp:ScriptManager ID="ScriptManager1" runat="server" />

        <h2>Student Result Calculator using AJAX</h2>

        <%-- UpdatePanel: only this part of the page refreshes (no full page reload) --%>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
            <ContentTemplate>

                Student Name:
                <asp:TextBox ID="txtName" runat="server" />

                <br /><br />

                Python Marks:
                <asp:TextBox ID="txtPython" runat="server" />

                <br /><br />

                ASP.NET Marks:
                <asp:TextBox ID="txtAsp" runat="server" />

                <br /><br />

                Database Marks:
                <asp:TextBox ID="txtDB" runat="server" />

                <br /><br />

                <asp:Button
                    ID="btnCalculate"
                    runat="server"
                    Text="Calculate Result"
                    OnClick="btnCalculate_Click" />

                <br /><br />

                <asp:Label
                    ID="lblResult"
                    runat="server"
                    Font-Bold="true">
                </asp:Label>

            </ContentTemplate>
        </asp:UpdatePanel>

        <%-- UpdateProgress: message shown while the UpdatePanel above is busy --%>
        <asp:UpdateProgress
            ID="UpdateProgress1"
            runat="server"
            AssociatedUpdatePanelID="UpdatePanel1">
            <ProgressTemplate>
                <b>Calculating result...</b>
            </ProgressTemplate>
        </asp:UpdateProgress>

        <hr />

        <%-- A second, independent UpdatePanel with its own button --%>
        <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <asp:Button
                    ID="btnTime"
                    runat="server"
                    Text="Show Server Time"
                    OnClick="btnTime_Click" />
                <asp:Label
                    ID="lblTime"
                    runat="server"
                    Font-Bold="true">
                </asp:Label>
            </ContentTemplate>
        </asp:UpdatePanel>

    </form>
</body>
</html>
