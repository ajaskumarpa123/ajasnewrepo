using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class UserRegistration : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        openConnection();
    }
    protected void btRegister_Click(object sender, EventArgs e)
    {
        insertData();
        txtName.Text = String.Empty;
        txtLicenseNo.Text = String.Empty;
        txtMobNo.Text = String.Empty;
        txtUsername.Text = String.Empty;
        txtPassword.Text = String.Empty;
        txtEmail.Text = String.Empty;

        Response.Write("<script>alert('User Registered')</script>");
    }

    void openConnection()
    {
        con = new SqlConnection("Data Source=D-90343146;Initial Catalog=CarBookingDB;Integrated Security=True");
        cmd = new SqlCommand();
        cmd.Connection = con;
    }

    void insertData()
    {
        SqlCommand command;
        SqlDataAdapter adapter = new SqlDataAdapter();
        String sql = "";

        sql = "Insert into tblRegistration(name,licenseNo,mobNumber,email,username,password) values ('" + txtName.Text + "', '" + txtLicenseNo.Text + "', '" + txtMobNo.Text + "', '" + txtEmail.Text + "' ,'" + txtUsername.Text + "' ,'" + txtPassword.Text + "')";

        command = new SqlCommand(sql, con);
        adapter.InsertCommand = new SqlCommand(sql, con);
        con.Open();
        adapter.InsertCommand.ExecuteNonQuery();

    }
}