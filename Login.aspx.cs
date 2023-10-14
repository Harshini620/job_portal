using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\db.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
  
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        try
        {
            string Username = txtName.Text;
            string Password = txtpw.Text;

            con.Open();
            string Query = "select * from tablogin where Username='" + Username + "'";
            SqlCommand cmd = new SqlCommand(Query, con);
            SqlDataReader dr = cmd.ExecuteReader();

            dr.Read();

            if (dr.HasRows)
            {
                lblInfo.Text="Username already exists!";
            }
            else
            {
                dr.Close();

                Query = "insert into tablogin values(@Username, @Password)";
                SqlCommand cmd2 = new SqlCommand(Query, con);
                cmd2.Parameters.AddWithValue("Username", Username);
                cmd2.Parameters.AddWithValue("Password", Password);

                int i = cmd2.ExecuteNonQuery();
                if (i == 1)
                {
                    Response.Redirect("http://localhost:27640/jobportal/jobregform.aspx");   
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