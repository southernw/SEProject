using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SEProject
{
   
    public partial class WebForm2 : System.Web.UI.Page
    {
        static int logincounter = 0;
        static String ConnString = ("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\south\\source\\repos\\SEProject\\SEProject\\SEProject\\App_Data\\User.mdf;Integrated Security=True");
        bool connected = false;
       
    protected void verifyLogin(String username, String password)
        {

            SqlConnection connection = new SqlConnection(ConnString);
            connection.Open();

            SqlCommand cmd = new SqlCommand("SELECT username, password FROM [User] WHERE username=@username AND password=@password", connection);
            cmd.Parameters.AddWithValue("@username", txtUsername.Text);
            cmd.Parameters.AddWithValue("@password", txtPassword.Text);

            SqlDataReader dataReader = cmd.ExecuteReader();
                if (dataReader.HasRows)
            {
                Response.Redirect("http://google.com");
            }
            else
            {
                Label1.Visible = true;
            }
           
            

            

            
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            //SqlDataSource1.Select(DataSourceSelectArguments.);

           
            Label1.Visible = false;

            //if login is correct
            //then log in
            //else do this:
            Label1.Visible = true;
            logincounter++;
            if (logincounter > 4)
            {
                //do something
                Label1.Text = "F";
            }
            else
            {
                verifyLogin(txtUsername.Text, txtPassword.Text);

          }
      
        }

      

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1");
        }
    }
}