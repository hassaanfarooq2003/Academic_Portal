using Microsoft.Data.SqlClient;
using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Linq;
using System.Runtime.InteropServices;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Faculty_evaulation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void buttonSubmit_Click(object sender, EventArgs e)
    {
        Button button=(Button)sender;
        GridViewRow gridViewRow = (GridViewRow)button.NamingContainer;
        TextBox txt = (TextBox)gridViewRow.FindControl("txt");
        string[] data=button.CommandArgument.ToString().Split(',');
        int reg_num = int.Parse(data[0]);
        int section_id = int.Parse(data[1]);
        string offered_course = data[2];
        float marks = float.Parse(txt.Text);

        string path = "Data Source=DESKTOP-6CIDPD7\\SQLEXPRESS02;Initial Catalog=FLEX;Integrated Security=True;Trust Server Certificate=True";
        using (SqlConnection conn = new SqlConnection(path))
        {
            string query = "INSERT INTO MARKS (REG_NUM, COURSE_CODE, MARKS) VALUES (@REG,@COURSE,@MARKS)";
            conn.Open();
            using(SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@REG", reg_num);
                cmd.Parameters.AddWithValue("@COURSE", offered_course);
                cmd.Parameters.AddWithValue("@MARKS", marks);
                cmd.ExecuteNonQuery();
            }
            conn.Close();
        }
        

    }


    protected void buttonSubmit1_Click(object sender, EventArgs e) {

        Button button = (Button)sender;
        GridViewRow gridViewRow = (GridViewRow)button.NamingContainer;
        TextBox txt = (TextBox)gridViewRow.FindControl("weightagetxt");
        string[] data = button.CommandArgument.ToString().Split(',');

        string section_id = data[0];
        string offered_course = data[1];
        string path = "Data Source=DESKTOP-6CIDPD7\\SQLEXPRESS02;Initial Catalog=FLEX;Integrated Security=True;Trust Server Certificate=True";

        float weightage = float.Parse(txt.Text);
        using (SqlConnection conn = new SqlConnection(path))
        {
            string checkQuery = "SELECT COUNT(*) FROM EVALUATION WHERE SECTION_ID = @SECTION AND COURSE_CODE = @COURSE";
            string insertQuery = "INSERT INTO EVALUATION (SECTION_ID, COURSE_CODE, WEIGHTAGE, E_TYPE, E_STATUS) VALUES (@SECTION, @COURSE, @WEIGHTAGE, @TYPE, @STATUS)";
            conn.Open();
            using (SqlCommand cmd = new SqlCommand(checkQuery, conn))
            {
                cmd.Parameters.AddWithValue("@SECTION", section_id);
                cmd.Parameters.AddWithValue("@COURSE", offered_course);
                int existingRows = (int)cmd.ExecuteScalar();
                if (existingRows == 0)
                {
                    using (SqlCommand insertCmd = new SqlCommand(insertQuery, conn))
                    {
                        insertCmd.Parameters.AddWithValue("@SECTION", section_id);
                        insertCmd.Parameters.AddWithValue("@COURSE", offered_course);
                        insertCmd.Parameters.AddWithValue("@WEIGHTAGE", weightage);
                        insertCmd.Parameters.AddWithValue("@TYPE", "SESSIONALS");
                        insertCmd.Parameters.AddWithValue("@STATUS", "Completed");
                        insertCmd.ExecuteNonQuery();
                    }
                }
             
            }
            conn.Close();
        }


        updatemarksstudent(offered_course,section_id,path,weightage);

    }

    private void updatemarksstudent(string offered_course, string section_id, string path, float weightage)
    {
        using (SqlConnection conn = new SqlConnection(path))
        {
            conn.Open();

            string query2 = "SELECT REG_NUM, MARKS FROM MARKS WHERE COURSE_CODE = @COURSE AND REG_NUM IN (SELECT REG_NUM FROM REGISTRATION WHERE SECTION_ID = @SECTION)";
            using (SqlCommand getMarksCmd = new SqlCommand(query2, conn))
            {
                getMarksCmd.Parameters.AddWithValue("@COURSE", offered_course);
                getMarksCmd.Parameters.AddWithValue("@SECTION", section_id);

                using (SqlDataReader reader = getMarksCmd.ExecuteReader())
                {
                    List<int> regNumList = new List<int>();
                    List<float> weightedMarksList = new List<float>();

                    while (reader.Read())
                    {
                        int reg_num = reader.GetInt32(0);
                        double marksDouble = reader.GetDouble(1);
                        float marks = (float)marksDouble;

                        float weightedMarks = (marks * weightage) / 100;

                        regNumList.Add(reg_num);
                        weightedMarksList.Add(weightedMarks);
                    }

                    reader.Close();

                    string updateQuery = "UPDATE MARKS SET MARKS = @MARKS WHERE COURSE_CODE = @COURSE AND REG_NUM = @REG_NUM";
                    using (SqlCommand updateCmd = new SqlCommand(updateQuery, conn))
                    {
                        SqlParameter marksParam = updateCmd.Parameters.AddWithValue("@MARKS", 0);
                        SqlParameter courseParam = updateCmd.Parameters.AddWithValue("@COURSE", string.Empty);
                        SqlParameter regNumParam = updateCmd.Parameters.AddWithValue("@REG_NUM", 0);

                        marksParam.DbType = DbType.Single;
                        courseParam.DbType = DbType.String;
                        regNumParam.DbType = DbType.Int32;

                        for (int i = 0; i < regNumList.Count; i++)
                        {
                            marksParam.Value = weightedMarksList[i];
                            courseParam.Value = offered_course;
                            regNumParam.Value = regNumList[i];

                            updateCmd.ExecuteNonQuery();
                        }
                    }
                }
            }

            conn.Close();
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
}