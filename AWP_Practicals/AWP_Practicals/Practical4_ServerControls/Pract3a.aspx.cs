using System;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pract3a : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ViewState["name"] = "Ajay";
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        lblstr.Text = ViewState["name"].ToString();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";

        foreach (ListItem item in ListBox1.Items)
        {
            if (item.Selected)
            {
                TextBox1.Text += item.Text + Environment.NewLine;
            }
        }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblstr.Font.Size = FontUnit.Point(
            Convert.ToInt32(DropDownList1.SelectedItem.Text));
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblstr.Text = DropDownList2.SelectedItem.Text;
        Label6.Text = "Selected name: " + DropDownList2.SelectedItem.Text;
    }

    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        lblstr.BackColor = System.Drawing.Color.Red;
    }

    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {
        lblstr.BackColor = System.Drawing.Color.Green;
    }

    protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
    {
        lblstr.BackColor = System.Drawing.Color.Blue;
    }

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        lblstr.Font.Bold = CheckBox1.Checked;
    }

    protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
    {
        lblstr.Font.Italic = CheckBox2.Checked;
    }

    protected void CheckBox3_CheckedChanged(object sender, EventArgs e)
    {
        lblstr.Font.Underline = CheckBox3.Checked;
    }
}
