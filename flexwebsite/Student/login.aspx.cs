using Microsoft.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

public partial class studentlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void customLoginBtn_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-6CIDPD7\\SQLEXPRESS02;Initial Catalog=FLEX;Integrated Security=True;Trust Server Certificate=True");
        conn.Open();
        /*LOGIN CHECKING*/

        /*Input from the user*/
        string username = input_username.Value;
        string password = input_password.Value;
        bool isAgreed = terms_checkbox.Checked;
        string query = "SELECT USERID FROM USERS WHERE USERNAME = @username AND USER_PASSWORD = @password";
        /*CHECK BOX*/
        if (isAgreed)
        {
            //RUN THE SQL COMMAND
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@username", username);
                cmd.Parameters.AddWithValue("@password", password);

                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                  
                   if (reader.Read())
                    {
                        //GET THE USERID AFTER MATCHING 
                        int userid=reader.GetInt32(0);
                        //STORE IN THE SESSION
                        Session["USERID"] = userid;
                        //SEND THE USERID TO THE HOMEPAGE
                        Response.Redirect("homepage.aspx");
                    }
                   else
                    {
                        //RETURN TO STARTING PAGE:- MAIN
                        Response.Redirect("~/main.aspx");
                    }
                }
            }
        }
        
    }

}