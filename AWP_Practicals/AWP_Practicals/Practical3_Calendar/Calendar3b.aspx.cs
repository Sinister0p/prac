using System;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Calendar3b : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Open the calendar on the month that contains the vacation day.
            Calendar1.VisibleDate = new DateTime(2026, 10, 1);
        }
    }

    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        if (e.Day.Date == new DateTime(2026, 10, 21))
        {
            e.Cell.BackColor = System.Drawing.Color.Yellow;
            e.Cell.Controls.Add(new LiteralControl("<br/>Vacation"));
        }
    }
}
