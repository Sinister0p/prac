using System;

public partial class Calendar3d : System.Web.UI.Page
{
    protected void Button1_Click(object sender, EventArgs e)
    {
        // SelectedDate is DateTime.MinValue until the user clicks a day.
        if (Calendar1.SelectedDate == DateTime.MinValue ||
            Calendar2.SelectedDate == DateTime.MinValue)
        {
            Label1.Text = "Please select a date in both calendars.";
            return;
        }

        TimeSpan diff = Calendar2.SelectedDate - Calendar1.SelectedDate;

        Label1.Text = "Difference between dates: " +
            Math.Abs(diff.Days) + " Days";
    }
}
