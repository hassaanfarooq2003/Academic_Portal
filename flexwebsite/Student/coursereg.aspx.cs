using Microsoft.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using static System.Collections.Specialized.BitVector32;

public partial class Student_coursereg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //calling the function
            //for the grid wala to show the and select the data
            BindGrid();
        }

    }
    private void BindGrid()
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
        SqlConnection connection = new SqlConnection(path);
        connection.Open();
        //buttton

        System.Web.UI.WebControls.Button button = (System.Web.UI.WebControls.Button)sender;
        string[] commandArgs = button.CommandArgument.ToString().Split(new char[] { ',' });
        int section_id = Convert.ToInt32(commandArgs[0]);
        string offeredCourseCode = commandArgs[1];
        ///
        int regNum = Convert.ToInt32(Session["REG_NUM"].ToString());
        string query = "SELECT PRE_REQ_ID FROM COURSES WHERE COURSE_CODE = @CourseCode";
        SqlCommand command = new SqlCommand(query, connection);
        command.Parameters.AddWithValue("@CourseCode", offeredCourseCode);
        SqlDataReader reader = command.ExecuteReader();
        List<string> preReqIds = new List<string>();
        while (reader.Read())
        {
            preReqIds.Add(reader.GetString(0));
        }
        reader.Close();

        bool pass = true;

        if (preReqIds.Count > 0)
        {
            // Check if the student has cleared all the prerequisite courses
            foreach (string preReqId in preReqIds)
            {
                query = "SELECT MARKS FROM MARKS WHERE COURSE_CODE = @PreReqId AND REG_NUM = @RegNum";
                command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@PreReqId", preReqId);
                command.Parameters.AddWithValue("@RegNum", regNum);
                object result = command.ExecuteScalar();
                float marks = (result == DBNull.Value) ? 0 : Convert.ToSingle(result);

                if (marks <= 50)
                {
                    MessageBox.Show($"You have not cleared the prerequisite course {preReqId} with marks greater than 50.");
                    pass = false;
                    break;
                }
            }

            if (pass == true)
            {
                using (SqlConnection conn = new SqlConnection(path))
                {
                    conn.Open();
                    string query1 = "INSERT INTO REGISTRATION (SECTION_ID, REG_NUM, REG_YEAR) VALUES (@sectionid, @regnum, @regyear)";
                    using (SqlCommand cmd = new SqlCommand(query1, conn))
                    {
                        cmd.Parameters.AddWithValue("@sectionid", section_id);
                        cmd.Parameters.AddWithValue("@regnum", regNum);
                        cmd.Parameters.AddWithValue("@regyear", 2012);
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
            else
            {
                return;
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