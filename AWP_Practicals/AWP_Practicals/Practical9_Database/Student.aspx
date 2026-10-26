<%@ Page Language="C#" AutoEventWireup="true"
    CodeFile="Student.aspx.cs"
    Inherits="StudentPage" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Student Record Management</title>
</head>
<body>
    <form id="form1" runat="server">

        <h2>Student Record Management</h2>

        Student Name:
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>

        <br /><br />

        Course:
        <asp:TextBox ID="txtCourse" runat="server"></asp:TextBox>

        <br /><br />

        Age:
        <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>

        <br /><br />

        <asp:Button ID="btnInsert"
            runat="server"
            Text="Insert Record"
            OnClick="btnInsert_Click" />

        <br /><br />

        <asp:Label ID="lblMessage"
            runat="server"
            ForeColor="Green">
        </asp:Label>

        <hr />

        <h3>Student Records</h3>

        <asp:GridView ID="GridView1"
            runat="server"
            AutoGenerateColumns="False"
            DataKeyNames="StudentID"
            EmptyDataText="No records found."
            OnRowDeleting="GridView1_RowDeleting">
            <Columns>
                <asp:BoundField
                    DataField="StudentID"
                    HeaderText="ID" />
                <asp:BoundField
                    DataField="StudentName"
                    HeaderText="Name" />
                <asp:BoundField
                    DataField="Course"
                    HeaderText="Course" />
                <asp:BoundField
                    DataField="Age"
                    HeaderText="Age" />
                <asp:CommandField
                    ShowDeleteButton="True"
                    HeaderText="Action" />
            </Columns>
        </asp:GridView>

    </form>
</body>
</html>
