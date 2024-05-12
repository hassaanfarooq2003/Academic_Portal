
/*USE THIS FOR THE DATABASE*/
using Microsoft.Data.SqlClient;
/*------------------------*/



using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    //starting to load the homepage with student details
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            //SEE THE SESSION IS NULL OR NOT
            if (Session["USERID"] != null)
            {
                int userid = (int)Session["USERID"];
                //CHECKS FOR USER ID IN THE STUDENT TABLE AND STORES THE DATA IN THE DATATABLE
                DataTable studentinfo = GETStudentinfofromdatabase(userid);

                //CALLNG FUNCTIONS TO DISPLAY INFORMATION
                getacademicinfo(studentinfo);
                getstudentbio(studentinfo);
            }
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-6CIDPD7\\SQLEXPRESS02;Initial Catalog=FLEX;Integrated Security=True;Trust Server Certificate=True");
            conn.Open();
            
            //getting the reg_num
            string query = "SELECT STUDENTS.REG_NUM FROM USERS INNER JOIN STUDENTS ON @USERID = STUDENTS.USERID";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                int userid = (int)Session["USERID"];
                cmd.Parameters.AddWithValue("@USERID", userid);
                SqlDataReader read = cmd.ExecuteReader();
                if(read.Read())
                {
                    int reg_num = read.GetInt32(0);
                    Session["REG_NUM"] = reg_num;
                }
            }
          

        }
    }
    private DataTable FetchStudentInfo(int  studentid)
    {
        DataTable studentinfo = new DataTable();
        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-6CIDPD7\\SQLEXPRESS02;Initial Catalog=FLEX;Integrated Security=True;Trust Server Certificate=True");
        conn.Open();
        string query = "SELECT * FROM STUDENTS WHERE USERID=@userid";
        SqlCommand cmd = new SqlCommand(query, conn);
        cmd.Parameters.AddWithValue("@USERID", studentid);
        using (SqlDataReader reader = cmd.ExecuteReader())
        {
            studentinfo.Load(reader);
        }
    return studentinfo;
    }
    private DataTable GETStudentinfofromdatabase(int id)
    {
        DataTable studentinfo = new DataTable();
        studentinfo = FetchStudentInfo(id);
        return studentinfo;
    }
    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
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

    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        //clear the Session 
        Session.Clear();
        Response.Redirect("~/main.aspx");
    }

    protected void Homebutton_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("homepage.aspx");
    }

   private void getacademicinfo(DataTable dt)
    {

        TableCell rollnumber = Table1.Rows[0].Cells[0];
        rollnumber.Text = "Roll number: " + dt.Rows[0]["REG_NUM"].ToString();
        TableCell programCell = Table1.Rows[1].Cells[0];
        programCell.Text = "Program: " + dt.Rows[0]["PROG_NAME"].ToString();
        //TableRow row1=new TableRow();
        //row1.Cells.Add(new TableCell() { Text = dt.Rows[0]["REG_NUM"].ToString() });
        //Table1.Rows.Add(row1);
        //TableRow row4=new TableRow();
        //row4.Cells.Add(new TableCell() { Text = dt.Rows[0]["PROG_NAME"].ToString() });
        //Table1.Rows.Add(row4);
    }
    private void getstudentbio(DataTable dt)
    {
        TableCell Name = Table2.Rows[0].Cells[0];
        Name.Text="Name: " + dt.Rows[0]["STUDENT_NAME"].ToString(); 

        TableCell address= Table2.Rows[1].Cells[0];
        address.Text = "Address: "  +dt.Rows[0]["HOUSE_NO"].ToString() +","+ dt.Rows[0]["STREET_NO"].ToString() + "," + dt.Rows[0]["LOC_AREA"].ToString();

        TableCell cnic= Table2.Rows[2].Cells[0];
        cnic.Text = "CNIC: " + dt.Rows[0]["CNIC"].ToString();

        TableCell blood_group= Table2.Rows[3].Cells[0];
        blood_group.Text = "BLOOD GROUP: " + dt.Rows[0]["BLOOD_GROUP"].ToString();

        TableCell phoneno = Table2.Rows[4].Cells[0];
        phoneno.Text = "Phone-No :" + dt.Rows[0]["PHONE_NUM"].ToString();
    }

}