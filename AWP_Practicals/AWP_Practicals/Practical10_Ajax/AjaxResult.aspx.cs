using System;
using System.Threading;

public partial class AjaxResult : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnCalculate_Click(object sender, EventArgs e)
    {
        // Short delay only so the UpdateProgress message can be seen.
        Thread.Sleep(1500);

        int python, asp, db;

        // Check whether entered values are valid numbers
        if (int.TryParse(txtPython.Text.Trim(), out python) &&
            int.TryParse(txtAsp.Text.Trim(), out asp) &&
            int.TryParse(txtDB.Text.Trim(), out db))
        {
            // Check valid marks range
            if (python >= 0 && python <= 100 &&
                asp >= 0 && asp <= 100 &&
                db >= 0 && db <= 100)
            {
                int total;
                double percentage;
                string grade;
                string result;

                // Calculate total
                total = python + asp + db;

                // Calculate percentage
                percentage = total / 3.0;

                // Check pass or fail (pass mark is 40 in every subject)
                if (python < 40 || asp < 40 || db < 40)
                {
                    result = "FAIL";
                    grade = "F";
                }
                else
                {
                    result = "PASS";

                    // Calculate grade
                    if (percentage >= 75)
                        grade = "A+";
                    else if (percentage >= 60)
                        grade = "A";
                    else if (percentage >= 50)
                        grade = "B";
                    else
                        grade = "C";
                }

                // Display result
                lblResult.Text =
                    "Student Name: " + Server.HtmlEncode(txtName.Text) +
                    "<br/>Total Marks: " + total + " / 300" +
                    "<br/>Percentage: " +
                    percentage.ToString("0.00") + "%" +
                    "<br/>Grade: " + grade +
                    "<br/>Result: " + result;
            }
            else
            {
                lblResult.Text =
                    "Please enter marks between 0 and 100.";
            }
        }
        else
        {
            lblResult.Text =
                "Please enter valid numeric marks.";
        }
    }

    protected void btnTime_Click(object sender, EventArgs e)
    {
        lblTime.Text = " " + DateTime.Now.ToLongTimeString();
    }
}
