<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WebForm1.aspx.cs" Inherits="WebForm1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Validation Controls</title>
    <script type="text/javascript">
        // Client-side check used by the CustomValidator (exactly 8 characters).
        function ClientValidate(source, args) {
            if (args.Value.length == 8)
                args.IsValid = true;
            else
                args.IsValid = false;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:Label ID="Label1" runat="server" Text="Your Name"></asp:Label>
            <br />
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator
                ID="RequiredFieldValidator1"
                runat="server"
                ControlToValidate="txtName"
                ErrorMessage="Please enter your name."
                ForeColor="Red">
            </asp:RequiredFieldValidator>

            <br /><br />

            <asp:Label ID="Label2" runat="server" Text="Enter Age"></asp:Label>
            <br />
            <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator
                ID="RequiredFieldValidator2"
                runat="server"
                ControlToValidate="txtAge"
                Display="Dynamic"
                ErrorMessage="Please enter your age."
                ForeColor="Red">
            </asp:RequiredFieldValidator>
            <asp:RangeValidator
                ID="RangeValidator1"
                runat="server"
                ControlToValidate="txtAge"
                Display="Dynamic"
                Type="Integer"
                MinimumValue="18"
                MaximumValue="60"
                ErrorMessage="Age should be between 18 and 60."
                ForeColor="Red">
            </asp:RangeValidator>

            <br /><br />

            <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
            <br />
            <asp:TextBox
                ID="txtPassword"
                runat="server"
                TextMode="Password">
            </asp:TextBox>
            <asp:RequiredFieldValidator
                ID="RequiredFieldValidator3"
                runat="server"
                ControlToValidate="txtPassword"
                ErrorMessage="Please enter a password."
                ForeColor="Red">
            </asp:RequiredFieldValidator>

            <br /><br />

            <asp:Label ID="Label4" runat="server" Text="Confirm Password"></asp:Label>
            <br />
            <asp:TextBox
                ID="txtConfirm"
                runat="server"
                TextMode="Password">
            </asp:TextBox>
            <asp:CompareValidator
                ID="CompareValidator1"
                runat="server"
                ControlToValidate="txtConfirm"
                ControlToCompare="txtPassword"
                Operator="Equal"
                Type="String"
                ErrorMessage="Passwords do not match."
                ForeColor="Red">
            </asp:CompareValidator>

            <br /><br />

            <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label>
            <br />
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator
                ID="RequiredFieldValidator4"
                runat="server"
                ControlToValidate="txtEmail"
                Display="Dynamic"
                ErrorMessage="Please enter your email."
                ForeColor="Red">
            </asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator
                ID="RegularExpressionValidator1"
                runat="server"
                ControlToValidate="txtEmail"
                Display="Dynamic"
                ErrorMessage="Enter a valid Email."
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                ForeColor="Red">
            </asp:RegularExpressionValidator>

            <br /><br />

            <asp:Label ID="Label6" runat="server" Text="Custom Text (8 Characters)"></asp:Label>
            <br />
            <asp:TextBox ID="txtCustom" runat="server"></asp:TextBox>
            <asp:CustomValidator
                ID="CustomValidator1"
                runat="server"
                ControlToValidate="txtCustom"
                ValidateEmptyText="True"
                ClientValidationFunction="ClientValidate"
                OnServerValidate="ServerValidation"
                ErrorMessage="Text must be exactly 8 characters."
                ForeColor="Red">
            </asp:CustomValidator>

            <br /><br />

            <asp:Label
                ID="lbl1"
                runat="server"
                ForeColor="Green">
            </asp:Label>

            <br />

            <asp:Button
                ID="Button1"
                runat="server"
                Text="Validate"
                OnClick="Button1_Click" />

            <br /><br />

            <asp:ValidationSummary
                ID="ValidationSummary1"
                runat="server"
                ForeColor="Red" />

        </div>
    </form>
</body>
</html>
