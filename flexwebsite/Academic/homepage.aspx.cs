using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Academic_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //SEE THE SESSION IS NULL OR NOT
            if (Session["USERID"] != null)
            {
                int userid = (int)Session["USERID"];
                //CHECKS FOR USER ID IN THE STUDENT TABLE AND STORES THE DATA IN THE DATATABLE
                DataTable Academicinfo = getacademicinfo(userid);
                //display it
                getdata(Academicinfo);
             
    
            }
        }
    }
    private DataTable getacademicinfo(int facultyid)
    {
       DataTable academicinfo = new DataTable();
        SqlConnection connection = new SqlConnection("Data Source=DESKTOP-6CIDPD7\\SQLEXPRESS02;Initial Catalog=FLEX;Integrated Security=True"); ;
        connection.Open();
        string query = "SELECT * FROM ACADEMICS WHERE USERID=@userid";
        SqlCommand cmd= new SqlCommand(query, connection);
        cmd.Parameters.AddWithValue("@USERID", facultyid);
        using (SqlDataReader reader=cmd.ExecuteReader())
        {
            academicinfo.Load(reader);
        }
        return academicinfo;
    }

    private void getdata(DataTable dt)
    {
        TableCell rollnumber = Table1.Rows[0].Cells[0];
        rollnumber.Text = "ID : " + dt.Rows[0]["USERID"].ToString();
        TableCell programCell = Table1.Rows[1].Cells[0];
        programCell.Text = "Name : " + dt.Rows[0]["ACAD_NAME"].ToString();
        TableCell location = Table1.Rows[2].Cells[0];
        location.Text = "Location: " + dt.Rows[0]["ACAD_LOC"].ToString();
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
}