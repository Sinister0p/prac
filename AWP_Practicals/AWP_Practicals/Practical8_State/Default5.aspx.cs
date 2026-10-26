using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default5 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // First visit in this browser session: restore the colour saved in the cookie.
            HttpCookie cookie = Request.Cookies["BackgroundColor"];

            if (cookie != null && ColorSelector.Items.FindByValue(cookie.Value) != null)
            {
                ColorSelector.SelectedValue = cookie.Value;
            }
        }

        BodyTag.Style["background-color"] = ColorSelector.SelectedValue;
    }

    protected void ColorSelector_IndexChanged(object sender, EventArgs e)
    {
        BodyTag.Style["background-color"] = ColorSelector.SelectedValue;

        // Save the chosen colour in a cookie that lasts one day.
        HttpCookie cookie = new HttpCookie("BackgroundColor");
        cookie.Value = ColorSelector.SelectedValue;
        cookie.Expires = DateTime.Now.AddDays(1);
        Response.Cookies.Add(cookie);
    }
}
