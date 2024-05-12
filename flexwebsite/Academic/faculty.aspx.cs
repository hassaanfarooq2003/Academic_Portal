using System;
using Microsoft.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Academic_faculty : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("courses.aspx");
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("sections.aspx");
    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("faculty.aspx");

    }

    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("studentregistration.aspx");
    }

    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/main.aspx");
    }

    protected void Homebutton_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Academic/homepage.aspx");
    }
    protected void customLoginBtn_Click(object sender, EventArgs e)
    {

    }

    protected void Text1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Text2_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Text4_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string path = "Data Source=DESKTOP-6CIDPD7\\SQLEXPRESS02;Initial Catalog=FLEX;Integrated Security=True;Trust Server Certificate=True";
        using (SqlConnection conn=new SqlConnection(path))
        {
           
            string Faculty_id = Text1.Text;
            string First_name= Text2.Text;
            string last_name = Text4.Text;
            string course_id= Text5.Text;
            string user_name= Text6.Text;
            string password = Text7.Text;
            string user_id=Text8.Text;
            conn.Open();

            string query1 = "INSERT INTO USERS (USERID, USERNAME, USER_PASSWORD) VALUES(@userid, @username, @password)";
            using (SqlCommand command1 = new SqlCommand(query1, conn))
            {
                command1.Parameters.AddWithValue("@userid", user_id);
                command1.Parameters.AddWithValue("@username", user_name);
                command1.Parameters.AddWithValue("@password", password);
                int numRowsEffected = command1.ExecuteNonQuery();
                if (numRowsEffected != 1)
                {
                    Response.Write("<script>alert('User Not Added');</script>");
                    return;
                }
            }

            string query2 = "INSERT INTO FACULTY (USERID,FACULTY_ID,F_NAME,L_NAME) VALUES (@userid,@facultyid,@f_name,@l_name)";
            using(SqlCommand command2 = new SqlCommand( query2, conn))
            {
                command2.Parameters.AddWithValue("@userid", user_id);
                command2.Parameters.AddWithValue("@facultyid", Faculty_id);
                command2.Parameters.AddWithValue("@f_name", First_name);
                command2.Parameters.AddWithValue("@l_name", last_name);
                int numRowsEffected = command2.ExecuteNonQuery();
                if (numRowsEffected != 1)
                {
                    Response.Write("<script>alert('Faculty Not Added');</script>");
                    return;
                }
                else
                {
                    Response.Write("<script>alert('Faculty Added');</script>");
                }
            }
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }

    protected void Text5_TextChanged(object sender, EventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
}