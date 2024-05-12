using Microsoft.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Faculty_home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["USERID"] != null)
            {
                int userid = (int)Session["USERID"];
                //CHECKS FOR USER ID IN THE STUDENT TABLE AND STORES THE DATA IN THE DATATABLE

                DataTable facultyinfo =getfacultyinfodatabase(userid);

                //CALLNG FUNCTIONS TO DISPLAY INFORMATION
                displayfacultyinfo(facultyinfo);
            }
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-6CIDPD7\\SQLEXPRESS02;Initial Catalog=FLEX;Integrated Security=True;Trust Server Certificate=True");
            conn.Open();

            //getting the fACULTY ID 
            string query = "SELECT FACULTY.FACULTY_ID FROM USERS INNER JOIN FACULTY ON @USERID = FACULTY.USERID";
           
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                int userid = (int)Session["USERID"];
                cmd.Parameters.AddWithValue("@USERID", userid);
                SqlDataReader read = cmd.ExecuteReader();
                if (read.Read())
                {
                    int reg_num = read.GetInt32(0);
                    Session["FACULTY_ID"] = reg_num;
                }
            }
        }

    }
    private void displayfacultyinfo(DataTable facultyinfo)
    {
        TableCell id = Table1.Rows[0].Cells[0];
        id.Text = "ID: " + facultyinfo.Rows[0]["FACULTY_ID"].ToString();
        TableCell Name = Table1.Rows[0].Cells[0];
        Name.Text = "Name: " + facultyinfo.Rows[0]["FACULTY_NAME"].ToString();

    }
    private DataTable fetchfacultyinfo(int userid)
    {
        DataTable facultyinfo = new DataTable();
        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-6CIDPD7\\SQLEXPRESS02;Initial Catalog=FLEX;Integrated Security=True;Trust Server Certificate=True");
        conn.Open();
        string query = "SELECT * FROM FACULTY WHERE USERID=@user";
        SqlCommand cmd = new SqlCommand(query, conn);
        cmd.Parameters.AddWithValue("@user", userid);
        using (SqlDataReader reader = cmd.ExecuteReader())
        {
            facultyinfo.Load(reader);
        }
        return facultyinfo;

    }
    protected DataTable getfacultyinfodatabase(int userid)
    {
        DataTable facultyinfodatabase = new DataTable();
        facultyinfodatabase = fetchfacultyinfo(userid);
        return facultyinfodatabase;
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