using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class jobregform : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\db.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
  
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {

        try
        {
            string Firstname = txtfName.Text;
            string Lastname = txtlname.Text;
            string Position = txtposition.Text;
            string Email = txtemail.Text;
            string Phone = txtph.Text;
            string Resume = txtres.Text;
            con.Open();
            string Query = "select * from tblregform where Email='" + Email + "'";
            SqlCommand cmd = new SqlCommand(Query, con);
            SqlDataReader dr = cmd.ExecuteReader();

            dr.Read();

            if (dr.HasRows)
            {
                lblInfo.Text = "Your Email already exists!";
            }
            else
            {
                dr.Close();

                Query = "insert into tblregform values(@Firstname, @Lastname, @Position, @Email, @Phone, @Resume)";
                SqlCommand cmd2 = new SqlCommand(Query, con);
                cmd2.Parameters.AddWithValue("Firstname", Firstname);
                cmd2.Parameters.AddWithValue("Lastname", Lastname);
                cmd2.Parameters.AddWithValue("Position", Position);
                cmd2.Parameters.AddWithValue("Email", Email);
                cmd2.Parameters.AddWithValue("Phone", Phone);
                cmd2.Parameters.AddWithValue("Resume", Resume);
                int i = cmd2.ExecuteNonQuery();
                if (i == 1)
                {
                    lblInfo.Text = "Your Resume Details Added Successfully!";
                }
            }
            dr.Close();
        }
        catch (Exception ex)
        {
            lblInfo.Text = ex.Message.ToString();
        }
        finally
        {
            con.Close();
        }
    }
}