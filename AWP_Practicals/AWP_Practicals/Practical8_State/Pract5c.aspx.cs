using System;
using System.Web.UI;

public partial class Pract5c : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Executes only when the page loads for the first time
        if (!IsPostBack)
        {
            string str = "XYZ";

            if (ViewState["nam"] == null)
            {
                ViewState["nam"] = str;
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        lblStr.Text = ViewState["nam"].ToString();
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        // The value survives later postbacks because it lives in ViewState.
        if (txtValue.Text.Trim().Length > 0)
        {
            ViewState["nam"] = txtValue.Text.Trim();
        }

        lblStr.Text = ViewState["nam"].ToString();
    }
}
