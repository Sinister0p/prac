using System;

public partial class Calendar3c : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Pre-select today so the SelectedDayStyle is visible straight away.
            Calendar1.SelectedDate = DateTime.Today;
        }
    }
}
