using System;
using Microsoft.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO.Packaging;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            int regnum = (int)Session["REG_NUM"];
            string path = "Data Source=DESKTOP-6CIDPD7\\SQLEXPRESS02;Initial Catalog=FLEX;Integrated Security=True;Trust Server Certificate=True";
            using (SqlConnection conn = new SqlConnection(path))
            {
                string query = "SELECT REGISTRATION.SECTION_ID, COURSES.COURSE_CODE, COURSES.COURSE_NAME FROM REGISTRATION JOIN SECTIONS ON REGISTRATION.SECTION_ID = SECTIONS.SECTION_ID JOIN COURSES ON SECTIONS.OFFERED_COURSE_CODE = COURSES.COURSE_CODE WHERE REG_NUM = @REG_NUM";
                SqlCommand cmd = new SqlCommand(query, conn);
                conn.Open();
                cmd.Parameters.AddWithValue("@REG_NUM", regnum);
                SqlDataReader reader = cmd.ExecuteReader();
    
            }
        }

    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        string comment = TextBox1.Text;
        string path = "Data Source=DESKTOP-6CIDPD7\\SQLEXPRESS02;Initial Catalog=FLEX;Integrated Security=True;Trust Server Certificate=True";
        using (SqlConnection conn = new SqlConnection(path))
        {

            string query = "INSERT INTO FEEDBACK VALUES (@FACT_ID,@REG_NUM,@COURSE_CODE,@COMM)";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            cmd.Parameters.AddWithValue("@FACT_ID", Session["FACT_ID"]);
            cmd.Parameters.AddWithValue("@REG_NUM", Session["REG_NUM"]);
            cmd.Parameters.AddWithValue("@COURSE_CODE", Session["COURSE_ID"]);
            cmd.Parameters.AddWithValue("@COMM", comment);
            int numRowsEffected = cmd.ExecuteNonQuery();
            if (numRowsEffected == 1)
            {
                Response.Write("<script>alert('Course Added Successfully');</script>");
            }
            else
            {
                Response.Write("<script>alert('Course Not Added');</script>");
            }
            //removing the variables
            Session.Remove("COURSE_ID");
            Session.Remove("FACT_ID");

        }

    }

    protected void GridViewStudentBiodata_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void GridViewCurrentStatus_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void GridViewAttendance_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void GridViewCgpa_SelectedIndexChanged(object sender, EventArgs e)
    {

    }



   

    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("coursereg.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("marks.aspx");

    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("feedback.aspx");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("attendance.aspx");
    }

    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("transcript.aspx");
    }

    protected void LinkButton6_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/main.aspx");
    }


    protected void Homebutton_Click1(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("homepage.aspx");
    }

    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {

    }

    protected void Unnamed6_CheckedChanged(object sender, EventArgs e)
    {

    }

    protected void RadioButton1_CheckedChanged1(object sender, EventArgs e)
    {

    }

    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void buttonSelect_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        string[] args = btn.CommandArgument.ToString().Split(',');
        string courseid = args[0];
        string facultyid = args[1];
        Session["COURSE_ID"]=courseid;
        Session["FACT_ID"]=facultyid;
    }
}