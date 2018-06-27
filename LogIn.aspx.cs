using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class LogIn : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter da;

    protected void Page_Load(object sender, EventArgs e)
    {
        openConnection();
    }
    protected void btSignIn_Click(object sender, EventArgs e)
    {
        cmd.CommandText = "select COUNT(1) from tblRegistration where username='" + txtUsername.Text.Trim() + "' and password='" + txtPassword.Text.Trim() + "'";
        da = new SqlDataAdapter(cmd);

        int count = Convert.ToInt32(cmd.ExecuteScalar());
        if (count == 1)
        {
            Session["user"] = txtUsername.Text.Trim();
            
            Response.Redirect("~/HomePage.aspx");

        }
        else
        {
            Response.Write("<script>alert('Invalid User')</script>");
            txtUsername.Text = String.Empty;
            txtPassword.Text = String.Empty;
        }
    }

    void openConnection()
    {
        con = new SqlConnection("Data Source=D-90343146;Initial Catalog=CarBookingDB;Integrated Security=True");
        cmd = new SqlCommand();
        cmd.Connection = con;
        con.Open();
    }
}