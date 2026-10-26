using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class StudentPage : System.Web.UI.Page
{
    // Connection string comes from Web.config (name: CollegeDB)
    private string ConnectionString
    {
        get
        {
            return ConfigurationManager.ConnectionStrings["CollegeDB"].ConnectionString;
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            try
            {
                EnsureDatabase();
                LoadStudents();
            }
            catch (Exception ex)
            {
                ShowError("Could not connect to the database: " + ex.Message);
            }
        }
    }

    // INSERT RECORD
    protected void btnInsert_Click(object sender, EventArgs e)
    {
        string name = txtName.Text.Trim();
        string course = txtCourse.Text.Trim();
        int age;

        if (name.Length == 0 || course.Length == 0)
        {
            ShowError("Please enter the student name and the course.");
            return;
        }

        if (!int.TryParse(txtAge.Text.Trim(), out age) || age <= 0)
        {
            ShowError("Please enter a valid age.");
            return;
        }

        try
        {
            using (SqlConnection con = new SqlConnection(ConnectionString))
            {
                string query =
                    "INSERT INTO Students " +
                    "(StudentName, Course, Age) " +
                    "VALUES (@Name, @Course, @Age)";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@Name", name);
                cmd.Parameters.AddWithValue("@Course", course);
                cmd.Parameters.AddWithValue("@Age", age);

                con.Open();
                cmd.ExecuteNonQuery();
            }

            ShowSuccess("Record inserted successfully.");

            txtName.Text = "";
            txtCourse.Text = "";
            txtAge.Text = "";

            LoadStudents();
        }
        catch (Exception ex)
        {
            ShowError("Insert failed: " + ex.Message);
        }
    }

    // DISPLAY RECORDS
    private void LoadStudents()
    {
        using (SqlConnection con = new SqlConnection(ConnectionString))
        {
            string query = "SELECT StudentID, StudentName, Course, Age FROM Students ORDER BY StudentID";

            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            da.Fill(dt);

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }

    // DELETE RECORD
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int studentID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);

        try
        {
            using (SqlConnection con = new SqlConnection(ConnectionString))
            {
                string query =
                    "DELETE FROM Students " +
                    "WHERE StudentID = @ID";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@ID", studentID);

                con.Open();
                cmd.ExecuteNonQuery();
            }

            ShowSuccess("Record deleted successfully.");

            LoadStudents();
        }
        catch (Exception ex)
        {
            ShowError("Delete failed: " + ex.Message);
        }
    }

    // Creates the CollegeDB database and the Students table if they do not exist yet.
    private void EnsureDatabase()
    {
        SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder(ConnectionString);
        string databaseName = builder.InitialCatalog;

        // 1) Create the database (connect to master first)
        builder.InitialCatalog = "master";

        using (SqlConnection con = new SqlConnection(builder.ConnectionString))
        {
            string createDb =
                "IF DB_ID(@db) IS NULL EXEC('CREATE DATABASE [' + @db + ']')";

            SqlCommand cmd = new SqlCommand(createDb, con);
            cmd.Parameters.AddWithValue("@db", databaseName);

            con.Open();
            cmd.ExecuteNonQuery();
        }

        // 2) Create the table inside the database
        using (SqlConnection con = new SqlConnection(ConnectionString))
        {
            string createTable =
                "IF OBJECT_ID('dbo.Students', 'U') IS NULL " +
                "CREATE TABLE dbo.Students (" +
                "StudentID INT IDENTITY(1,1) PRIMARY KEY, " +
                "StudentName VARCHAR(100) NOT NULL, " +
                "Course VARCHAR(50) NOT NULL, " +
                "Age INT)";

            SqlCommand cmd = new SqlCommand(createTable, con);

            con.Open();
            cmd.ExecuteNonQuery();
        }
    }

    private void ShowSuccess(string message)
    {
        lblMessage.ForeColor = System.Drawing.Color.Green;
        lblMessage.Text = message;
    }

    private void ShowError(string message)
    {
        lblMessage.ForeColor = System.Drawing.Color.Red;
        lblMessage.Text = Server.HtmlEncode(message);
    }
}
