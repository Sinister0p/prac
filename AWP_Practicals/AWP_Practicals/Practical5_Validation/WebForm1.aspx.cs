using System;
using System.Web.UI.WebControls;

public partial class WebForm1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            lbl1.ForeColor = System.Drawing.Color.Green;
            lbl1.Text = "Thank You!";
        }
        else
        {
            lbl1.ForeColor = System.Drawing.Color.Red;
            lbl1.Text = "Please correct the errors.";
        }
    }

    // Server-side check for the CustomValidator (text must be exactly 8 characters).
    protected void ServerValidation(object source, ServerValidateEventArgs args)
    {
        if (args.Value.Length == 8)
            args.IsValid = true;
        else
            args.IsValid = false;
    }
}
