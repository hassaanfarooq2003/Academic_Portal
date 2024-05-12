using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class studentlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void customLoginBtn_Click(object sender, EventArgs e)
    {
        string username = input_username.Value;
        string password = input_password.Value;
        bool isAgreed = terms_checkbox.Checked;
        // ...Your login logic here...
    }

}