<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Pract3a.aspx.cs" Inherits="Pract3a" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Practical 4 - Server Controls</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:Label ID="Label1" runat="server" Text="ViewState Data : "></asp:Label>
            <asp:Label ID="lblstr" runat="server"></asp:Label>
            <br /><br />

            <asp:Button ID="Button1" runat="server"
                Text="Get Data"
                OnClick="Button1_Click" />

            <br /><br />

            <asp:ListBox ID="ListBox1" runat="server"
                SelectionMode="Multiple">
                <asp:ListItem>C#</asp:ListItem>
                <asp:ListItem>C++</asp:ListItem>
                <asp:ListItem>Java</asp:ListItem>
                <asp:ListItem>C</asp:ListItem>
            </asp:ListBox>

            <br /><br />

            <asp:TextBox ID="TextBox1"
                runat="server"
                TextMode="MultiLine"
                Rows="5"
                Columns="25"></asp:TextBox>

            <br /><br />

            <asp:Button ID="Button2"
                runat="server"
                Text="Show"
                OnClick="Button2_Click" />

            <br /><br />

            <asp:Label ID="Label2" runat="server" Text="Select Color :"></asp:Label>
            <asp:RadioButton ID="RadioButton1"
                runat="server"
                Text="Red"
                GroupName="Color"
                AutoPostBack="True"
                OnCheckedChanged="RadioButton1_CheckedChanged" />
            <asp:RadioButton ID="RadioButton2"
                runat="server"
                Text="Green"
                GroupName="Color"
                AutoPostBack="True"
                OnCheckedChanged="RadioButton2_CheckedChanged" />
            <asp:RadioButton ID="RadioButton3"
                runat="server"
                Text="Blue"
                GroupName="Color"
                AutoPostBack="True"
                OnCheckedChanged="RadioButton3_CheckedChanged" />

            <br /><br />

            <asp:Label ID="Label3" runat="server" Text="Select Formatting :"></asp:Label>
            <asp:CheckBox ID="CheckBox1"
                runat="server"
                Text="Bold"
                AutoPostBack="True"
                OnCheckedChanged="CheckBox1_CheckedChanged" />
            <asp:CheckBox ID="CheckBox2"
                runat="server"
                Text="Italic"
                AutoPostBack="True"
                OnCheckedChanged="CheckBox2_CheckedChanged" />
            <asp:CheckBox ID="CheckBox3"
                runat="server"
                Text="Underline"
                AutoPostBack="True"
                OnCheckedChanged="CheckBox3_CheckedChanged" />

            <br /><br />

            <asp:Label ID="Label4" runat="server" Text="Select Size :"></asp:Label>
            <asp:DropDownList ID="DropDownList1"
                runat="server"
                AutoPostBack="True"
                OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>20</asp:ListItem>
                <asp:ListItem>30</asp:ListItem>
                <asp:ListItem>40</asp:ListItem>
                <asp:ListItem>50</asp:ListItem>
            </asp:DropDownList>

            <br /><br />

            <asp:Label ID="Label5" runat="server" Text="Select Name :"></asp:Label>
            <asp:DropDownList ID="DropDownList2"
                runat="server"
                AutoPostBack="True"
                OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                <asp:ListItem>Ajay</asp:ListItem>
                <asp:ListItem>Aditya</asp:ListItem>
                <asp:ListItem>Anand</asp:ListItem>
                <asp:ListItem>Shiv</asp:ListItem>
                <asp:ListItem>Saurav</asp:ListItem>
                <asp:ListItem>Kartikya</asp:ListItem>
            </asp:DropDownList>

            <br /><br />

            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>

            <br /><br />

            <asp:Image ID="Image1"
                runat="server"
                Width="160px"
                AlternateText="Sample photo"
                ImageUrl="~/Images/photo.png" />

        </div>
    </form>
</body>
</html>
