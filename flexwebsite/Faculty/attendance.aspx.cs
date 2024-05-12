using Microsoft.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Faculty_attendance : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
        }

    }

    protected void buttonPresent_Click(object sender, EventArgs e)
    {
        Button button=(Button)sender;
        string[] data = button.CommandArgument.Split(',');
        int sectionid = int.Parse(data[0]);
        string courseCode = data[1];
        int reg_num = int.Parse(data[2]);

        string path = "Data Source=DESKTOP-6CIDPD7\\SQLEXPRESS02;Initial Catalog=FLEX;Integrated Security=True;Trust Server Certificate=True";
        using (SqlConnection conn=new SqlConnection(path))
        {
           
            string query = "INSERT INTO ATTENDANCE (SECTION_ID, COURSE_CODE, STUDENT_ID, DATE_TIME, A_STATUS) VALUES (@SECTION, @COURSE, @STUDENT, @DATE, @STATUS)";
            conn.Open();
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {

                cmd.Parameters.AddWithValue("@SECTION", sectionid);
                cmd.Parameters.AddWithValue("@COURSE", courseCode);
                cmd.Parameters.AddWithValue("@STUDENT", reg_num);
                cmd.Parameters.AddWithValue("@DATE",DateTime.Now);
                cmd.Parameters.AddWithValue("@STATUS", "P");
                cmd.ExecuteNonQuery();
            }

        }
    }

    protected void buttonAbsent_Click(object sender, EventArgs e)
    {
        Button button = (Button)sender;
        string[] data = button.CommandArgument.Split(',');
        int sectionid = int.Parse(data[0]);
        string courseCode = data[1];
        int reg_num = int.Parse(data[2]);

        string path = "Data Source=DESKTOP-6CIDPD7\\SQLEXPRESS02;Initial Catalog=FLEX;Integrated Security=True;Trust Server Certificate=True";
        using (SqlConnection conn = new SqlConnection(path))
        {

            string query = "INSERT INTO ATTENDANCE (SECTION_ID, COURSE_CODE, STUDENT_ID, DATE_TIME, A_STATUS) VALUES (@SECTION, @COURSE, @STUDENT, @DATE, @STATUS)";
            conn.Open();
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {

                cmd.Parameters.AddWithValue("@SECTION", sectionid);
                cmd.Parameters.AddWithValue("@COURSE", courseCode);
                cmd.Parameters.AddWithValue("@STUDENT", reg_num);
                cmd.Parameters.AddWithValue("@DATE", DateTime.Now);
                cmd.Parameters.AddWithValue("@STATUS", "A");
                cmd.ExecuteNonQuery();
            }

        }
    }


    protected void Homebutton_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("home.aspx");
    }

    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("courses.aspx");
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("attendance.aspx");

    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("evaulation.aspx");

    }

    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("feedback.aspx");
    }

    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/main.aspx");
    }





    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}