using System;

public partial class Calendar3a : System.Web.UI.Page
{
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        Label1.Text = "You selected: " +
            Calendar1.SelectedDate.ToLongDateString();
    }
}
