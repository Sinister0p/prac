using System;

public partial class AppStatePage : System.Web.UI.Page
{
    protected void btnVisit_Click(object sender, EventArgs e)
    {
        int count;

        // Lock so two visitors cannot update the shared counter at the same time
        Application.Lock();

        // Check whether Application variable exists
        if (Application["VisitorCount"] == null)
        {
            Application["VisitorCount"] = 0;
        }

        // Get current count and increase it
        count = (int)Application["VisitorCount"];
        count++;

        // Store updated count
        Application["VisitorCount"] = count;

        Application.UnLock();

        // Display count
        lblCount.Text = "Total Visitors: " + count;
    }
}
