using System;
using Microsoft.Data.SqlClient;

using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO.Packaging;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.ListView;

public partial class Academic_courses : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    //Need to check this
    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
   

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

    protected void Text1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Text2_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Text4_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Text5_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string path = "Data Source=DESKTOP-6CIDPD7\\SQLEXPRESS02;Initial Catalog=FLEX;Integrated Security=True;Trust Server Certificate=True";

        using (SqlConnection conn = new SqlConnection(path))
        {
            conn.Open();
            string query = "INSERT INTO COURSES (COURSE_CODE, COURSE_NAME, CRED_HRS, PRE_REQ_ID) VALUES (@code, @name, @hours, @prerequisite)";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.Add("@code", SqlDbType.VarChar, 10).Value = Text1.Text.Substring(0, Math.Min(Text1.Text.Length, 10)); // limit to 10 characters
                cmd.Parameters.AddWithValue("@name", Text2.Text);
                cmd.Parameters.AddWithValue("@hours", Text4.Text);
                if (string.IsNullOrEmpty(Text5.Text))
                {
                    cmd.Parameters.AddWithValue("@prerequisite", DBNull.Value);
                }
                else
                {
                    cmd.Parameters.AddWithValue("@prerequisite", Text5.Text);
                }
                int numRowsEffected = cmd.ExecuteNonQuery();
                if (numRowsEffected == 1)
                {
                    Response.Write("<script>alert('Course Added Successfully');</script>");
                }
                else
                {
                    Response.Write("<script>alert('Course Not Added');</script>");
                }
            }
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
}