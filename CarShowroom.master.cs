using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CarShowroom : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"].ToString().Equals(""))
        {
            this.hypLogin.Text = "Log in";
        }
        else
        {
            this.hypLogin.Text = "Log out";
            this.lblUser.Text = "Welcome " + Session["user"].ToString();
        }
    }

    protected void hypLogin_Click(object sender, EventArgs e)
    {
        if (hypLogin.Text.ToString().Equals("Log in"))
            hypLogin.PostBackUrl = "~/LogIn.aspx";
        else
        {
            Session["user"] = "";
            this.hypLogin.Text = "Log in";
            Response.Redirect("~/HomePage.aspx");
        }
    }
}
