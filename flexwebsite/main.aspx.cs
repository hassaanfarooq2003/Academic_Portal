using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void customLoginBtn1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Academic/login.aspx");
    }
    protected void customLoginBtn2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Faculty/login.aspx");
    }
    protected void customLoginBtn3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Student/login.aspx");
    }
}