using Microsoft.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.IO.Packaging;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Academic_studentmanag : System.Web.UI.Page
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

    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }



    protected void Button1_Click1(object sender, EventArgs e)
    {
        string first_name=TextBox1.Text;
        string last_name=TextBox2.Text;
        string cnic=TextBox3.Text;
        string blood_group=TextBox4.Text;
        string house_no=TextBox5.Text;  
        string street_no=TextBox6.Text;
        string city=TextBox7.Text;
        string user_id=TextBox8.Text;
       string password=TextBox9.Text;
        string reg_num=TextBox10.Text;
        string prog_name=TextBox11.Text;
        string phone_num=TextBox12.Text;
        string user_name=TextBox13.Text;
        //path
        string path = "Data Source=DESKTOP-6CIDPD7\\SQLEXPRESS02;Initial Catalog=FLEX;Integrated Security=True;Trust Server Certificate=True";
        using (SqlConnection connection = new SqlConnection(path))
        {
            connection.Open();
            string query1 = "INSERT INTO USERS (USERID, USERNAME, USER_PASSWORD) VALUES(@userid, @username, @password)";
            using (SqlCommand command1 = new SqlCommand(query1, connection))
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

            string query2 = "INSERT INTO STUDENTS (USERID, REG_NUM, CNIC, PHONE_NUM, F_NAME, L_NAME, BLOOD_GROUP, HOUSE_NO, STREET_NO, LOC_AREA, PROG_NAME) VALUES(@userid,@reg_num,@cnic,@phone,@fname,@lname,@blood,@house,@street,@loc_area,@prog)";
            using (SqlCommand command2 = new SqlCommand(query2, connection))
            {
                command2.Parameters.AddWithValue("@userid", user_id);
                command2.Parameters.AddWithValue("@reg_num", reg_num);
                command2.Parameters.AddWithValue("@cnic", cnic);
                command2.Parameters.AddWithValue("@phone", phone_num);
                command2.Parameters.AddWithValue("@fname", first_name);
                command2.Parameters.AddWithValue("@lname", last_name);
                command2.Parameters.AddWithValue("@blood", blood_group);
                command2.Parameters.AddWithValue("@house", house_no);
                command2.Parameters.AddWithValue("@street", street_no);
                command2.Parameters.AddWithValue("@loc_area", city);
                command2.Parameters.AddWithValue("@prog", prog_name);
                int numRowsEffected = command2.ExecuteNonQuery();
                if (numRowsEffected == 1)
                {
                    Response.Write("<script>alert('Student Added Successfully');</script>");
                }
                else
                {
                    Response.Write("<script>alert('Student Not Added');</script>");
                }
            }
        }
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox6_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox7_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox8_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox9_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox10_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox13_TextChanged(object sender, EventArgs e)
    {

    }
}