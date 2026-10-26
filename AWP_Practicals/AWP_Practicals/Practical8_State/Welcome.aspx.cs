using System;

public partial class WelcomePage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Check whether Session exists
        if (Session["Username"] != null)
        {
            string username = Session["Username"].ToString();

            lblWelcome.Text = "Welcome, " + Server.HtmlEncode(username);
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }

    protected void btnLogout_Click(object sender, EventArgs e)
    {
        // Clear Session
        Session.Clear();
        Session.Abandon();

        // Go back to Login page
        Response.Redirect("Login.aspx");
    }
}
