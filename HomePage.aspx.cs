using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class HomePage : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter da;
    DataTable dt;
    DataRow dr;
    public static int i = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
        LoadData();
        displayImageDetails();
    }
    protected void btNext_Click(object sender, EventArgs e)
    {
        if (i != (dt.Rows.Count - 1))
            i++;
        else
            i = 0;

        dr = dt.Rows[i];
        displayImageDetails();
    }
    protected void btPrev_Click(object sender, EventArgs e)
    {
        if (i == 0)
            i = dt.Rows.Count - 1;
        else
            i--;

        dr = dt.Rows[i];
        displayImageDetails();
    }

    void LoadData()
    {
        con = new SqlConnection("Data Source=D-90343146;Initial Catalog=CarBookingDB;Integrated Security=True");
        cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "select * from carImage";
        da = new SqlDataAdapter(cmd);
        dt = new DataTable();
        da.Fill(dt);

        dr = dt.Rows[i];
    }

    void displayImageDetails()
    {
        Image1.ImageUrl = "~/Images/" + dr[1];

        lblCarName.Text = dr[2].ToString();
        lblMilage.Text = dr[3].ToString();
        if (Session["user"].ToString().Equals(""))
        {
            lblPrice.Text = "Please Log in";
        }
        else
            lblPrice.Text = dr[4].ToString();
        
    }

}