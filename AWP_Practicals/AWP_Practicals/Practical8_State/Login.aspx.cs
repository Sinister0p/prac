using System;

public partial class LoginPage : System.Web.UI.Page
{
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string username = txtUsername.Text.Trim();
        string password = txtPassword.Text;

        // Check login details
        if (username == "admin" && password == "1234")
        {
            // Store username in Session
            Session["Username"] = username;

            // Go to Welcome page
            Response.Redirect("Welcome.aspx");
        }
        else
        {
            lblMessage.Text = "Invalid Username or Password";
        }
    }
}
